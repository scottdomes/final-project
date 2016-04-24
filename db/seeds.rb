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

Event.create(
  name: "FAOS Goes Camping",
  vote_on_location: true,
  vote_on_date: true,
  user_id: 1,
  final_location_id: 1,
  final_date_id: 1)

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