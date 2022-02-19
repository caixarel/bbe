# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


User.destroy_all
Bakery.destroy_all
addresses = ['Rue Leval 234','Prinsenstraat 61','Stationsstraat 343','Place Fayat 282','Chaussée de Tirlemont 265','Rue de la Poste 313','Huis van de Hertogen van Brabant','Grote Markt','Musée de la Ville de Bruxelles','Grote Markt 29','Grote Markt 10','Heuvelstraat 24','Grote Markt','Jordaenskaai','Steenplein 1','Ernest Van Dijckkaai 9','Steenplein','Willem Ogierplaats 2','Gildekamersstraat 2','Kaasstraat 17']
post_codes = [5300,3560,8691,3730,8978,6792,1000,1000,1000,1000,1000,1000,1000,2000,2000,2000,2000,2000,2000,2000]

puts 'Creating Original User'
admin =User.create(email:'admin@gmail.com',password:'12345678' , password_confirmation:'12345678')

puts 'Creating bakeries'

addresses.each_with_index do |address ,index|
  bakery = Bakery.create(name:Faker::Company.name, address:address , post_code:post_codes[index], description:Faker::Lorem.sentence(word_count: 8), opening_hour:Time.new, closing_hour:Time.new,phone_number:Faker::PhoneNumber.cell_phone,user:admin)
end
