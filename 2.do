# see multi-agent pddl 3.1 spec 

my $operators =
  {
   "Deontic" => {
		 "obligatory" => {
				  examples => [
					       {
						statement => "(obligatory C Phi)",
						meaning => "",
					       },
					      ],
				 },
		 "permitted" => {
				 examples => [
					      {
					       statement => "(permitted C Phi)",
					       meaning => "",
					      },
					     ],
				},
		 "forbidden" => {
				 examples => [
					      {
					       statement => "(forbidden C Phi)",
					       meaning => "",
					      },
					     ],
				},
		},
   "Epistemic" => {
		   "knows" => {
			       examples => [
					    {
					     statement => "(knows C Phi)",
					     meaning => "i knows Phi",
					    },
					    {
					     statement => "(K_i Phi)",
					     meaning => "",
					    },
					   ],
			       operator => "K_i",
			      },
		   "everybody-knows" => {
					 examples => [
						      {
						       statement => "(everybody-knows G Phi)",
						       meaning => "Everybody in G knows",
						      },
						      {
						       statement => "(E_G Phi)",
						       meaning => "",
						      },
						     ],
					 operator => "E_G",
					},
		   "distributed-knowledge" => {
					       examples => [
							    {
							     statement => "(distributed-knowledge G Phi)",
							     meaning => "It is distributed knowledge in G",
							    },
							    {
							     statement => "(D_G Phi)",
							     meaning => "",
							    },
							   ],
					       operator => "D_G",
					      },
		   "common-knowledge" => {
					  examples => [
						       {
							statement => "(common-knowledge G Phi)",
							meaning => "It is common knowledge in G",
						       },
						       {
							statement => "(C_G Phi)",
							meaning => "",
						       },
						      ],
					  operator => "C_G",
					 },
		  },
   "BDI" => {
	     "believe" => {
			   examples => [
					{
					 statement => "(believe C Phi)",
					 meaning => "",
					},
				       ],
			  },
	     "intend" => {
			  examples => [
				       {
					statement => "(intend C Phi)",
					meaning => "",
				       },
				      ],
			 },
	     "desire" => {
			  examples => [
				       {
					statement => "(desire C Phi)",
					meaning => "",
				       },
				      ],
			 },
	    },
   "Ability" => {
		 "ability" => {
			       examples => [
					    {
					     statement => "(ability i Phi)",
					     meaning => "",
					    },
					   ],
			       operator => "A_i",
			      },
		 "opportunity" => {
				   examples => [
						{
						 statement => "(opportunity C Phi)",
						 meaning => "",
						},
					       ],
				  },
		},
   "Adversarial" => {
		     "enforce" => {
				   examples => [
						{
						 statement => "(enforce C A)",
						 meaning => "",
						},
					       ],
				  },
		    },
   "Temporal" => {
		  "sometime" => {
				 examples => [
					     ],
				},

		  "always" => {
			       examples => [
					   ],
			      },
		  "eventually" => {
				   examples => [
					       ],
				  },
		  "in-the-next-state" => {
					  examples => [
						      ],
					 },
		 },
  };
