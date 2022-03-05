# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Bakery.destroy_all

name = ['Maison Dandoy - Sablon', 'Paul', 'Paul', 'Charli', 'Paul', 'Boulangerie Allemeersch', 'Le Saint Josse Bakery', 'Cake Me Away', 'Panos City Brussel', 'Boulengier', 'Patisserie Millet', 'Le Temps des Tartines', 'Guenther Bakeries Belgium', 'Eric Kayser Grand Place', 'Renard Bakery', 'Bread and Confectionery KLEINBLATT', 'Urban Bakeries Belgium Bvba', 'Goossens', 'Himschoot', 'Lints Antwerp', 'Domestic Bakkerij', 'Bakery Dellafaille Antwerp', 'Koki', 'Domestic', 'Philips Bakery', 'Konditori', 'Framboise: Brood & Patisserie', 'The Bread Nation', 'The Bakery', 'Al keketerie', 'La Maison des Desserts', 'Les Cup inn', 'MIAM! Salon de Cookie', 'Boulangerie Legrand', 'Himschoot', 'Paul', 'De Gentsche Koekedoos', 'Boulangerie Okoro', 'Kultur Bakery', 'Joost Arijs', 'Pain & Compagnie', 'Bakkerij Sint-Paulus', 'bakkerij babylon', 'Bakkerij Carpe Diem', 'Patisserie Schaeverbeke', 'Patisserie Foque', 'Hoornaert', 'Bakkerij De Koker', 'Brood & Banket Hoornaert', 'MilyPat', 'HASHTAG BAKERIES', 'Boulangerie Le Millefeuille', 'Pâtisserie Delhaye', 'Maison Devos', 'Bakkerij Gielis', 'Delrue B & M', 'Boulangerie De Falouche', 'Le Matin Liégeois', 'Pâtisserie Stoffels', 'Logo du marchand,
Le Marmiton', 'Fine Bakery', 'La Relève Bakery', 'Au Vatel',  ]
addresses = ['Rue de Rollebeek 50, Bruxelles', 'Rue Froissart 72, Etterbeek', 'Rue des Fripiers 3/5, Bruxelles', 'Rue Sainte-Catherine 34, Bruxelles', 'Rue de l Enseignement 2, Bruxelles', 'Chau. de Wavre 396, Etterbeek', 'Chau. de Louvain 63', 'Saint-Josse-ten-Noode', 'Brusselstraat 279, Dilbeek', 'Rue du Marché Aux Herbes 85, Bruxelles', 'Av. Jean Volders 11, Saint-Gilles', 'Mechelsesteenweg 237, Zaventem', 'Rue du Midi 73, Bruxelles', 'Lammerdries-Oost 34, Olen', 'Rue du Marché Aux Herbes 80, Bruxelles', 'Pl. Fernand Cocq 3, Ixelles', 'Provinciestraat 206, Antwerpen', 'Leopoldstraat 57, Antwerpen', 'Korte Gasthuisstraat 31, Antwerpen', 'Groentenmarkt 1, Gent', 'Vleminckveld 68, Antwerpen', 'Lange Gasthuisstraat 5, Antwerpen', 'Museumstraat 2, Antwerpen', 'Wisselstraat 2, Antwerpen', 'Steenbokstraat 37, Antwerpen', 'Oude Koornmarkt 8, Antwerpen', 'Schermersstraat 8, Antwerpen', 'Klapdorp 40, Antwerpen', 'Artsen zonder Grenzenstraat 32, Antwerpen', 'Boomgaardstraat 1, Antwerpen', 'Rue de la Croix 13, Namur', 'Rue Haute Marcelle 17, Namur', 'Rue Haute Marcelle 11, Namur', 'Rue des Carmes 30, Namur', 'Rue Emile Cuvelier 18, Namur', 'Groentenmarkt 1, Gent', 'Vrijdagmarkt 60, Gent', 'Goudstraat 31, Gent', 'Brugsesteenweg 180, Gent', 'Voldersstraat 8, Gent', 'Vlaanderenstraat 24, Gent', 'Kalandeberg 3, Gent', 'Vlamingstraat 25, Brugge', 'Smedenstraat 28, Brugge', 'Wijngaardstraat 8, Brugge', 'Schaarstraat 2, Brugge', 'Doorniksestraat 8, Kortrijk', 'Leiestraat 46, Kortrijk', 'Meensesteenweg 6, Kortrijk', 'Doorniksewijk 116, Kortrijk', 'Rue de la Coupe 24, Mons', 'Rue de la Clef 21, Mons', 'Rue des Bleuets 1/A, Mons', 'Rue Royale 95, Tournai', 'Pl. de Lille 1, Tournai', 'Brusselsestraat 106, Leuven', 'Tiensestraat 276, Leuven', 'Mechelsesteenweg 5B, Leuven', 'Pl. du Marché 20, Liège', 'Rue St Paul 10, Liège', 'Rue des Bouchers 43, Bruxelles', 'Rue des Minimes 7, Bruxelles', 'Rue Théodore Verhaegen 199, Bruxelles', 'Pl. Jourdan 27, Bruxelles' ]
post_codes = [1000, 1040, 1000, 1000, 1000, 1040, 1210, 1702, 1000, 1060, 1933, 1000, 2250, 1000, 1050, 2018, 2000, 2000, 9000, 2000, 2000, 2000, 2000, 2018, 2000, 2000, 2000,  2018, 2018, 5000, 5000, 5000, 5000, 5000, 9000, 9000, 9000, 9000, 9000, 9000, 9000, 8000, 8000, 8000, 8000, 8500, 8500, 8500, 8500, 7000, 7000, 7000, 7500, 7500, 3000, 3000, 3012, 4000, 4000, 1000, 1000, 1060, 1040]

puts 'Creating Original User'
admin =User.create(email:'admin@gmail.com',password:'12345678' , password_confirmation:'12345678')

puts 'Creating bakeries'
open_hour = Time.new(2002, 10, 31, 8, 0, 0)
close_hour = Time.new(2002, 10, 31, 19, 0, 0)

addresses.each_with_index do |address ,index|
  bakery = Bakery.create(name:Faker::Company.name, address:address , post_code:post_codes[index], description:Faker::Lorem.sentence(word_count: 8), opening_hour:open_hour, closing_hour:close_hour,phone_number:Faker::PhoneNumber.cell_phone,user:admin)
end
