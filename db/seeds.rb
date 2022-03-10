# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

User.destroy_all
Bakery.destroy_all
visitor =[true,false]
name = ['Maison Dandoy - Sablon', 'Paul', 'Paul', 'Charli', 'Paul', 'Boulangerie Allemeersch', 'Le Saint Josse Bakery', 'Cake Me Away', 'Panos City Brussel', 'Boulengier', 'Patisserie Millet', 'Le Temps des Tartines', 'Guenther Bakeries Belgium', 'Eric Kayser Grand Place', 'Renard Bakery', 'Bread and Confectionery KLEINBLATT', 'Urban Bakeries Belgium Bvba', 'Goossens', 'Himschoot', 'Lints Antwerp', 'Domestic Bakkerij', 'Bakery Dellafaille Antwerp', 'Koki', 'Domestic', 'Philips Bakery', 'Konditori', 'Framboise: Brood & Patisserie', 'The Bread Nation', 'The Bakery', 'Al keketerie', 'La Maison des Desserts', 'Les Cup inn', 'MIAM! Salon de Cookie', 'Boulangerie Legrand', 'Himschoot', 'Paul', 'De Gentsche Koekedoos', 'Boulangerie Okoro', 'Kultur Bakery', 'Joost Arijs', 'Pain & Compagnie', 'Bakkerij Sint-Paulus', 'bakkerij babylon', 'Bakkerij Carpe Diem', 'Patisserie Schaeverbeke', 'Patisserie Foque', 'Hoornaert', 'Bakkerij De Koker', 'Brood & Banket Hoornaert', 'MilyPat', 'HASHTAG BAKERIES', 'Boulangerie Le Millefeuille', 'Pâtisserie Delhaye', 'Maison Devos', 'Bakkerij Gielis', 'Delrue B & M', 'Boulangerie De Falouche', 'Le Matin Liégeois', 'Pâtisserie Stoffels', 'Logo du marchand,
Le Marmiton', 'Fine Bakery', 'La Relève Bakery', 'Au Vatel', 'Pâtisserie Yasushi Sasaki' , 'Paul', 'Paul', 'Charli', 'Paul', 'Boulangerie Allemeersch', 'Le Saint Josse Bakery', 'Cake Me Away', 'Panos City Brussel', 'Boulengier', 'Patisserie Millet', 'Le Temps des Tartines', 'Guenther Bakeries Belgium', 'Eric Kayser Grand Place', 'Renard Bakery', 'Bread and Confectionery KLEINBLATT', 'Urban Bakeries Belgium Bvba', 'Goossens', 'Himschoot', 'Lints Antwerp', 'Domestic Bakkerij', 'Bakery Dellafaille Antwerp', 'Koki', 'Domestic', 'Philips Bakery', 'Konditori', 'Framboise: Brood & Patisserie', 'The Bread Nation', 'The Bakery', 'Al keketerie', 'La Maison des Desserts', 'Les Cup inn', 'MIAM! Salon de Cookie', 'Boulangerie Legrand', 'Himschoot', 'Paul', 'De Gentsche Koekedoos', 'Boulangerie Okoro', 'Kultur Bakery', 'Joost Arijs', 'Pain & Compagnie', 'Bakkerij Sint-Paulus', 'bakkerij babylon', 'Bakkerij Carpe Diem', 'Patisserie Schaeverbeke', 'Patisserie Foque', 'Hoornaert', 'Bakkerij De Koker', 'Brood & Banket Hoornaert', 'MilyPat', 'HASHTAG BAKERIES', 'Boulangerie Le Millefeuille', 'Pâtisserie Delhaye', 'Maison Devos', 'Bakkerij Gielis', 'Delrue B & M', 'Boulangerie De Falouche', 'Le Matin Liégeois', 'Pâtisserie Stoffels', 'Logo du marchand,
Le Marmiton']
addresses = ['Rue de Rollebeek 50, Bruxelles', 'Rue Froissart 72, Etterbeek', 'Rue des Fripiers 3/5, Bruxelles', 'Rue Sainte-Catherine 34, Bruxelles', 'Rue de l Enseignement 2, Bruxelles', 'Chau. de Wavre 396, Etterbeek', 'Chau. de Louvain 63', 'Saint-Josse-ten-Noode', 'Brusselstraat 279, Dilbeek', 'Rue du Marché Aux Herbes 85, Bruxelles', 'Av. Jean Volders 11, Saint-Gilles', 'Mechelsesteenweg 237, Zaventem', 'Rue du Midi 73, Bruxelles', 'Lammerdries-Oost 34, Olen', 'Rue du Marché Aux Herbes 80, Bruxelles', 'Pl. Fernand Cocq 3, Ixelles', 'Provinciestraat 206, Antwerpen', 'Leopoldstraat 57, Antwerpen', 'Korte Gasthuisstraat 31, Antwerpen', 'Groentenmarkt 1, Gent', 'Vleminckveld 68, Antwerpen', 'Lange Gasthuisstraat 5, Antwerpen', 'Museumstraat 2, Antwerpen', 'Wisselstraat 2, Antwerpen', 'Steenbokstraat 37, Antwerpen', 'Oude Koornmarkt 8, Antwerpen', 'Schermersstraat 8, Antwerpen', 'Klapdorp 40, Antwerpen', 'Artsen zonder Grenzenstraat 32, Antwerpen', 'Boomgaardstraat 1, Antwerpen', 'Rue de la Croix 13, Namur', 'Rue Haute Marcelle 17, Namur', 'Rue Haute Marcelle 11, Namur', 'Rue des Carmes 30, Namur', 'Rue Emile Cuvelier 18, Namur', 'Groentenmarkt 1, Gent', 'Vrijdagmarkt 60, Gent', 'Goudstraat 31, Gent', 'Brugsesteenweg 180, Gent', 'Voldersstraat 8, Gent', 'Vlaanderenstraat 24, Gent', 'Kalandeberg 3, Gent', 'Vlamingstraat 25, Brugge', 'Smedenstraat 28, Brugge', 'Wijngaardstraat 8, Brugge', 'Schaarstraat 2, Brugge', 'Doorniksestraat 8, Kortrijk', 'Leiestraat 46, Kortrijk', 'Meensesteenweg 6, Kortrijk', 'Doorniksewijk 116, Kortrijk', 'Rue de la Coupe 24, Mons', 'Rue de la Clef 21, Mons', 'Rue des Bleuets 1/A, Mons', 'Rue Royale 95, Tournai', 'Pl. de Lille 1, Tournai', 'Brusselsestraat 106, Leuven', 'Tiensestraat 276, Leuven', 'Mechelsesteenweg 5B, Leuven', 'Pl. du Marché 20, Liège', 'Rue St Paul 10, Liège', 'Rue des Bouchers 43, Bruxelles', 'Rue des Minimes 7, Bruxelles', 'Rue Théodore Verhaegen 199, Bruxelles', 'Pl. Jourdan 27, Bruxelles', 'Av. des Franciscains 10, Bruxelles']
post_codes = [1000, 1040, 1000, 1000, 1000, 1040, 1210, 1702, 1000, 1060, 1933, 1000, 2250, 1000, 1050, 2018, 2000, 2000, 9000, 2000, 2000, 2000, 2000, 2018, 2000, 2000, 2000,  2018, 2018, 5000, 5000, 5000, 5000, 5000, 9000, 9000, 9000, 9000, 9000, 9000, 9000, 8000, 8000, 8000, 8000, 8500, 8500, 8500, 8500, 7000, 7000, 7000, 7500, 7500, 3000, 3000, 3012, 4000, 4000, 1000, 1000, 1060, 1040, 1150]
tags = ['vegan','cheap','delicious food', 'fast service', 'friendly','good quality','fresh','healthy','yummy','tasty','gourmet']
pictures = ["https://media-cdn.tripadvisor.com/media/photo-s/11/69/f9/a4/renard-bakery.jpg", "https://images.unsplash.com/photo-1568254183919-78a4f43a2877?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmFrZXJ5fGVufDB8fDB8fA%3D%3D&w=1000&q=80"]
reviews =['good','nice','loved it','nice service','good','nice','loved it','nice service','The best bread ever!!! And super handy that it is delivered to your home !!','Very good bakery. I enjoy the fresh cookies and confiture a lot. Top 👍', ' It was a lot of fun, more than we got and super tasty!! Fantastic service and atmosphere. We will definitely come back! ❤❤❤', ' Very tasty, cheap, friendly. Recommended.','Glad we have a cozy bakery with a wide range again! Great if the sandwiches are still warm on Sunday!','Nice bread, sandwiches and pastries. You can also order breakfast baskets and homemade jam!','Always great products, opening hours could be more convenient. Very friendly and obliging service.','Super tasty pastries !!! And try the croissants with their jam😇😇😇 heavenly!','Very tasty patisserie 👍😃. Tasty cakes mmmmmm👍']
products =['Biscuit','Dutch Baby Pancake','eclair','kringle','bread','bagel','muffin','brownie','cake','pie','tart','Cherry pie','croissant','crepes']
specialities=['Pasteis de nata','cheese cake','chocolate croissant','apple pie','blueberry muffins','Cinnamon Coffee Cake','banana bread']
description = ["Here everything exudes the passion for bread in its purest form. Bread reduced to its essence: flour, water and leaven. Produced with top quality ingredients and the time the dough needs to rest and rise. A bread that regains its essential qualities: tasty, nutritious and healthy.","When the doors open there, our fresh breads, pastries, cakes, ... are waiting for you. Whether you are looking for a bread for every day, a birthday cake, delicious sandwiches or a Christmas pastry. We have it all. Find the nearest point of sale, buy a pastry or bread and let yourself be convinced by our quality." ,"Our top bread goes perfectly with all your bread meals. Do you want to impress your guests? Put it on your party table!","Welcome to our bakery. A world full of goodies with sweet flavors that take you back to a wonderfully nostalgic place or time. We like to be inspired by the vintage American bakery and love pastries that exude something 'tough'. You can order in advance or just walk into our bakery, where you can see us at work. Because we have no secrets or ingredients that should not see the light. We bake just like you would at home: with lots of love and passion and only one goal: 'Bake someone happy!'","Our bakery is also one of the few that still works in a truly traditional way. Delicious breads, excellent cakes and the sweetest delicacies are all presented to you in our bakery. This way we assure you of a high-quality product, every time. You can also visit our bakery for sandwiches and deli , and we will spoil you with delicious chocolate and ice cream ."]

puts 'Creating Original User'
admin =User.create(email:'admin@gmail.com',password:'12345678' , password_confirmation:'12345678')
4.times do
  admin =User.create(email: Faker::Internet.email,password:'12345678' , password_confirmation:'12345678')
end

puts 'Creating bakeries'
open_hour = Time.new(2002, 10, 31, 8, 0, 0)
close_hour = Time.new(2002, 10, 31, 19, 0, 0)

addresses.each_with_index do |address ,index|
  pic = URI.open(pictures.sample)

  tlm = "+32 4#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}"
  bakery = Bakery.create(name:name[index], address:address, post_code:post_codes[index], description:description.sample, opening_hour:open_hour, closing_hour:close_hour, phone_number:tlm, user:admin, pictures:[io: pic, filename:pic])
  3.times do
    tag = Tag.create(category:tags.sample,bakery: bakery)
    user_tag = UserTag.create(user: User.all.sample, tag: tag)
  end
  4.times do
    review = Review.create(bakery: bakery,title:tags.sample, content: reviews.sample, rating:rand(3..5),visitor:visitor.sample,user: User.all.sample )
  end
  4.times do
    product = Product.create(name:products.sample ,speciality:false,bakery: bakery)
  end
    speciality = Product.create(name:specialities.sample ,speciality:true, bakery: bakery)
end
