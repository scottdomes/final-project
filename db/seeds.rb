# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User ID 1
User.create(
  # fb_id: "10153549453065382",
  fb_id: 123,
  name: "Scott Domes",
  picture_path: "https://scontent.xx.fbcdn.net/hprofile-xta1/v/t1.0-1/c1.0.50.50/p50x50/10450899_10152181634925382_5440199476018927392_n.jpg?oh=cabfda8e5ba3d3adb1fdb241c5025551&oe=57A18CBE")

# User ID 2
User.create(
  fb_id: "1581388972173882",
  name: "Alvin Chen",
  picture_path: "https://scontent.xx.fbcdn.net/hprofile-xfa1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=1b2f428689c126f80a083e30205ef68b&oe=57AD5F2F")

# User ID 3
User.create(
  fb_id: "10153899890880129",
  name: "Osama Khan",
  picture_path: "https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/12401017_10153681523210129_35074620828172847_n.jpg?oh=b701a22e2b3316e5cf172ce9f7b4d20b&oe=579E84E2")

# User ID 4
User.create(
  fb_id: "10156922541070604",
  name: "Filip Juristovski",
  picture_path: "https://scontent.xx.fbcdn.net/hprofile-xfa1/v/t1.0-1/p50x50/11742674_10155923764465604_9211855613584821142_n.jpg?oh=fce6aa15d278fb5052c66f2c10c330e0&oe=57A9FE70")

# User ID 5
User.create(
  fb_id: 1234,
  name: "Iggy Azalea",
  picture_path: "https://germanbeautysabine.files.wordpress.com/2012/05/iggy-azalea-2012-03-26-300x300-e1334071099835.jpg")

# User ID 6
User.create(
  fb_id: 1235,
  name: "Drake",
  picture_path: "https://flavorwire.files.wordpress.com/2014/07/8drake.jpg")


# Test-OWN-Event-Voting-False Details

Event.create(
  name: "May Camping Trip",
  vote_on_location: true,
  vote_on_date: true,
  user_id: 1,
  final_location_id: 1,
  final_date_id: 1,
  voting_phase: false)

# EventDate ID 1
EventDate.create(
  start_date: "May 4th 2016",
  end_date: "May 16th 2016",
  event_id: 1,
  user_id: 1)

# CampSite ID 1
CampSite.create(
  name: "Paradise Valley",
  event_id: 1,
  user_id: 1)

Attendance.create(
  user_id: 2,
  event_id: 1)

Attendance.create(
  user_id: 3,
  event_id: 1)

Attendance.create(
  user_id: 4,
  event_id: 1)

Attendance.create(
  user_id: 5,
  event_id: 1)

Attendance.create(
  user_id: 6,
  event_id: 1)

Car.create(
  user_id: 4,
  event_id: 1,
  passenger_capacity: 4)

Ride.create(
  user_id: 3,
  event_id: 1,
  car_id: 1)

Ride.create(
  user_id: 1,
  event_id: 1,
  car_id: 1)

Car.create(
  user_id: 2,
  event_id: 1,
  passenger_capacity: 5)

Ride.create(
  user_id: 5,
  event_id: 1,
  car_id: 2)

Ride.create(
  user_id: 6,
  event_id: 1,
  car_id: 2)

# Test-OTHER-Event-Voting-False Details

Event.create(
  name: "Party Time",
  vote_on_location: true,
  vote_on_date: true,
  user_id: 2,
  final_location_id: 2,
  final_date_id: 2,
  voting_phase: false)

# EventDate ID 2
EventDate.create(
  start_date: "May 11th 2016",
  end_date: "May 12th 2016",
  event_id: 2,
  user_id: 2)

# CampSite ID 2
CampSite.create(
  name: "Tofino",
  event_id: 2,
  user_id: 2)

Attendance.create(
  user_id: 1,
  event_id: 2)

Attendance.create(
  user_id: 3,
  event_id: 2)

Attendance.create(
  user_id: 4,
  event_id: 2)

Car.create(
  user_id: 3,
  event_id: 2,
  passenger_capacity: 4)

Ride.create(
  user_id: 1,
  event_id: 2,
  car_id: 3)

Ride.create(
  user_id: 4,
  event_id: 2,
  car_id: 3)

Car.create(
  user_id: 2,
  event_id: 2,
  passenger_capacity: 5)

