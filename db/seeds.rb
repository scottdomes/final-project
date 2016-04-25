# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  fb_id: 123,
  name: "Scosama Juristochen",
  picture_path: "https://flavorwire.files.wordpress.com/2014/07/8drake.jpg")

User.create(
  fb_id: "10153549453065382",
  name: "Scott Domes",
  picture_path: "https://scontent.xx.fbcdn.net/hprofile-xta1/v/t1.0-1/c1.0.50.50/p50x50/10450899_10152181634925382_5440199476018927392_n.jpg?oh=cabfda8e5ba3d3adb1fdb241c5025551&oe=57A18CBE")

User.create(
  fb_id: "1581388972173882",
  name: "Alvin Chen",
  picture_path: "https://scontent.xx.fbcdn.net/hprofile-xfa1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=1b2f428689c126f80a083e30205ef68b&oe=57AD5F2F")

Event.create(
  name: "Test-Own-Event-Voting-False",
  vote_on_location: true,
  vote_on_date: true,
  user_id: 1,
  final_location_id: 1,
  final_date_id: 1,
  voting_phase: false)

EventDate.create(
  start_date: "May 4th 2016",
  end_date: "May 16th 2016",
  event_id: 1,
  user_id: 1)

CampSite.create(
  name: "Party Central",
  event_id: 1,
  user_id: 1)

Attendance.create(
  user_id: 2,
  event_id: 1)

Attendance.create(
  user_id: 3,
  event_id: 1)

Event.create(
  name: "Test-Other-Event-Voting-False",
  vote_on_location: true,
  vote_on_date: true,
  user_id: 2,
  final_location_id: 2,
  final_date_id: 2,
  voting_phase: false)

EventDate.create(
  start_date: "May 11th 2016",
  end_date: "May 12th 2016",
  event_id: 2,
  user_id: 2)

CampSite.create(
  name: "Scott's House",
  event_id: 2,
  user_id: 2)

Attendance.create(
  user_id: 1,
  event_id: 2)

Attendance.create(
  user_id: 3,
  event_id: 2)

Event.create(
  name: "Test-Own-Event-Voting-True",
  vote_on_location: true,
  vote_on_date: true,
  user_id: 1,
  final_location_id: 3,
  final_date_id: 3,
  voting_phase: true)

EventDate.create(
  start_date: "May 20th 2016",
  end_date: "May 30th 2016",
  event_id: 3,
  user_id: 1)

CampSite.create(
  name: "A Bar",
  event_id: 3,
  user_id: 1)

Attendance.create(
  user_id: 2,
  event_id: 3)

Attendance.create(
  user_id: 3,
  event_id: 3)

Event.create(
  name: "Test-Other-Event-Voting-True",
  vote_on_location: true,
  vote_on_date: true,
  user_id: 3,
  final_location_id: 4,
  final_date_id: 4,
  voting_phase: true)

EventDate.create(
  start_date: "May 11th 2016",
  end_date: "May 12th 2016",
  event_id: 4,
  user_id: 3)

EventDate.create(
  start_date: "May 11th 2016",
  end_date: "May 12th 2016",
  event_id: 4,
  user_id: 2)

CampSite.create(
  name: "Alvin's House",
  event_id: 4,
  user_id: 3)

CampSite.create(
  name: "Scott's House",
  event_id: 4,
  user_id: 2)


Attendance.create(
  user_id: 1,
  event_id: 4)

Attendance.create(
  user_id: 2,
  event_id: 4)