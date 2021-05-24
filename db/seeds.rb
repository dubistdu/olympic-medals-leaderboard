# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sport_categories = SportCategory.create([{sports_name: 'Archery', season:'summer'},{sports_name: 'Athletics', season:'summer'},{sports_name: 'Badminton', season:'summer'},{sports_name: 'Basketball', season:'summer'},{sports_name: 'Boxing', season:'summer'},{sports_name: 'Canoeing', season:'summer'},{sports_name: 'Cycling', season:'summer'},{sports_name: 'Diving', season:'summer'},{sports_name: 'Equestrian', season:'summer'},{sports_name: 'Fencing', season:'summer'},{sports_name: 'Field hockey', season:'summer'},{sports_name: 'Football', season:'summer'},{sports_name: 'Golf', season:'summer'},{sports_name: 'Gymnastics', season:'summer'},{sports_name: 'Handball', season:'summer'},{sports_name: 'Judo', season:'summer'},{sports_name: 'Modern pentathlon', season:'summer'},
{sports_name: 'Rowing', season:'summer'},{sports_name: 'Rugby sevens', season:'summer'},{sports_name: 'Sailing', season:'summer'},{sports_name: 'Shooting', season:'summer'},{sports_name: 'Swimming', season:'summer'},{sports_name: 'Synchronized swimming', season:'summer'},{sports_name: 'Table tennis', season:'summer'},{sports_name: 'Taekwondo', season:'summer'},{sports_name: 'Tennis', season:'summer'},{sports_name: 'Triathlon', season:'summer'},{sports_name: 'Volleyball', season:'summer'},{sports_name: 'Water polo', season:'summer'},{sports_name: 'Weightlifting', season:'summer'},{sports_name: 'Wrestling', season:'summer'}])

#countries
require 'csv'

csv_text_ = File.read(Rails.root.join('lib', 'seeds', 'countries-name.csv'))
csv_country = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv_country.each do |row|
  t = Country.new
  t.name = row['name']
  t.save
end

csv_text = File.read(Rails.root.join('lib', 'seeds', 'athletes.csv'))
csv_athlete = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv_athlete.each do |row|
  t = Athlete.new
  t.name = row['name']
  t.gender = row['gender']
  t.height = row['height']
  t.weight= row['weight']
  t.country_id= row['country_id']
  t.save
end

