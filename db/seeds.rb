# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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

