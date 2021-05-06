
require 'faker'

City.create!(name: "Lyon")
City.create!(name: "Paris")
City.create!(name: "Marseille")
City.create(name: "Bordeaux")
City.create(name: "Lille")
cities_list = City.all


10.times do |s| 
  s = Specialty.create(name: Faker::Educator.subject)
end
specialties = Specialty.all

10.times do |d|
  s = specialties.sample
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city: cities_list.sample, specialty_id: s.id)
end
doctors_list= Doctor.all

10.times do |p|
  c = cities_list.sample
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: c.id)
end
patients_list=Patient.all

20.times do |a|
  d = doctors_list.sample
  dc = d.city
  appointment = Appointment.create!(date: Faker::Date.between(from: '2021-04-23', to: '2021-11-25'), doctor: d, patient: patients_list.sample, city_id: dc.id)
end