Ride.create(
  user_id: 5,
  event_id: 2,
  car_id: 4)




# Test-OWN-Event-Voting-True Details

Event.create(
  name: "Lighthouse Grad Roadtrip",
  vote_on_location: true,
  vote_on_date: true,
  user_id: 1,
  final_location_id: 3,
  final_date_id: 3,
  voting_phase: true)

# EventDate ID 3
EventDate.create(
  start_date: "May 20th 2016",
  end_date: "May 30th 2016",
  event_id: 3,
  user_id: 1)

# EventDate ID 4
EventDate.create(
  start_date: "May 10th 2016",
  end_date: "May 19th 2016",
  event_id: 3,
  user_id: 2)


DateVote.create(
  event_date_id: 3,
  user_id: 2,
  event_id: 3)

DateVote.create(
  event_date_id: 3,
  user_id: 5,
  event_id: 3)

# CampSite ID 3
CampSite.create(
  name: "Squamish",
  event_id: 3,
  user_id: 1)

CampsiteVote.create(
  camp_site_id: 3,
  user_id: 1,
  event_id: 3)

CampsiteVote.create(
  camp_site_id: 3,
  user_id: 2,
  event_id: 3)

# CampSite ID 4
CampSite.create(
  name: "Osoyoos",
  event_id: 3,
  user_id: 2)

CampsiteVote.create(
  camp_site_id: 4,
  user_id: 3,
  event_id: 3)

Attendance.create(
  user_id: 2,
  event_id: 3)

Attendance.create(
  user_id: 3,
  event_id: 3)

Attendance.create(
  user_id: 4,
  event_id: 3)

Attendance.create(
  user_id: 5,
  event_id: 3)

Car.create(
  user_id: 3,
  event_id: 3,
  passenger_capacity: 4)

Ride.create(
  user_id: 1,
  event_id: 3,
  car_id: 5)

Ride.create(
  user_id: 4,
  event_id: 3,
  car_id: 5)

Car.create(
  user_id: 2,
  event_id: 3,
  passenger_capacity: 5)

Ride.create(
  user_id: 5,
  event_id: 3,
  car_id: 6)

Item.create(
  list_type: "public",
  label: "Cooler",
  quantity: 1,
  event_id: 3,
  user_id: 5)

Item.create(
  list_type: "public",
  label: "Chairs",
  quantity: 1,
  event_id: 3,
  user_id: 3)

Item.create(
  list_type: "public",
  label: "Camp stove",
  quantity: 1,
  event_id: 3)

Item.create(
  list_type: "private",
  label: "Toothbrush",
  quantity: 1,
  event_id: 3)

#Test-OTHER-Event-Voting-True

Event.create(
  name: "Let's Climb a Mountain",
  vote_on_location: true,
  vote_on_date: true,
  user_id: 3,
  final_location_id: 4,
  final_date_id: 4,
  voting_phase: true)

# EventDate ID 5
EventDate.create(
  start_date: "May 11th 2016",
  end_date: "May 12th 2016",
  event_id: 4,
  user_id: 3)

# EventDate ID 6
EventDate.create(
  start_date: "May 20th 2016",
  end_date: "May 22th 2016",
  event_id: 4,
  user_id: 2)

# CampSite ID 5
CampSite.create(
  name: "Seymour Mountain",
  event_id: 4,
  user_id: 3)

# CampSite ID 6
CampSite.create(
  name: "Grouse Mountain",
  event_id: 4,
  user_id: 2)

# CampSite ID 7
CampSite.create(
  name: "Mount Fromme",
  event_id: 4,
  user_id: 1)

# CampSite ID 8
CampSite.create(
  name: "Cypress Mountain",
  event_id: 4,
  user_id: 4)

CampsiteVote.create(
  user_id: 3,
  camp_site_id: 5,
  event_id: 4
)

CampsiteVote.create(
  user_id: 4,
  camp_site_id: 8,
  event_id: 4
)

CampsiteVote.create(
  user_id: 5,
  camp_site_id: 5,
  event_id: 4
)

Attendance.create(
  user_id: 1,
  event_id: 4)

Attendance.create(
  user_id: 2,
  event_id: 4)

Attendance.create(
  user_id: 5,
  event_id: 4)

Attendance.create(
  user_id: 4,
  event_id: 4)
