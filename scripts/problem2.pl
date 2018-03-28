$VAR1 = bless( {
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
                 'MyDateManip' => bless( {
                                           'FormatterSeconds' => bless( {
                                                                          'base' => undef,
                                                                          'pattern' => '%s',
                                                                          'normalise' => 1
                                                                        }, 'DateTime::Format::Duration' ),
                                           'Formatter' => bless( {
                                                                   'base' => undef,
                                                                   'pattern' => '%F %T',
                                                                   'normalise' => 1
                                                                 }, 'DateTime::Format::Duration' )
                                         }, 'Verber::Util::DateManip' ),
                 'Inits' => {
                              '(= 
 (total-walking-distance) 0)' => [
                                                                      '=',
                                                                      [
                                                                        'total-walking-distance'
                                                                      ],
                                                                      '0'
                                                                    ],
                              '(at outlet0 doherty-4201)' => [
                                                               'at',
                                                               'outlet0',
                                                               'doherty-4201'
                                                             ],
                              '(isolated cathedral-of-learning)' => [
                                                                      'isolated',
                                                                      'cathedral-of-learning'
                                                                    ],
                              '(locked baker-locker-18)' => [
                                                              'locked',
                                                              'baker-locker-18'
                                                            ],
                              '(locked doherty-locker-161)' => [
                                                                 'locked',
                                                                 'doherty-locker-161'
                                                               ],
                              '(at 20 
 (isolated doherty-hall-bathroom))' => [
                                                                                'at',
                                                                                '20',
                                                                                [
                                                                                  'isolated',
                                                                                  'doherty-hall-bathroom'
                                                                                ]
                                                                              ],
                              '(at duffel-bag cs-lounge)' => [
                                                               'at',
                                                               'duffel-bag',
                                                               'cs-lounge'
                                                             ],
                              '(hungry andy)' => [
                                                   'hungry',
                                                   'andy'
                                                 ],
                              '(tired andy)' => [
                                                  'tired',
                                                  'andy'
                                                ],
                              '(at UC-mens-locker-room-shower UC-gym)' => [
                                                                            'at',
                                                                            'UC-mens-locker-room-shower',
                                                                            'UC-gym'
                                                                          ],
                              '(at doherty-locker-1 doherty-hall)' => [
                                                                        'at',
                                                                        'doherty-locker-1',
                                                                        'doherty-hall'
                                                                      ],
                              '(at 0 
 (isolated flagstaff-hill))' => [
                                                                        'at',
                                                                        '0',
                                                                        [
                                                                          'isolated',
                                                                          'flagstaff-hill'
                                                                        ]
                                                                      ],
                              '(mobile bookbag)' => [
                                                      'mobile',
                                                      'bookbag'
                                                    ],
                              '(mobile laptop-backpack)' => [
                                                              'mobile',
                                                              'laptop-backpack'
                                                            ],
                              '(is-contained-by food-store doherty-locker-1)' => [
                                                                                   'is-contained-by',
                                                                                   'food-store',
                                                                                   'doherty-locker-1'
                                                                                 ],
                              '(is-contained-by towel baker-locker-18)' => [
                                                                             'is-contained-by',
                                                                             'towel',
                                                                             'baker-locker-18'
                                                                           ],
                              '(at doherty-locker-20 doherty-hall)' => [
                                                                         'at',
                                                                         'doherty-locker-20',
                                                                         'doherty-hall'
                                                                       ],
                              '(= 
 (speed andy) 1)' => [
                                                          '=',
                                                          [
                                                            'speed',
                                                            'andy'
                                                          ],
                                                          '1'
                                                        ],
                              '(= 
 (charge-rate electric-razor0) 0.1)' => [
                                                                             '=',
                                                                             [
                                                                               'charge-rate',
                                                                               'electric-razor0'
                                                                             ],
                                                                             '0.1'
                                                                           ],
                              '(at andy cs-lounge)' => [
                                                         'at',
                                                         'andy',
                                                         'cs-lounge'
                                                       ],
                              '(locked baker-locker-69)' => [
                                                              'locked',
                                                              'baker-locker-69'
                                                            ],
                              '(is-contained-by finger-clippers doherty-locker-1)' => [
                                                                                        'is-contained-by',
                                                                                        'finger-clippers',
                                                                                        'doherty-locker-1'
                                                                                      ],
                              '(at 8 
 (not 
  (isolated flagstaff-hill)))' => [
                                                                                 'at',
                                                                                 '8',
                                                                                 [
                                                                                   'not',
                                                                                   [
                                                                                     'isolated',
                                                                                     'flagstaff-hill'
                                                                                   ]
                                                                                 ]
                                                                               ],
                              '(at baker-locker-67 baker-hall)' => [
                                                                     'at',
                                                                     'baker-locker-67',
                                                                     'baker-hall'
                                                                   ],
                              '(autonomous justin)' => [
                                                         'autonomous',
                                                         'justin'
                                                       ],
                              '(= 
 (hourly-wage-net andy) 7)' => [
                                                                    '=',
                                                                    [
                                                                      'hourly-wage-net',
                                                                      'andy'
                                                                    ],
                                                                    '7'
                                                                  ],
                              '(at 7 
 (not 
  (inaccessible UC-gym)))' => [
                                                                             'at',
                                                                             '7',
                                                                             [
                                                                               'not',
                                                                               [
                                                                                 'inaccessible',
                                                                                 'UC-gym'
                                                                               ]
                                                                             ]
                                                                           ],
                              '(autonomous andy)' => [
                                                       'autonomous',
                                                       'andy'
                                                     ],
                              '(= 
 (charge-level ibm-r30) 0.1)' => [
                                                                      '=',
                                                                      [
                                                                        'charge-level',
                                                                        'ibm-r30'
                                                                      ],
                                                                      '0.1'
                                                                    ],
                              '(at hidden-sleeping-spot cathedral-of-learning)' => [
                                                                                     'at',
                                                                                     'hidden-sleeping-spot',
                                                                                     'cathedral-of-learning'
                                                                                   ],
                              '(= 
 (quantity food-store) 10)' => [
                                                                    '=',
                                                                    [
                                                                      'quantity',
                                                                      'food-store'
                                                                    ],
                                                                    '10'
                                                                  ],
                              '(at forbes-ave-laundromat forbes-and-chesterfield)' => [
                                                                                        'at',
                                                                                        'forbes-ave-laundromat',
                                                                                        'forbes-and-chesterfield'
                                                                                      ],
                              '(is-contained-by bookbag baker-locker-69)' => [
                                                                               'is-contained-by',
                                                                               'bookbag',
                                                                               'baker-locker-69'
                                                                             ],
                              '(use-is-required finger-clippers)' => [
                                                                       'use-is-required',
                                                                       'finger-clippers'
                                                                     ],
                              '(mobile towel)' => [
                                                    'mobile',
                                                    'towel'
                                                  ],
                              '(at doherty-locker-161 doherty-hall)' => [
                                                                          'at',
                                                                          'doherty-locker-161',
                                                                          'doherty-hall'
                                                                        ],
                              '(locked doherty-locker-20)' => [
                                                                'locked',
                                                                'doherty-locker-20'
                                                              ],
                              '(at 32 
 (not 
  (isolated flagstaff-hill)))' => [
                                                                                  'at',
                                                                                  '32',
                                                                                  [
                                                                                    'not',
                                                                                    [
                                                                                      'isolated',
                                                                                      'flagstaff-hill'
                                                                                    ]
                                                                                  ]
                                                                                ],
                              '(locked baker-locker-67)' => [
                                                              'locked',
                                                              'baker-locker-67'
                                                            ],
                              '(is-contained-by laptop-backpack baker-locker-69)' => [
                                                                                       'is-contained-by',
                                                                                       'laptop-backpack',
                                                                                       'baker-locker-69'
                                                                                     ],
                              '(mobile ibm-r30)' => [
                                                      'mobile',
                                                      'ibm-r30'
                                                    ],
                              '(= 
 (actions) 0)' => [
                                                       '=',
                                                       [
                                                         'actions'
                                                       ],
                                                       '0'
                                                     ],
                              '(locked doherty-locker-4)' => [
                                                               'locked',
                                                               'doherty-locker-4'
                                                             ],
                              '(= 
 (charge-rate ibm-r30) 0.3)' => [
                                                                     '=',
                                                                     [
                                                                       'charge-rate',
                                                                       'ibm-r30'
                                                                     ],
                                                                     '0.3'
                                                                   ],
                              '(at sleeping-bag flagstaff-hill)' => [
                                                                      'at',
                                                                      'sleeping-bag',
                                                                      'flagstaff-hill'
                                                                    ],
                              '(at baker-locker-69 baker-hall)' => [
                                                                     'at',
                                                                     'baker-locker-69',
                                                                     'baker-hall'
                                                                   ],
                              '(= 
 (cash andy) 10)' => [
                                                          '=',
                                                          [
                                                            'cash',
                                                            'andy'
                                                          ],
                                                          '10'
                                                        ],
                              '(= 
 (charge-level electric-razor0) 0.1)' => [
                                                                              '=',
                                                                              [
                                                                                'charge-level',
                                                                                'electric-razor0'
                                                                              ],
                                                                              '0.1'
                                                                            ],
                              '(at ibm-r30 cs-lounge)' => [
                                                            'at',
                                                            'ibm-r30',
                                                            'cs-lounge'
                                                          ],
                              '(is-contained-by electric-razor0 baker-locker-18)' => [
                                                                                       'is-contained-by',
                                                                                       'electric-razor0',
                                                                                       'baker-locker-18'
                                                                                     ],
                              '(is-contained-by laundry doherty-locker-161)' => [
                                                                                  'is-contained-by',
                                                                                  'laundry',
                                                                                  'doherty-locker-161'
                                                                                ],
                              '(at 0 
 (inaccessible UC-gym))' => [
                                                                    'at',
                                                                    '0',
                                                                    [
                                                                      'inaccessible',
                                                                      'UC-gym'
                                                                    ]
                                                                  ],
                              '(mobile finger-clippers)' => [
                                                              'mobile',
                                                              'finger-clippers'
                                                            ],
                              '(mobile duffel-bag)' => [
                                                         'mobile',
                                                         'duffel-bag'
                                                       ],
                              '(at baker-locker-18 baker-hall)' => [
                                                                     'at',
                                                                     'baker-locker-18',
                                                                     'baker-hall'
                                                                   ],
                              '(locked doherty-locker-1)' => [
                                                               'locked',
                                                               'doherty-locker-1'
                                                             ],
                              '(at doherty-locker-4 doherty-hall)' => [
                                                                        'at',
                                                                        'doherty-locker-4',
                                                                        'doherty-hall'
                                                                      ],
                              '(mobile laundry)' => [
                                                      'mobile',
                                                      'laundry'
                                                    ],
                              '(mobile electric-razor0)' => [
                                                              'mobile',
                                                              'electric-razor0'
                                                            ],
                              '(mobile food-store)' => [
                                                         'mobile',
                                                         'food-store'
                                                       ],
                              '(at 24 
 (isolated flagstaff-hill))' => [
                                                                         'at',
                                                                         '24',
                                                                         [
                                                                           'isolated',
                                                                           'flagstaff-hill'
                                                                         ]
                                                                       ]
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
                 'MyLight' => bless( {
                                       'Tasks' => {},
                                       'Task2Action' => {},
                                       'Actions' => {},
                                       'Debug' => 0,
                                       'Events' => {},
                                       'Domainfile' => undef
                                     }, 'Verber::Util::Light' ),
                 'Constraints' => {},
                 'Domain' => 'hygiene',
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
                 'Metric' => [
                               'minimize',
                               [
                                 '+',
                                 [
                                   '+',
                                   [
                                     'total-time'
                                   ],
                                   [
                                     'actions'
                                   ]
                                 ],
                                 [
                                   'total-walking-distance'
                                 ]
                               ]
                             ],
                 'Goals' => {
                              '(not 
 (use-is-required finger-clippers))' => [
                                                                               'not',
                                                                               [
                                                                                 'use-is-required',
                                                                                 'finger-clippers'
                                                                               ]
                                                                             ],
                              '(showered andy)' => [
                                                     'showered',
                                                     'andy'
                                                   ],
                              '(is-contained-by bookbag laptop-backpack)' => [
                                                                               'is-contained-by',
                                                                               'bookbag',
                                                                               'laptop-backpack'
                                                                             ],
                              '(not 
 (hungry andy))' => [
                                                           'not',
                                                           [
                                                             'hungry',
                                                             'andy'
                                                           ]
                                                         ],
                              '(clean laundry)' => [
                                                     'clean',
                                                     'laundry'
                                                   ],
                              '(>= 
 (cash andy) 20)' => [
                                                           '>=',
                                                           [
                                                             'cash',
                                                             'andy'
                                                           ],
                                                           '20'
                                                         ],
                              '(all-pending-work-accomplished andy)' => [
                                                                          'all-pending-work-accomplished',
                                                                          'andy'
                                                                        ],
                              '(is-contained-by duffel-bag bookbag)' => [
                                                                          'is-contained-by',
                                                                          'duffel-bag',
                                                                          'bookbag'
                                                                        ],
                              '(not 
 (tired andy))' => [
                                                          'not',
                                                          [
                                                            'tired',
                                                            'andy'
                                                          ]
                                                        ]
                            },
                 'Includes' => {},
                 'Problem' => 'hygiene',
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
               }, 'Verber::Ext::PDDL::Problem' );
