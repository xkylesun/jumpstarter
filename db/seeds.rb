User.create!([
  {name: "Demo User", email: "demo_user@email.com", password_digest: "$2a$12$CvTrWLNWn1Jg7YZdnk2Bp.plItQSgbTcgYK5J4HXX29ZRg7Fz9iG6", session_token: "sWT4Z8V8UK0S5U25nXG-Rg", biography: nil, avatar: nil},
  {name: "Creator 01", email: "creator01@gmail.com", password_digest: "$2a$12$V85M8EH9DQINwOGnYvsXOujGlowWYuusY/YlTAbK.Vjp5ST4j8No2", session_token: "56bSuazyShajJhf4iCquxA", biography: nil, avatar: nil},
  {name: "Creator 02", email: "creator02@gmail.com", password_digest: "$2a$12$MbTLyYtbTezgg6LWX633tO3hUIk.R4DqlnVEVBP/B4rriQ2Q.OjMK", session_token: "NTZC75yDlvGQJGNCUTOs9g", biography: nil, avatar: nil},
  {name: "Creator 03", email: "creator03@gmail.com", password_digest: "$2a$12$7SIHFea4/WE0FLoUDHMpreKIIXiyFnvAHIE2dcJRPUPTDFf4SL3EG", session_token: "vi2m8P_ORSKsAEoDimztPQ", biography: nil, avatar: nil},
  {name: "Backer 01", email: "backer01@gmail.com", password_digest: "$2a$12$OwFn8FtcD8F/Bye6nEl73ul/N1gYtOdz9ZaIKqtX5k6Ga/rVmSq3S", session_token: "1qQT6w3eHLp1D_SX2IDCdQ", biography: nil, avatar: nil},
  {name: "Backer 02", email: "backer02@gmail.com", password_digest: "$2a$12$pBXttlyrcxCL90KofitFcOy092iyVB3qXbkj2bGFuGKtqW6twg/by", session_token: "zXxHI6EdIrbwBGmqpn1Jqw", biography: nil, avatar: nil},
  {name: "Backer 03", email: "backer03@gmail.com", password_digest: "$2a$12$yg/xkvzGXC4Id4kBa/4lNence.i8LGuf4rhaSSZ6KJG9i.Hk9/ilK", session_token: "O6OAPaJcqV0OLuvNG77o7g", biography: nil, avatar: nil}
])

Project.create!([
  {title: "project02", creator_id: 1, category: "art", target: 1000, due_date: "2020-01-07 18:57:24", body: "na", thumbnail: nil, video_link: nil},
  {title: "project03", creator_id: 2, category: "technology", target: 20000, due_date: "2020-01-07 18:57:54", body: "na", thumbnail: nil, video_link: nil},
  {title: "project01", creator_id: 1, category: "technology", target: 10000, due_date: "2020-01-07 18:56:03", body: "naaaa", thumbnail: nil, video_link: nil}
])


PledgeLevel.create!([
  {project_id: 1, quantity: 1000, minimum: 1, title: "Show Your Support", description: "na", delivery_date: "2020-01-08"},
  {project_id: 1, quantity: 100, minimum: 10, title: "Gold", description: "na", delivery_date: "2020-01-08"},
  {project_id: 1, quantity: 10, minimum: 100, title: "Plat", description: "na", delivery_date: "2020-01-08"},
  {project_id: 2, quantity: 1000, minimum: 1, title: "Show Your Support", description: "na", delivery_date: "2020-01-08"},
  {project_id: 2, quantity: 50, minimum: 200, title: "Epic", description: "na", delivery_date: "2020-01-08"},
  {project_id: 3, quantity: 2000, minimum: 2, title: "Show Your Support", description: "na", delivery_date: "2020-01-08"},
  {project_id: 3, quantity: 200, minimum: 20, title: "Gold", description: "na", delivery_date: "2020-01-08"},
  {project_id: 3, quantity: 20, minimum: 200, title: "Plat", description: "na", delivery_date: "2020-01-08"}
])

Pledge.create!([
  {backer_id: 3, pledge_level_id: 1, amount: 100},
  {backer_id: 3, pledge_level_id: 3, amount: 200},
  {backer_id: 4, pledge_level_id: 1, amount: 500},
  {backer_id: 4, pledge_level_id: 3, amount: 1000},
  {backer_id: 4, pledge_level_id: 4, amount: 100},
  {backer_id: 4, pledge_level_id: 2, amount: 450},
  {backer_id: 5, pledge_level_id: 4, amount: 600},
  {backer_id: 5, pledge_level_id: 5, amount: 1000},
  {backer_id: 5, pledge_level_id: 6, amount: 1200}
])