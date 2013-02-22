# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) are set in the file config/application.yml.
# See http://railsapps.github.com/rails-environment-variables.html

STDERR.puts "\nLoading sample WebSites"
require 'csv'
IO.popen(["gunzip", "-c", "#{Rails.root}/db/top-100k.csv.gz"]) do |file|
  csv = CSV.new(file)
  csv.each_slice(1000) do |rows|
    WebSite.transaction do
      build_array = rows.map {|row| {:rank => row[0], :url => row[1]} }
      WebSite.create(build_array)
      print '.' * (rows.length / 10)
    end
  end
end

STDERR.puts "\nLoading seeds.rb"

cars = Car.create([
  {make: "Toyota"},
  {make: "Ford"},
  {make: "Honda"},
  {make: "Chevrolet"},
  {make: "Mercedes-Benz"},
  {make: "BMW"},
  {make: "Volvo"},
  {make: "Cadillac"},
  {make: "Lexus"},
  {make: "Tesla"},
  {make: "Smart"},
  {make: "Acura"},
  {make: "Audi"},
  {make: "Subaru"},
  {make: "Nissan"},
  {make: "GMC"},
  {make: "Dodge"},
  {make: "Buick"},
  {make: "Hyundai"},
  {make: "Volkswagen"},
])

drivers = Driver.create([
  {last_name: "Guy", car: cars.sample},
  {last_name: "Baxter", car: cars.sample},
  {last_name: "Gage", car: cars.sample},
  {last_name: "Isaiah", car: cars.sample},
  {last_name: "Hyatt", car: cars.sample},
  {last_name: "Kenyon", car: cars.sample},
  {last_name: "James", car: cars.sample},
])
