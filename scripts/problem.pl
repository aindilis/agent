my $item =
  bless( {
	  'SubTypes' => {},
	  'HasObjects' => {
			   'laptop' => {
					'IBM-R30' => 1
				       },
			   'bed' => {
				     'sleeping-bag' => 1,
				     'hidden-sleeping-spot' => 1
				    },
			   'electric-razor' => {
						'electric-razor0' => 1
					       },
			   'outlet' => {
					'outlet0' => 1
				       },
			   'person' => {
					'andy' => 1,
					'justin' => 1
				       },
			   'location' => {
					  'UC-gym' => 1,
					  'forbes-and-chesterfield' => 1,
					  'wean-hall-bathroom' => 1,
					  'svrs-1' => 1,
					  'doherty-hall-bathroom' => 1,
					  'flagstaff-hill' => 1,
					  'cs-lounge' => 1,
					  'cathedral-of-learning' => 1
					 },
			   'store' => {
				       'indiana-walmart' => 1,
				       'water-front-giant-eagle' => 1,
				       'airport-walmart' => 1,
				       'greenville-giant-eagle' => 1,
				       'oakland-giant-eagle' => 1,
				       'squirrel-hill-giant-eagle' => 1,
				       'forbes-ave-cvs' => 1
				      },
			   'laundry' => {
					 'laundry' => 1
					},
			   'towel' => {
				       'towel' => 1
				      },
			   'shower' => {
					'UC-mens-locker-room-shower' => 1
				       },
			   'container' => {
					   'bookbag' => 1,
					   'duffel-bag' => 1,
					   'laptop-backpack' => 1
					  },
			   'locker' => {
					'doherty-locker-4' => 1,
					'doherty-locker-1' => 1,
					'baker-locker-69' => 1,
					'baker-locker-18' => 1,
					'doherty-locker-161' => 1,
					'doherty-locker-20' => 1,
					'baker-locker-67' => 1
				       },
			   'office' => {
					'doherty-4201' => 1,
					'casos-office' => 1
				       },
			   'laundromat' => {
					    'forbes-ave-laundromat' => 1,
					    'basement-laundry-machines' => 1
					   },
			   'building' => {
					  'wean-hall' => 1,
					  'baker-hall' => 1,
					  'doherty-hall' => 1,
					  'fouroseven-craig-st-hall' => 1
					 },
			   'stuff' => {
				       'sleeping-bag' => 1,
				       'food-cans' => 1,
				       'hair-brush' => 1,
				       'can-opener' => 1,
				       'hair-trimmers' => 1,
				       'shampoo' => 1,
				       'camouflage' => 1,
				       'shirts' => 1,
				       'wallet' => 1,
				       'padlock' => 1,
				       'headset' => 1
				      },
			   'meals' => {
				       'food-store' => 1
				      },
			   'hygiene-tool' => {
					      'finger-clippers' => 1,
					      'towel' => 1,
					      'shampoo' => 1
					     }
			  },
	  'Contents' => '(define (problem hygiene)

 (:domain hygiene)

 (:objects
  andy justin - person
  electric-razor0 - electric-razor
  laundry - laundry
  towel - towel
  basement-laundry-machines forbes-ave-laundromat - laundromat
  food-store - meals
  sleeping-bag - bed
  hidden-sleeping-spot - bed
  outlet0 - outlet
  UC-mens-locker-room-shower - shower
  IBM-R30 - laptop
  bookbag laptop-backpack duffel-bag - container
  doherty-4201 casos-office - office
  doherty-hall wean-hall baker-hall fouroseven-craig-st-hall - building
  flagstaff-hill cs-lounge wean-hall-bathroom doherty-hall-bathroom - location
  UC-gym forbes-and-chesterfield cathedral-of-learning - location
  baker-locker-18 baker-locker-67 baker-locker-69 doherty-locker-161 - locker
  doherty-locker-1 doherty-locker-4 doherty-locker-20 - locker


  squirrel-hill-giant-eagle oakland-giant-eagle greenville-giant-eagle - store
  water-front-giant-eagle airport-walmart indiana-walmart - store
  forbes-ave-cvs - store
  finger-clippers towel shampoo - hygiene-tool
  hair-trimmers food-cans shirts can-opener hair-brush - stuff
  padlock shampoo headset wallet sleeping-bag camouflage - stuff

  svrs-1 - location
  )

 (:init

  (at 0 (inaccessible UC-gym))
  (at 7 (not (inaccessible UC-gym)))
  (at 20 (isolated doherty-hall-bathroom))
  (at 0 (isolated flagstaff-hill))
  (at 8 (not (isolated flagstaff-hill)))
  (at 24 (isolated flagstaff-hill))
  (at 32 (not (isolated flagstaff-hill)))

  (= (quantity food-store) 10)

  (at doherty-locker-1 doherty-hall)
  (at doherty-locker-4 doherty-hall)
  (at doherty-locker-20 doherty-hall)
  (at doherty-locker-161 doherty-hall)
  (at baker-locker-18 baker-hall)
  (at baker-locker-67 baker-hall)
  (at baker-locker-69 baker-hall)

  (locked doherty-locker-1)
  (locked doherty-locker-4)
  (locked doherty-locker-20)
  (locked doherty-locker-161)
  (locked baker-locker-18)
  (locked baker-locker-67)
  (locked baker-locker-69)


  (isolated cathedral-of-learning)

  (= (cash andy) 10)
  (= (hourly-wage-net andy) 7)

  (is-contained-by electric-razor0 baker-locker-18)
  (is-contained-by laundry doherty-locker-161)
  (is-contained-by towel baker-locker-18)
  (is-contained-by food-store doherty-locker-1)
  (is-contained-by bookbag baker-locker-69)
  (is-contained-by laptop-backpack baker-locker-69)
  (is-contained-by finger-clippers doherty-locker-1)

  (at forbes-ave-laundromat forbes-and-chesterfield)
  (at hidden-sleeping-spot cathedral-of-learning)
  (at sleeping-bag flagstaff-hill)
  (at outlet0 doherty-4201)
  (at UC-mens-locker-room-shower UC-gym)
  (at andy cs-lounge)
  (at ibm-r30 cs-lounge)
  (at duffel-bag cs-lounge)

  (autonomous andy)
  (autonomous justin)

  (mobile food-store)
  (mobile laptop-backpack)
  (mobile duffel-bag)
  (mobile bookbag)
  (mobile electric-razor0)
  (mobile towel)
  (mobile laundry)
  (mobile ibm-r30)
  (mobile finger-clippers)

  (tired andy)
  (hungry andy)

  (= (speed andy) 1)
  (= (actions) 0)
  (= (total-walking-distance) 0)
  (= (charge-level electric-razor0) 0.1)
  (= (charge-level ibm-r30) 0.1)
  (= (charge-rate electric-razor0) 0.1)
  (= (charge-rate ibm-r30) 0.3)

  (use-is-required finger-clippers)

  )

 (:goal 
  (and
   (>= (cash andy) 20)
   (all-pending-work-accomplished andy)
   (not (tired andy))
   (not (hungry andy))
   (not (use-is-required finger-clippers))
   (is-contained-by duffel-bag bookbag)
   (is-contained-by bookbag laptop-backpack)
   (showered andy)
   (clean laundry)
   )
  )

 (:metric minimize (+
		    (+ 
		     (total-time) 
		     (actions))
		    (total-walking-distance)))

 )


',
	  'System' => 'hygiene',
	  'Inits' => {
		      '(= 
 (total-walking-distance) 0)' => 56,
		      '(at outlet0 doherty-4201)' => 36,
		      '(isolated cathedral-of-learning)' => 23,
		      '(locked baker-locker-18)' => 20,
		      '(locked doherty-locker-161)' => 19,
		      '(at 20 
 (isolated doherty-hall-bathroom))' => 3,
		      '(at duffel-bag cs-lounge)' => 40,
		      '(hungry andy)' => 53,
		      '(tired andy)' => 52,
		      '(at UC-mens-locker-room-shower UC-gym)' => 37,
		      '(at doherty-locker-1 doherty-hall)' => 9,
		      '(at 0 
 (isolated flagstaff-hill))' => 4,
		      '(mobile bookbag)' => 46,
		      '(mobile laptop-backpack)' => 44,
		      '(is-contained-by food-store doherty-locker-1)' => 29,
		      '(is-contained-by towel baker-locker-18)' => 28,
		      '(at doherty-locker-20 doherty-hall)' => 11,
		      '(= 
 (speed andy) 1)' => 54,
		      '(= 
 (charge-rate electric-razor0) 0.1)' => 59,
		      '(at andy cs-lounge)' => 38,
		      '(locked baker-locker-69)' => 22,
		      '(is-contained-by finger-clippers doherty-locker-1)' => 32,
		      '(at 8 
 (not 
  (isolated flagstaff-hill)))' => 5,
		      '(at baker-locker-67 baker-hall)' => 14,
		      '(autonomous justin)' => 42,
		      '(= 
 (hourly-wage-net andy) 7)' => 25,
		      '(at 7 
 (not 
  (inaccessible UC-gym)))' => 2,
		      '(autonomous andy)' => 41,
		      '(= 
 (charge-level ibm-r30) 0.1)' => 58,
		      '(at hidden-sleeping-spot cathedral-of-learning)' => 34,
		      '(= 
 (quantity food-store) 10)' => 8,
		      '(at forbes-ave-laundromat forbes-and-chesterfield)' => 33,
		      '(is-contained-by bookbag baker-locker-69)' => 30,
		      '(use-is-required finger-clippers)' => 61,
		      '(mobile towel)' => 48,
		      '(at doherty-locker-161 doherty-hall)' => 12,
		      '(locked doherty-locker-20)' => 18,
		      '(at 32 
 (not 
  (isolated flagstaff-hill)))' => 7,
		      '(locked baker-locker-67)' => 21,
		      '(is-contained-by laptop-backpack baker-locker-69)' => 31,
		      '(mobile ibm-r30)' => 50,
		      '(= 
 (actions) 0)' => 55,
		      '(locked doherty-locker-4)' => 17,
		      '(= 
 (charge-rate ibm-r30) 0.3)' => 60,
		      '(at sleeping-bag flagstaff-hill)' => 35,
		      '(at baker-locker-69 baker-hall)' => 15,
		      '(= 
 (cash andy) 10)' => 24,
		      '(= 
 (charge-level electric-razor0) 0.1)' => 57,
		      '(at ibm-r30 cs-lounge)' => 39,
		      '(is-contained-by electric-razor0 baker-locker-18)' => 26,
		      '(is-contained-by laundry doherty-locker-161)' => 27,
		      '(at 0 
 (inaccessible UC-gym))' => 1,
		      '(mobile finger-clippers)' => 51,
		      '(mobile duffel-bag)' => 45,
		      '(at baker-locker-18 baker-hall)' => 13,
		      '(locked doherty-locker-1)' => 16,
		      '(at doherty-locker-4 doherty-hall)' => 10,
		      '(mobile laundry)' => 49,
		      '(mobile electric-razor0)' => 47,
		      '(mobile food-store)' => 43,
		      '(at 24 
 (isolated flagstaff-hill))' => 6
		     },
	  'HasType' => {
			'IBM-R30' => {
				      'laptop' => 1
				     },
			'outlet0' => {
				      'outlet' => 1
				     },
			'greenville-giant-eagle' => {
						     'store' => 1
						    },
			'forbes-and-chesterfield' => {
						      'location' => 1
						     },
			'flagstaff-hill' => {
					     'location' => 1
					    },
			'food-store' => {
					 'meals' => 1
					},
			'water-front-giant-eagle' => {
						      'store' => 1
						     },
			'doherty-locker-4' => {
					       'locker' => 1
					      },
			'duffel-bag' => {
					 'container' => 1
					},
			'doherty-4201' => {
					   'office' => 1
					  },
			'basement-laundry-machines' => {
							'laundromat' => 1
						       },
			'wean-hall-bathroom' => {
						 'location' => 1
						},
			'towel' => {
				    'towel' => 1,
				    'hygiene-tool' => 1
				   },
			'svrs-1' => {
				     'location' => 1
				    },
			'shampoo' => {
				      'stuff' => 1,
				      'hygiene-tool' => 1
				     },
			'baker-locker-67' => {
					      'locker' => 1
					     },
			'casos-office' => {
					   'office' => 1
					  },
			'camouflage' => {
					 'stuff' => 1
					},
			'indiana-walmart' => {
					      'store' => 1
					     },
			'baker-locker-69' => {
					      'locker' => 1
					     },
			'baker-locker-18' => {
					      'locker' => 1
					     },
			'shirts' => {
				     'stuff' => 1
				    },
			'padlock' => {
				      'stuff' => 1
				     },
			'bookbag' => {
				      'container' => 1
				     },
			'UC-gym' => {
				     'location' => 1
				    },
			'doherty-locker-1' => {
					       'locker' => 1
					      },
			'hair-brush' => {
					 'stuff' => 1
					},
			'hair-trimmers' => {
					    'stuff' => 1
					   },
			'squirrel-hill-giant-eagle' => {
							'store' => 1
						       },
			'doherty-hall-bathroom' => {
						    'location' => 1
						   },
			'doherty-locker-20' => {
						'locker' => 1
					       },
			'forbes-ave-cvs' => {
					     'store' => 1
					    },
			'andy' => {
				   'person' => 1
				  },
			'airport-walmart' => {
					      'store' => 1
					     },
			'electric-razor0' => {
					      'electric-razor' => 1
					     },
			'cs-lounge' => {
					'location' => 1
				       },
			'justin' => {
				     'person' => 1
				    },
			'wean-hall' => {
					'building' => 1
				       },
			'headset' => {
				      'stuff' => 1
				     },
			'baker-hall' => {
					 'building' => 1
					},
			'sleeping-bag' => {
					   'bed' => 1,
					   'stuff' => 1
					  },
			'food-cans' => {
					'stuff' => 1
				       },
			'finger-clippers' => {
					      'hygiene-tool' => 1
					     },
			'UC-mens-locker-room-shower' => {
							 'shower' => 1
							},
			'forbes-ave-laundromat' => {
						    'laundromat' => 1
						   },
			'oakland-giant-eagle' => {
						  'store' => 1
						 },
			'laptop-backpack' => {
					      'container' => 1
					     },
			'hidden-sleeping-spot' => {
						   'bed' => 1
						  },
			'laundry' => {
				      'laundry' => 1
				     },
			'can-opener' => {
					 'stuff' => 1
					},
			'doherty-locker-161' => {
						 'locker' => 1
						},
			'fouroseven-craig-st-hall' => {
						       'building' => 1
						      },
			'wallet' => {
				     'stuff' => 1
				    },
			'doherty-hall' => {
					   'building' => 1
					  },
			'cathedral-of-learning' => {
						    'location' => 1
						   }
		       },
	  'TimeUnits' => 'minutes',
	  'Order' => 0,
	  'Objects' => {
			'IBM-R30' => 1,
			'outlet0' => 1,
			'greenville-giant-eagle' => 1,
			'forbes-and-chesterfield' => 1,
			'flagstaff-hill' => 1,
			'food-store' => 1,
			'water-front-giant-eagle' => 1,
			'doherty-locker-4' => 1,
			'duffel-bag' => 1,
			'doherty-4201' => 1,
			'basement-laundry-machines' => 1,
			'wean-hall-bathroom' => 1,
			'towel' => 1,
			'svrs-1' => 1,
			'shampoo' => 1,
			'baker-locker-67' => 1,
			'casos-office' => 1,
			'camouflage' => 1,
			'indiana-walmart' => 1,
			'baker-locker-69' => 1,
			'baker-locker-18' => 1,
			'shirts' => 1,
			'padlock' => 1,
			'bookbag' => 1,
			'UC-gym' => 1,
			'doherty-locker-1' => 1,
			'hair-brush' => 1,
			'hair-trimmers' => 1,
			'squirrel-hill-giant-eagle' => 1,
			'doherty-hall-bathroom' => 1,
			'doherty-locker-20' => 1,
			'forbes-ave-cvs' => 1,
			'andy' => 1,
			'airport-walmart' => 1,
			'electric-razor0' => 1,
			'cs-lounge' => 1,
			'justin' => 1,
			'wean-hall' => 1,
			'headset' => 1,
			'baker-hall' => 1,
			'sleeping-bag' => 1,
			'food-cans' => 1,
			'finger-clippers' => 1,
			'UC-mens-locker-room-shower' => 1,
			'forbes-ave-laundromat' => 1,
			'oakland-giant-eagle' => 1,
			'laptop-backpack' => 1,
			'hidden-sleeping-spot' => 1,
			'laundry' => 1,
			'can-opener' => 1,
			'doherty-locker-161' => 1,
			'fouroseven-craig-st-hall' => 1,
			'wallet' => 1,
			'doherty-hall' => 1,
			'cathedral-of-learning' => 1
		       },
	  'SuperTypes' => {},
	  'Goals' => {
		      '(not 
 (use-is-required finger-clippers))' => 5,
		      '(showered andy)' => 8,
		      '(is-contained-by bookbag laptop-backpack)' => 7,
		      '(not 
 (hungry andy))' => 4,
		      '(clean laundry)' => 9,
		      '(>= 
 (cash andy) 20)' => 1,
		      '(all-pending-work-accomplished andy)' => 2,
		      '(is-contained-by duffel-bag bookbag)' => 6,
		      '(not 
 (tired andy))' => 3
		     },
	  'Types' => {
		      'laptop' => 1,
		      'bed' => 1,
		      'electric-razor' => 1,
		      'outlet' => 1,
		      'person' => 1,
		      'location' => 1,
		      'store' => 1,
		      'laundry' => 1,
		      'towel' => 1,
		      'shower' => 1,
		      'container' => 1,
		      'locker' => 1,
		      'office' => 1,
		      'laundromat' => 1,
		      'building' => 1,
		      'stuff' => 1,
		      'meals' => 1,
		      'hygiene-tool' => 1
		     }
	 }, 'Verber::Ext::PDDL' );
