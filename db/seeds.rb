# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
   require 'faker'
   
  
   25.times do 
       cities = City.create(name:Faker::Address.city)
   end

   100.times do 
       doc = Doctor.create(firstname:Faker::Name.first_name, lastname:Faker::Name.last_name, speciality:Faker::Cannabis.medical_use,zip_code:Faker::Address.zip_code,city_id:rand(1 .. 50))
       pat = Patient.create(firstname:Faker::Name.first_name, lastname:Faker::Name.last_name,city_id:rand(1 .. 50)) 
   end

   50.times do
       app= Appointement.create(date:Faker::Date.in_date_period,patient_id:rand(1 .. 50),doctor_id:rand(1 .. 50),city_id:rand(1 .. 25) )
   end

   25.times do 
       spec = Speciality.create(name:Faker::Cannabis.medical_use)   
   end

   25.times do
      join = JoinDoctorsSpeciality.create(doctor_id:rand(1..50),speciality_id:rand(1..25))
   end