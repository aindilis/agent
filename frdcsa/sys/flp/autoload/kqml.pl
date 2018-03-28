%% kqmlPerformativeTell(AgentA,AgentB,Phi) :-
%% 	%% A states to B that A believes the content to be true
%% 	(   (	S = believes(AgentB,Phi))   ;  (S = not(believes(AgentB,Phi)))),
%% 	(   wsmHolds(believes(AgentA,Phi)),
%% 	    wsmHolds(knows(AgentB,desires(AgentB,knows(AgentB,Statement))))),
%% 	(   wsmHolds(intends(AgentB,know(AgentB,Statement)))),

%% 	(   wsmHolds(knows(AgentA,knows(AgentB,believes(AgentA,Phi))))),
%% 	(   wsmHolds(knows(AgentB,believes(AgentA,Phi)))),

%% 	(   knows(AgentB,believes(AgentA,Phi))).

