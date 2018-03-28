(incorporate existing PDDL constructs, especially temporal
 planning ones.  durative-action, at start, over all, at end,
 duration)

(#$ftImplies, lots of existing modal logic knowledge.  probably
 most operators somewhere.)

(definitely make mappings to other planners)

(See which agent precepts are extant in Cyc and to what extent.
 In fact formalize them ourselves, and revert to existing if
 found.  Not as important as implementing planning algorithms.)

(we must model all limiting assumptions and strategies we make.
 for instance certain plan formalisms will have weaknesses that
 should be replace by stronger algorithms in the future.  Should
 be thus modular.)

(
my $goals =
  [
   "identify equivalent operators in ResearchCyc for these modal operators",
  ];

my $logics =
  {
   "example" => {
		 acronym => "",
		 implementations => {
				     "<name>" => {
						  source => "",
						 },
				    },
		 properties => {
				"contains" => [
					       {
						"" => "",
					       }
					      ],
				"contained-by" => [
						   {
						    "" => "",
						   }
						  ],
			       },
		 notes => [
			  ],
		 axioms => [
			    {
			     axiom => "",
			     meaning => "",
			    },
			   ],
		 constructs => {
				"<constructname>" => {
						      properties => [
								     "",
								    ],
						     },
			       },
		 operators => {
			       "<operatorname>" => {
						    operator => "",
						    meaning => "",
						    examples => [
								 {
								  statement => "",
								  meaning => "",
								 },
								],
						    assertions => [
								   "",
								  ],
						   },
			      },
		},
   "S5" => {
	    acronym => "S5",
	    implementations => {
			       },
	    properties => {
			   "contains" => [
					 ],
			   "contained-by" => [
					      {
					       "Dynamic Epistemic Logic" => "adds \"epistemic actions\" to the standard logic S5 for knowledge",
					      }
					     ],
			   "modal" => 1,
			  },

	    notes => [
		      ""
		     ],
	    axioms => [
		       {
			axiom => "<<a>> <> phi -> K_a psi",
			meaning => "knowing psi is a necessary requirement for having the ability to bring about phi",
		       },
		       {
			axiom => "<<a>> O phi -> K_a psi",
			meaning => "",
		       },
		       {
			axiom => "(not <<a>> O phi) u K_a psi",
			meaning => "a is not able to bring about phi until he knows psi",
			example => "Our agent is not able to open the safe until he knows the key",
		       },
		      ],
	    constructs => {
			   "<constructname>" => {
						 properties => [
								"",
							       ],
						},
			  },
	    operators => {
			  "possible" => {
					 operator => "<>",
					 meaning => "it is possible that",
					 examples => [
						     ],
					},
			  "necessary" => {
					  operator => "[]",
					  meaning => "",
					  examples => [
						      ],
					 },
			 }
	   },
   "Dynamic Epistemic Logic" => {
				 acronym => "DEL",
				 implementations => {
						    },
				 properties => {
						"contains" => [
							       {
								"" => "",
							       }
							      ],
						"contained-by" => [
								   {
								    "" => "",
								   }
								  ],
					       },
				 notes => [
					   "knows the identity of an action alpha (i.e. have an \"executable description\" of an action alpha) such that after alpha is performed, phi holds",
					   "knows the identity of an action alpha such that after alpha is performed, the agent will know the identity of an action alpha' such that when a' is performed, phi holds",
					   "we are in the realm of \"truthful information transfer\".  investigate the opposite.",
					  ],
				 axioms => [
					    {
					     axiom => "",
					     meaning => "",
					    },
					   ],

				 constructs => {
						"epistemic actions" => {
									properties => [
										       "do not change any objective fact in the world",
										      ],
								       },
						"epistemic state (N, s) => {}",
						"action model (N, a)" => {},
						"static epistemic state" => {
									     examples => [
											  {
											   statement => "M, omega = < W, R_1, R_2, ..., R_m, pi >, omega    a ",
											  },
											 ],
									    },
						"finite action model" => {},
					       },
				 operators => {
					       bracket => {
							   operator => "[alpha] phi",
							   meaning => "after execution of epistemic action alpha, statement phi is true",
							  },
					       learns => {
							  operator => "L_B beta",
							  meaning => "coalition B learns beta",
							  examples => [
								       {
									statement => "(learns B beta)",
								       },
								       {
									statement => "(learns B (!alpha U beta))",
									meaning => "the coalition B learns that either alpha or beta is happening, while in fact alpha takes place",
								       },
								      ],
							  assertions => [
									 "(isa learns modal-operator)",
									 "(arg1isa learns (collection-fn agents))",
									 "(arg2isa learns (collection-fn formula))",
									],
							 }
					       happens => {
							   operator => "!",
							   meaning => "in fact takes place",
							   examples => [
									{
									 statement => "(learns B (!alpha U beta))",
									 meaning => "the coalition B learns that either alpha or beta is happening, while in fact alpha takes place",
									},
									{
									 statement => "L_12(L_1 ? p   U   L_1 ? not p  U  ! T)",
									 meaning => "in fact nothing happened (this is denoted by !T)",
									},
								       ],
							  },
					       mighthavehappened => {
								     operator => "?",
								     meaning => "might have happened",
								     examples => [
										  {
										   statement => "L_12(L_1 ? p   U   L_1 ? not p  U  ! T)",
										   meaning => "First of all, in fact nothing happened (this is denoted by
!T). [Editors note: this likely means that no non-epistemic actions
happened] However, the knowledge of both agents changes: they commonly
learn that 1 might have learned p, and he might have learned not p",
										  },
										 ],
								    },
					       precondition => {
								operator => "pre",
								examples => [
									     {
									      statement => "pre(b) = p",
									      meaning => "the pre-condition p has to be fulfilled in order for the action b to take place",
									     },
									    ],
							       },
					      },
				},
   "Cohen and Levesque's Intention Logic" => {
					      acronym => "I made this up: CLIL",
					      implementations => {
								  "<name>" => {
									       source => "",
									      },
								 },
					      properties => {
							     "contains" => [
									    "KD45 belief logic",
									    "KD conative logic",
									   ],
							     "contained-by" => [
										{
										 "" => "",
										}
									       ],
							     "other" => [
									 "many-sorted, first-order, multi-modal logic with equality"
									],
							    },
					      notes => [
						       ],
					      axioms => [
							 {
							  axiom => "V x (Bel i phi(x)) -> (Bel i V x phi(x))",
							  meaning => "",
							 },
							 {
							  axiom => "<time> -> (Bel i <time>)",
							  meaning => "agents know what time it is",
							 },
							 {
							  axiom => "<> not (Goal x (Later p)))",
							  meaning => "all goals are eventually dropped",
							 },
							],
					      constructs => {
							     "<constructname>" => {
										   properties => [
												  "",
												 ],
										  },
							    },
					      operators => {
							    "believes" => {
									   operator => "Bel",
									   meaning => "believes",
									   examples => [
											{
											 statement => "(Bel i phi)",
											 meaning => "agent i believes phi",
											},
										       ],
									   assertions => [
											  "",
											 ],
									  },
							    "goal" => {
								       operator => "Goal",
								       meaning => "has a goal",
								       examples => [
										    {
										     statement => "(Goal i phi)",
										     meaning => "agent i has goal of phi",
										    },
										   ],
								       assertions => [
										      "",
										     ],
								      },
							    "happens" => {
									  operator => "Happens",
									  meaning => "",
									  properties => {
											 "temporal" => 1,
											},
									  examples => [
										       {
											statement => "(Happens alpha)",
											meaning => "action alpha will happen next",
										       },
										      ],
									  assertions => [
											 "",
											],
									 },
							    "done" => {
								       operator => "Done",
								       meaning => "",
								       properties => {
										      "temporal" => 1,
										     },
								       examples => [
										    {
										     statement => "(Done alpha)",
										     meaning => "action alpha has just happened",
										    },
										   ],
								       assertions => [
										      "",
										     ],
								      },
							    "followed by" => {
									      operator => ";",
									      meaning => "",
									      properties => {
											     "temporal" => 1,
											    },
									      examples => [
											   {
											    statement => "alpha ; alpha'",
											    meaning => "alpha followed by alpha'",
											   },
											  ],
									      assertions => [
											     "",
											    ],
									     },
							    "test action" => {
									      operator => "?",
									      meaning => "a test by the system; it is not a so-called 'knowledge-producing action' that can be used by the agent to acquire knowledge",
									      properties => {
											     "temporal" => 1,
											    },
									      examples => [
											   {
											    statement => "phi ?",
											    meaning => "a \"test action\" phi",
											   },
											  ],
									      assertions => [
											     "",
											    ],
									     },
							    "always" => {
									 operator => "[], i.e. a box",
									 meaning => "always",
									 properties => {
											"temporal" => 1,
										       },
									 examples => [
										      {
										       statement => "[]alpha := not <> not alpha",
										       meaning => "'always alpha' is defined as it is not the case that sometime not alpha holds (Editor: not quite sure how actions are thought to hold, maybe they are satisfied at certain time points)",
										      },
										     ],
									 assertions => [
											"",
										       ],
									},
							    "sometime" => {
									   operator => "<>, i.e. a diamond",
									   meaning => "",
									   properties => {
											  "temporal" => 1,
											 },
									   examples => [
											{
											 statement => "<>alpha := Ex . (Happens x;alpha)",
											 meaning => "'sometime alpha' is defined as there exists an action x such that action alpha follows action x",
											},
										       ],
									   assertions => [
											  "",
											 ],
									  },
							    "later" => {
									operator => "Later",
									meaning => "a strict sometime operator",
									properties => {
										       "temporal" => 1,
										      },
									examples => [
										     {
										      statement => "(Later p) := not p and sometime p",
										      meaning => "'later p' is defined as p is not currently true but will sometime be true.  (Editor: not sure how this prevents p from happening beforehand)",
										     },
										    ],
									assertions => [
										       "",
										      ],
								       },
							    "before" => {
									 operator => "Before",
									 meaning => "a temporal precedence operator",
									 properties => {
											"temporal" => 1,
										       },
									 examples => [
										      {
										       statement => "(Before p q)",
										       meaning => "p holds before q",
										      },
										     ],
									 assertions => [
											"",
										       ],
									},
							    "p-goal" => {
									 operator => "P-Goal",
									 meaning => "persistent goal",
									 properties => {
											"temporal" => 1,
											"derived construct" => 1,
										       },
									 examples => [
										      {
										       statement => "(P-Goal i p) := ( (Goal i (Later p)) and (Bel i not p) and (Before ((Bel i p) or (Bel i [] not p)) not(Goal i (Later p))) )",
										       meaning => "an agent has a persistent goal of p if it has a goal that p eventually comes true, and believes that p is not currently true,
and before it drops the goal one of the following conditions must hold: a) the agent believes the goal has been satisfied, b) the agent believes the goal will never be satisfied",
										      },
										     ],
									 assertions => [
											"",
										       ],
									},
							    "intends" => {
									  operator => "Intend",
									  meaning => "",
									  properties => {
											 "temporal" => 1,
											 "derived construct" => 1,
											},
									  examples => [
										       {
											statement => "(Intend i alpha) := (P-Goal i [Done i (Bel i (Happens alpha)) ? ; alpha])",
											meaning => "an agent i intends to perform an action alpha if it has a persistent goal to have brought about a state
where it had just believed it was about to perform alpha, and then did alpha",
										       },
										      ],
									  assertions => [
											 "",
											],
									 },
							   },
					     },
   "Rao and Georgeff's BDI Logics" => {
				       acronym => "BDI",
				       "acronym expansion" => "Belief-Desire-Intention",
				       implementations => {
							   "IRMA" => {
								      "acronym expansion" => "Intelligent Resource-bounded Machine Architecture",
								      source => "",
								     },
							   "PRS" => {
								     "acronym expansion" => "Procedural Reasoning System",
								     source => "",
								    },
							  },
				       properties => {
						      "contains" => [
								     {
								      "branching time logics (CTL or CTL*)" => "but BDI logics are enhanced with additional modal operators Bel Des Intend",
								     }
								    ],
						      "contained-by" => [
									 {
									  "" => "",
									 }
									],
						     },
				       notes => [
						],
				       axioms => [
						  {
						   axiom => "",
						   meaning => "",
						  },
						 ],
				       constructs => {
						      "facts" => {
								  properties => [
										 "prolog-like",
										],
								 },
						      "plan library" => {
									 properties => [
										       ],
									},
						      "plan" => {
								 properties => [
										"body",
										"invocation condition",
									       ],
								},
						      "time points" => {
									properties => [
										      ],
								       },
						      "time points" => {
									properties => [
										      ],
								       },
						      "world" => {
								  properties => [
										 "a Kripke structure for a CTL-like logic",
										],
								 },
						     },
				       operators => {
						     "believe" => {
								   operator => "Bel",
								   meaning => "believes",
								   examples => [
										{
										 statement => "(Bel i phi)",
										 meaning => "agent i believes phi",
										},
									       ],
								   assertions => [
										  "",
										 ],
								  },
						     "desire" => {
								  operator => "Des",
								  meaning => "desires",
								  examples => [
									       {
										statement => "(Bel i (Intend j A <> p)) -> (Bel i (Des j A <> p))",
										meaning => "if i believes that j intends that p is inevitably true eventually, then i believes that j desires p is inevitable",
									       },
									      ],
								  assertions => [
										 "",
										],
								 },
						     "intend" => {
								  operator => "Intend",
								  meaning => "intends",
								  examples => [
									       {
										statement => "(Bel i (Intend j A <> p)) -> (Bel i (Des j A <> p))",
										meaning => "if i believes that j intends that p is inevitably true eventually, then i believes that j desires p is inevitable",
									       },
									      ],
								  assertions => [
										 "",
										],
								 },
						    },
				      },
   "KARO Framework" => {
			acronym => "KARO",
			"acronym expansion" => "Knowledge, Actions, Results and Opportunities",
			implementations => {
					   },
			properties => {
				       "contains" => [
						      {
						       "dynamic logic" => "",
						       "epistemic logic" => "",
						      }
						     ],
				       "contained-by" => [
							  {
							   "" => "",
							  }
							 ],
				       "other" => [
						   "sound and complete axiomitization",
						   "results on automatic verification are known",
						   "can be translated into first order logic",
						  ],
				      },
			notes => [
				  "mentions notions of ability and opportunity, free-will and determinism, refraining and seeing-to-it, deontic",
				 ],
			axioms => [
				   {
				    axiom => "A_i confirms phi <-> phi",
				    meaning => "",
				   },
				   {
				    axiom => "A_i alpha_1 ; alpha_2 <-> A_i alpha_1 and [do_i(alpha_1)] A_i alpha_2 or A_i alpha_1 ; alpha_2 <-> A_i alpha_1 and <do_i(alpha_1)> A_i alpha_2",
				    meaning => "",
				   },
				   {
				    axiom => "A_i if phi the alpha_1 else alpha_2 fi <-> ((phi and A_i alpha_1) or (not phi and A_i alpha_2))",
				    meaning => "",
				   },
				   {
				    axiom => "A_i while phi do alpha od <-> (not phi or (phi and A_i alpha and [do_i(alpha)] A_i while phi do alpha od )) or A_i while phi do alpha od <-> (not phi or (phi and A_i alpha and <do_i(alpha)> A_i while phi do alpha od ))",
				    meaning => "",
				   },
				   {
				    axiom => "Can_i (confirm phi, psi) <-> K_i(phi and psi)",
				    meaning => "",
				   },
				   {
				    axiom => "Cannot_i (confirm phi, psi) <-> K_i(not phi or not psi)",
				    meaning => "",
				   },
				   {
				    axiom => "Can_i (alpha_1 ; alpha_2, phi) <-> Can_i(alpha_1, PracPoss_i(alpha_2, phi))",
				    meaning => "",
				   },
				   {
				    axiom => "Can_i (alpha_1 ; alpha_2, phi) -> <do_i(alpha_1)> Can_i (alpha_2, phi) if i has perfect recall regarding alpha_1",
				    meaning => "",
				   },
				   {
				    axiom => "Can_i (if phi the alpha_1 else alpha_2 fi, psi) and K_i phi <-> Can_i (alpha_1, psi) and K_i phi",
				    meaning => "",
				   },
				  ],
			constructs => {
				       "ability" => {
						     properties => [
								    "the complex of physical, mental and moral capacities, internal to an agent, and being a positive explanatory factor in accounting for the agent's performing an action",
								    "reliable, i.e. having the ability to perform a certain action suffices to take the opportunity to perform the action every time it presents itself",
								   ],
						    },
				       "opportunity" => {
							 properties => [
									"circumstantial possibility, possibility by virtue of the circumstances",
									"the opportunity to perform some action is external to the agent and is often no more than the absence of circumstances that would prevent or interfere with the performance",
								       ],
							},
				       "actions" => {
						     properties => [
								    "either atomic {a, b, ...} or composed {alpha, beta, ...} by means of a confirmation of formulas (confirm phi), sequencing (alpha; beta),
conditioning (if phi then alpha else beta) and repetition (while phi do alpha)",
								   ],
						    },
				       "perfect recall" => {
							    properties => [
									   "is itself a property",
									   "K_i[do_i(alpha)]phi -> [do_i(alpha)] K_i phi",
									  ],
							   },
				       "particular actions" => {
								properties => [
									      ],
							       },
				      },
			operators => {
				      "know" => {
						 operator => "K_i",
						 meaning => "Knows",
						 examples => [
							      {
							       statement => "",
							       meaning => "",
							      },
							     ],
						 assertions => [
								"",
							       ],
						},
				      "result" => {
						   operator => "[do_i(alpha)]phi",
						   meaning => "result of the execution of alpha by agent i",
						   examples => [
								{
								 statement => "",
								 meaning => "",
								},
							       ],
						   assertions => [
								  "",
								 ],
						  },
				      "opportunity" => {
							operator => "<do_i(alpha)>phi",
							meaning => "one possible result of performance of performance of alpha by i implies phi",
							examples => [
								     {
								      statement => "<do_i(alpha)>phi := not [do_i(alpha)] not phi",
								      meaning => "",
								     },
								    ],
							assertions => [
								       "",
								      ],
						       },
				      "capability" => {
						       operator => "A_i alpha",
						       meaning => "",
						       examples => [
								    {
								     statement => "",
								     meaning => "",
								    },
								   ],
						       assertions => [
								      "",
								     ],
						      },
				      "correct" => {
						    operator => "correct",
						    meaning => "",
						    examples => [
								 {
								  statement => "",
								  meaning => "action alpha is 'correct' with respect to phi iff <do_i(alpha)>phi holds",
								 },
								],
						    assertions => [
								   "",
								  ],

						   },
				      "feasible" => {
						     operator => "feasible ",
						     meaning => "",
						     examples => [
								  {
								   statement => "",
								   meaning => "action alpha is 'feasible' with respect to phi iff A_i alpha holds",
								  },
								 ],
						     assertions => [
								    "",
								   ],

						    },
				      "practical possibility" => {
								  operator => "PracPoss(alpha, phi)",
								  meaning => "",
								  examples => [
									       {
										statement => "PracPoss_i(alpha, phi) := <do_i(alpha)>phi and A_i alpha",
										meaning => "action alpha is practically possible with respect to phi if it is both correct and feasible with respect to phi",
									       },
									      ],
								  assertions => [
										 "",
										],
								 },
				      "can" => {
								  operator => "Can_i(alpha, phi)",
								  meaning => "integrate knowledge ability opportunity and result",
								  examples => [
									       {
										statement => "Can_i(alpha, phi) := K_i PracPoss_i(alpha, phi)",
										meaning => "",
									       },
									      ],
								  assertions => [
										 "",
										],
								 },
				      "cannot" => {
								  operator => "Cannot_i(alpha, phi)",
								  meaning => "integrate knowledge ability opportunity and result",
								  examples => [
									       {
										statement => "Cannot_i(alpha, phi) := K_i not PracPoss_i(alpha, phi)",
										meaning => "",
									       },
									      ],
								  assertions => [
										 "",
										],
								 },
				     },
		       },
  };
)
