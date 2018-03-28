% -----------------------------------------------------------------------------
% File: agent.pl
%
% Description: Generic program to connect Prolog to JADE and enable it to send
%    and receive messages.
%
% Authors: Jordi Sabater        (sabater@iiia.csic.es)
%          Douglas Bell         (dnb@csd.abdn.ac.uk)
%          Wamberto Vasconcelos (wvasconc@csd.abdn.ac.uk)
% -----------------------------------------------------------------------------
% modules imported from the CIAO library
% -----------------------------------------------------------------------------
:- use_module(library(system)).
:- use_module(library(sockets)).
:- use_module(library(iso_byte_char)).
:- use_module(library(read)).
:- use_module(library(write)).
:- use_module(library(dynamic)).
% Load module with parser/translator
:- ensure_loaded(prologXML).
% -----------------------------------------------------------------------------
% predicates allowed to be included and removed from the program at run-time by
% any of the threads within one Prolog session
% -----------------------------------------------------------------------------
:- dynamic my_stream/1.
% -----------------------------------------------------------------------------
% connect_to_jade(Port/+,AgId/+,StarterAgId/+):-
%    Using Port, this Prolog agent named AgId will use StarterAgId (this name
%    and Port should have been used when starting up StarterAgent in JADE) to
%    finally connect to its own proxy agent (named AgId) in JADE.

connect_to_jade(Port,ThisAg,StarterAg):-
	current_host(Host),                        % get name of this machine
	connect_to_socket(Host,Port,Stream),       % connect to Port
	write(Stream,                              % write this on Stream
              request(ThisAg,[StarterAg],register(ThisAg))),
	put_byte(Stream,0xA),                      % then CR-LF (enter)
	read(Stream,                               % receive this back
             inform(StarterAg,[ThisAg],registered(ThisAg,NewPort))),
	close(Stream),                             % close socket to Port
	connect_to_newport(NewPort).               % connects to proxy
% -----------------------------------------------------------------------------
% disconnect_from_jade:-
%    Closes stream from this Prolog session to the proxy agent in JADE

disconnect_from_jade:-
	current_fact(my_stream(Stream)),           % gets name of Stream
	close(Stream).                             % close it...
% -----------------------------------------------------------------------------
% connect_to_newport(Port/+):-
%    Opens a socket to Port and records a fact with the Stream in it

connect_to_newport(Port):-
	current_host(Host),                        % get name of this machine
	connect_to_socket(Host,Port,Stream),       % connect to Port
	asserta_fact(my_stream(Stream)),           % records fact
	rec(_).                                    % gets an initial message 
% -----------------------------------------------------------------------------
% send(Msg/+):-
%    sends Msg, a Prolog term representing a FIPA message, via its proxy in
%    JADE.
%    Msg *must* be of the form
%        <performative-name>(MyId,ListOfIdsOfRecipients,Contents)
%    where
%      . <performative-name> is a FIPA-ACL performative
%      . MyId is this agent's id (it must coincide with its proxy's).
%      . ListOfIdsOfRecipients is a list of ids of agents in Jade to whom a
%        a copy of the message will be send
%      . Contents is the actual contents of the message

send(Msg):-
	current_fact(my_stream(Stream)),   % gets hold of Stream
	write(Stream,Msg),                 % write Msg on Stream
	put_byte(Stream,0xA).              % write a CR-LF (enter)
% -----------------------------------------------------------------------------
% rec(Msg/?):-
%    receives Msg from the proxy agent. Msg must conform to the syntax laid out
%    above for sending messages.
% NB Messages within JADE conform to the the FIPA-ACL syntax. The proxy agent
%    translates messages in this syntax onto the Prolog term shown above.

rec(Msg):-
	current_fact(my_stream(Stream)),
	read(Stream,Msg).
% -----------------------------------------------------------------------------
% E O F -- E O F -- E O F -- E O F -- E O F -- E O F -- E O F -- E O F -- E O F
% -----------------------------------------------------------------------------
% try this test *after* you get connected to JADE as Ag:

test(Ag,XMLinProlog):-
	send(request(Ag,['OrderAgent'],nil)),
	rec(inform('OrderAgent',_,XMLContents)),
	prologXML(XMLContents,XMLinProlog).

test2(Ag):-
	test(Ag,XMLinProlog),
	write('XML in Prolog:'),
	nl,
	write(XMLinProlog),
	nl,
	prologXML(XML,XMLinProlog),
	write('XML back as XML:'),
	nl,
	write(XML).

	