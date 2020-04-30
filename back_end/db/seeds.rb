# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

Owner.destroy_all 
Property.destroy_all 
Apartment.destroy_all 
Tenant.destroy_all 

owner1 = Owner.create!(name: 'Zach Vella', password: '0000', email: 'vella@gmail.com', phone_number: 8277381998)
owner2 = Owner.create!(name: 'Filip Todoroski', password: '0000', email: 'filiptodoroski@yahoo.com', phone_number: 9890028392)

property1 = Property.create!(owner: owner1,  address: '2527 18th St', city: 'Astoria', state: 'NY', country: 'United States', zip_code: '11102', date_purchased: '01/20/2008', purchased_amount: 10000000, mortgage_payable: 7525000, price_per_unit: 5000, number_of_units: 15, occupied_units: 14, property_type: 'Multi-family', building_size: 100000, year_built: 2005, floors: 3)
property2 = Property.create!(owner: owner1,  address: '2519 34th St', city: 'Astoria', state: 'NY', country: 'United States', zip_code: '11103', date_purchased: '05/18/2011', purchased_amount: 2400000, mortgage_payable: 1300000, price_per_unit: 2300, number_of_units: 8, occupied_units: 8, property_type: 'Multi-family', building_size: 50000, year_built: 2001, floors: 4)
property3 = Property.create!(owner: owner1,  address: '2110 Broadway', city: 'Astoria', state: 'NY', country: 'United States', zip_code: '11106', date_purchased: '11/20/2012', purchased_amount: 4080000, mortgage_payable: 2000000, price_per_unit: 2500, number_of_units: 12, occupied_units: 10, property_type: 'Multi-family', building_size: 40000, year_built: 2008, floors: 4)
property4 = Property.create!(owner: owner1,  address: '2125 24th Ave', city: 'Astoria', state: 'NY', country: 'United States', zip_code: '11102', date_purchased: '02/15/2020', purchased_amount: 6500000, mortgage_payable: 752500, price_per_unit: 3000, number_of_units: 16, occupied_units: 16, property_type: 'Multi-family', building_size: 80000, year_built: 2019, floors: 4)
property5 = Property.create!(owner: owner1,  address: '1222 30th Ave', city: 'Astoria', state: 'NY', country: 'United States', zip_code: '11102', date_purchased: '06/13/2000', purchased_amount: 2300000, mortgage_payable: 1800000, price_per_unit: 2100, number_of_units: 10, occupied_units: 9, property_type: 'Multi-family', building_size: 30000, year_built: 1950, floors:5)

property6 = Property.create!(owner: owner2,  address: '977 Manhattan Ave', city: 'Brooklyn', state: 'NY', country: 'United States', zip_code: '11222', date_purchased: '10/05/2010', purchased_amount: 1000000, mortgage_payable: 330080, price_per_unit: 2400, number_of_units: 10, occupied_units: 10, property_type: 'Multi-family', building_size: 50000, year_built: 1990, floors: 2)
property7 = Property.create!(owner: owner2,  address: '22 Havemeyer St', city: 'Brooklyn', state: 'NY', country: 'United States', zip_code: '11211', date_purchased: '10/10/2009', purchased_amount: 3000000, mortgage_payable: 2300000, price_per_unit: 2000, number_of_units: 9, occupied_units: 8, property_type: 'Multi-family', building_size: 30000, year_built: 2001, floors: 3)
property8 = Property.create!(owner: owner2,  address: '75 Beadel St', city: 'Brooklyn', state: 'NY', country: 'United States', zip_code: '11222', date_purchased: '01/27/2005', purchased_amount: 3250000, mortgage_payable: 1500000, price_per_unit: 2500, number_of_units: 6, occupied_units: 6, property_type: 'Multi-family', building_size: 20000, year_built: 1997, floors: 3)
property9 = Property.create!(owner: owner2,  address: '398 Wythe Ave', city: 'Brooklyn', state: 'NY', country: 'United States', zip_code: '11249', date_purchased: '07/13/2019', purchased_amount: 2850000, mortgage_payable: 2000000, price_per_unit: 1900, number_of_units: 10, occupied_units: 7, property_type: 'Multi-family', building_size: 30000, year_built: 2018, floors: 5)
property10 = Property.create!(owner: owner2,  address: '146 Diamond St', city: 'Brooklyn', state: 'NY', country: 'United States', zip_code: '11222', date_purchased: '05/13/2018', purchased_amount: 1995000, mortgage_payable: 1500000, price_per_unit: 2000, number_of_units: 10, occupied_units: 9, property_type: 'Multi-family', building_size: 40000, year_built: 2017, floors: 5)


# apartment1 = Apartment.create!(name: '1A', property: property1, occupied: , move_in_date:)
# tenant1 = Apartment.create!(name: , password: , email, phone_number: , apartment: )

# 01/20/2008
# Property1
apartment1 = Apartment.create!(name: '1A', property: property1, occupied: true, move_in_date: '11/23/2015')
apartment2 = Apartment.create!(name: '1B', property: property1, occupied: true, move_in_date: '07/19/2015')
apartment3 = Apartment.create!(name: '1C', property: property1, occupied: true, move_in_date: '01/31/2017')
apartment4 = Apartment.create!(name: '1D', property: property1, occupied: true, move_in_date: '01/10/2017')
apartment5 = Apartment.create!(name: '1E', property: property1, occupied: true, move_in_date: '11/02/2018')
apartment6 = Apartment.create!(name: '2A', property: property1, occupied: true, move_in_date: '01/02/2018')
apartment7 = Apartment.create!(name: '2B', property: property1, occupied: true, move_in_date: '07/02/2015')
apartment8 = Apartment.create!(name: '2C', property: property1, occupied: true, move_in_date: '11/02/2018')
apartment9 = Apartment.create!(name: '2D', property: property1, occupied: true, move_in_date: '01/02/2015')
apartment10 = Apartment.create!(name: '2E', property: property1, occupied: true, move_in_date: '01/02/2017')
apartment11 = Apartment.create!(name: '3A', property: property1, occupied: true, move_in_date: '11/02/2018')
apartment12 = Apartment.create!(name: '3B', property: property1, occupied: true, move_in_date: '03/03/2018')
apartment13 = Apartment.create!(name: '3C', property: property1, occupied: true, move_in_date: '05/12/2015')
apartment14 = Apartment.create!(name: '3D', property: property1, occupied: true, move_in_date: '07/20/2017')
apartment15 = Apartment.create!(name: '3E', property: property1)

tenant1 = Tenant.create!(name: 'Elin Johns', password: '0000', email: 'ejohns@yahoo.com', phone_number: 2025550116, apartment: apartment1)
tenant2 = Tenant.create!(name: 'Clement Ali', password: '0000', email: 'cali@yahoo.com', phone_number: 2025550148, apartment: apartment2)
tenant3 = Tenant.create!(name: 'Sunil Peters', password: '0000', email: 'speters@gmail.com', phone_number: 2025550157, apartment: apartment3)
tenant4 = Tenant.create!(name: 'Karolina Newton', password: '0000', email: 'knewton@yahoo.com', phone_number: 2025550117, apartment: apartment4)
tenant5 = Tenant.create!(name: 'Eilish Paul', password: '0000', email: 'epaul@gmail.com', phone_number: 2025550173, apartment: apartment5)
tenant6 = Tenant.create!(name: 'Wilfred Small', password: '0000', email: 'wsmall@yahoo.com', phone_number: 2025550160, apartment: apartment6)
tenant7 = Tenant.create!(name: 'Mohamed Hackett', password: '0000', email: 'mhackett@gmail.com', phone_number: 2025550111, apartment: apartment7)
tenant8 = Tenant.create!(name: 'Yvonne Caldwell', password: '0000', email: 'ycaldwell@yahoo.com', phone_number: 2025550123, apartment: apartment8)
tenant9 = Tenant.create!(name: 'Lacie-Mae Suarez', password: '0000', email: 'lsuarez@gmail.com', phone_number: 2025550165, apartment: apartment9)
tenant10 = Tenant.create!(name: 'Siddharth Mcdonnell', password: '0000', email: 'smcdonnell@yahoo.com', phone_number: 2025550197, apartment: apartment10)
tenant11 = Tenant.create!(name: 'Cally Walls', password: '0000', email: 'cwalls@gmail.com', phone_number: 2025550135, apartment: apartment11)
tenant12 = Tenant.create!(name: 'Rayhaan Hamer', password: '0000', email: 'rhamer@yahoo.com', phone_number: 2025550128, apartment: apartment12)
tenant13 = Tenant.create!(name: 'Tyrell Mcneil', password: '0000', email: 'tmcneil@gmail.com', phone_number: 2025550129, apartment: apartment13)
tenant14 = Tenant.create!(name: 'Astrid Kennedy', password: '0000', email: 'akennedy@yahoo.com', phone_number: 2025550198, apartment: apartment14)

# Property 2 - 2011
apartment16 = Apartment.create!(name: '1A', property: property2, occupied: true, move_in_date: '11/23/2012')
apartment17 = Apartment.create!(name: '1B', property: property2, occupied: true, move_in_date: '12/19/2012')
apartment18 = Apartment.create!(name: '2A', property: property2, occupied: true, move_in_date: '12/19/2012')
apartment19 = Apartment.create!(name: '2B', property: property2, occupied: true, move_in_date: '01/20/2012')
apartment20 = Apartment.create!(name: '3A', property: property2, occupied: true, move_in_date: '01/02/2013')
apartment21 = Apartment.create!(name: '3B', property: property2, occupied: true, move_in_date: '01/05/2013')
apartment22 = Apartment.create!(name: '4A', property: property2, occupied: true, move_in_date: '07/07/2013')
apartment23 = Apartment.create!(name: '4B', property: property2, occupied: true, move_in_date: '11/02/2013')


tenant15 = Tenant.create!(name: 'Ty Rivas', password: '0000', email: 'trivas@yahoo.com', phone_number: 9725382542, apartment: apartment16)
tenant16 = Tenant.create!(name: 'Tahmina Flynn', password: '0000', email: 'tflynn@yahoo.com', phone_number: 5418311372, apartment: apartment17)
tenant17 = Tenant.create!(name: 'Jenny Hook', password: '0000', email: 'jhook@gmail.com', phone_number: 5056508295, apartment: apartment18)
tenant18 = Tenant.create!(name: 'Stephen Black', password: '0000', email: 'sblack@yahoo.com', phone_number: 4806779177, apartment: apartment19)
tenant19 = Tenant.create!(name: 'Donnell Noble', password: '0000', email: 'dnoble@gmail.com', phone_number: 6904210430, apartment: apartment20)
tenant20 = Tenant.create!(name: 'Aya Jacobs', password: '0000', email: 'ajacobs@yahoo.com', phone_number: 3282446320, apartment: apartment21)
tenant21 = Tenant.create!(name: 'Rehan Bateman', password: '0000', email: 'rbateman@gmail.com', phone_number: 9099926894, apartment: apartment22)
tenant22 = Tenant.create!(name: 'Nicky Higgs', password: '0000', email: 'nhiggs@yahoo.com', phone_number: 6588112161, apartment: apartment23)


# Property 3 - 2012 | apartment23 tenant22 | 12 units  10 occupied 4 floors 
apartment24 = Apartment.create!(name: '1A', property: property3, occupied: true, move_in_date: '01/01/2013')
apartment25 = Apartment.create!(name: '1B', property: property3, occupied: true, move_in_date: '01/05/2013')
apartment26 = Apartment.create!(name: '1C', property: property3, occupied: true, move_in_date: '01/06/2013')
apartment27 = Apartment.create!(name: '2A', property: property3, occupied: true, move_in_date: '01/20/2013')
apartment28 = Apartment.create!(name: '2B', property: property3, occupied: true, move_in_date: '02/02/2013')
apartment29 = Apartment.create!(name: '2C', property: property3, occupied: true, move_in_date: '02/05/2013')
apartment30 = Apartment.create!(name: '3A', property: property3, occupied: true, move_in_date: '02/07/2013')
apartment31 = Apartment.create!(name: '3B', property: property3, occupied: true, move_in_date: '02/22/2013')
apartment32 = Apartment.create!(name: '3C', property: property3, occupied: true, move_in_date: '02/28/2013')
apartment33 = Apartment.create!(name: '4A', property: property3, occupied: true, move_in_date: '03/02/2013')
apartment34 = Apartment.create!(name: '4B', property: property3)
apartment35 = Apartment.create!(name: '4C', property: property3)


tenant23 = Tenant.create!(name: 'Marilyn Rigby', password: '0000', email: 'mrigby@yahoo.com', phone_number: 8534474251, apartment: apartment24)
tenant24 = Tenant.create!(name: 'Riley Dominguez', password: '0000', email: 'rdominguez@yahoo.com', phone_number: 3245509201, apartment: apartment25)
tenant25 = Tenant.create!(name: 'Farhaan Stacey', password: '0000', email: 'fstacey@gmail.com', phone_number: 5356929598, apartment: apartment26)
tenant26 = Tenant.create!(name: 'Milton Diaz', password: '0000', email: 'mdiaz@yahoo.com', phone_number: 9117928294, apartment: apartment27)
tenant27 = Tenant.create!(name: 'Donell Carty', password: '0000', email: 'dcarty@gmail.com', phone_number: 9598621147, apartment: apartment28)
tenant28 = Tenant.create!(name: 'Sol Villarreal', password: '0000', email: 'svillarreal@yahoo.com', phone_number: 9146748122, apartment: apartment29)
tenant29 = Tenant.create!(name: 'Alton Enriquez', password: '0000', email: 'aenriquez@gmail.com', phone_number: 4984946455, apartment: apartment30)
tenant30 = Tenant.create!(name: 'Noor Derrick', password: '0000', email: 'nderrick@yahoo.com', phone_number: 9802160114, apartment: apartment31)
tenant31 = Tenant.create!(name: 'Luka Parks', password: '0000', email: 'lparks@yahoo.com', phone_number: 7995649647, apartment: apartment32)
tenant32 = Tenant.create!(name: 'Ariadne Robbins', password: '0000', email: 'arobbins@yahoo.com', phone_number: 4242584402, apartment: apartment33)

# Property 4 - 2020 | apartment35 tenant32 | 16 units  16 occupied 4 floors 
apartment36 = Apartment.create!(name: '1A', property: property4, occupied: true, move_in_date: '03/02/2020')
apartment37 = Apartment.create!(name: '1B', property: property4, occupied: true, move_in_date: '03/03/2020')
apartment38 = Apartment.create!(name: '1C', property: property4, occupied: true, move_in_date: '03/04/2020')
apartment39 = Apartment.create!(name: '1D', property: property4, occupied: true, move_in_date: '03/04/2020')
apartment40 = Apartment.create!(name: '2A', property: property4, occupied: true, move_in_date: '03/04/2020')
apartment41 = Apartment.create!(name: '2B', property: property4, occupied: true, move_in_date: '03/04/2020')
apartment42 = Apartment.create!(name: '2C', property: property4, occupied: true, move_in_date: '03/04/2020')
apartment43 = Apartment.create!(name: '2D', property: property4, occupied: true, move_in_date: '03/25/2020')
apartment44 = Apartment.create!(name: '3A', property: property4, occupied: true, move_in_date: '04/03/2020')
apartment45 = Apartment.create!(name: '3B', property: property4, occupied: true, move_in_date: '04/04/2020')
apartment46 = Apartment.create!(name: '3C', property: property4, occupied: true, move_in_date: '04/05/2020')
apartment47 = Apartment.create!(name: '3D', property: property4, occupied: true, move_in_date: '04/12/2020')
apartment48 = Apartment.create!(name: '4A', property: property4, occupied: true, move_in_date: '04/17/2020')
apartment49 = Apartment.create!(name: '4B', property: property4, occupied: true, move_in_date: '04/22/2020')
apartment50 = Apartment.create!(name: '4C', property: property4, occupied: true, move_in_date: '04/28/2020')
apartment51 = Apartment.create!(name: '4D', property: property4, occupied: true, move_in_date: '05/02/2020')


tenant33 = Tenant.create!(name: 'Paris Forster', password: '0000', email: 'pforster@yahoo.com', phone_number: 4646551282, apartment: apartment36)
tenant34 = Tenant.create!(name: 'Aedan Talley', password: '0000', email: 'atalley@yahoo.com', phone_number: 9705889835, apartment: apartment37)
tenant35 = Tenant.create!(name: 'Euan Barrera', password: '0000', email: 'ebarrera@gmail.com', phone_number: 2709112921, apartment: apartment38)
tenant36 = Tenant.create!(name: 'Bridget Salt', password: '0000', email: 'bsalt@yahoo.com', phone_number: 3292638038, apartment: apartment39)
tenant37 = Tenant.create!(name: 'Henna Markham', password: '0000', email: 'hmarkham@gmail.com', phone_number: 8144198018, apartment: apartment40)
tenant38 = Tenant.create!(name: 'Yasemin Warren', password: '0000', email: 'ywarren@yahoo.com', phone_number: 9502660141, apartment: apartment41)
tenant39 = Tenant.create!(name: 'Kendra Ware', password: '0000', email: 'kware@gmail.com', phone_number: 7279256056, apartment: apartment42)
tenant40 = Tenant.create!(name: 'Susan Vickers', password: '0000', email: 'svickers@yahoo.com', phone_number: 5905031271, apartment: apartment43)
tenant41 = Tenant.create!(name: 'Shaurya Greenaway', password: '0000', email: 'sgreenaway@yahoo.com', phone_number: 4545611763, apartment: apartment44)
tenant42 = Tenant.create!(name: 'Owen Banks', password: '0000', email: 'obanks@yahoo.com', phone_number: 3634212562, apartment: apartment45)
tenant43 = Tenant.create!(name: 'Fionnuala Hayward', password: '0000', email: 'fhayward@gmail.com', phone_number: 6587003413, apartment: apartment46)
tenant44 = Tenant.create!(name: 'Kodi Nelson', password: '0000', email: 'knelson@yahoo.com', phone_number: 9608876764, apartment: apartment47)
tenant45 = Tenant.create!(name: 'Bryony May', password: '0000', email: 'bmay@gmail.com', phone_number: 6284280451, apartment: apartment48)
tenant46 = Tenant.create!(name: 'Dina Bonilla', password: '0000', email: 'dbonilla@yahoo.com', phone_number: 5316785667, apartment: apartment49)
tenant47 = Tenant.create!(name: 'Lidia Baxter', password: '0000', email: 'lbaxter@yahoo.com', phone_number: 3696238690, apartment: apartment50)
tenant48 = Tenant.create!(name: 'Vinnie Daniel', password: '0000', email: 'vdaniel@yahoo.com', phone_number: 3648829501, apartment: apartment51)

# Property 5 - 2000 | apartment51 tenant48 | 10 units  9 occupied 5 floors 
apartment52 = Apartment.create!(name: '1A', property: property5, occupied: true, move_in_date: '03/02/2000')
apartment53 = Apartment.create!(name: '1B', property: property5, occupied: true, move_in_date: '03/03/2000')
apartment54 = Apartment.create!(name: '2A', property: property5, occupied: true, move_in_date: '03/10/2000')
apartment55 = Apartment.create!(name: '2B', property: property5, occupied: true, move_in_date: '03/10/2000')
apartment56 = Apartment.create!(name: '3A', property: property5, occupied: true, move_in_date: '03/14/2000')
apartment57 = Apartment.create!(name: '3B', property: property5, occupied: true, move_in_date: '03/24/2001')
apartment58 = Apartment.create!(name: '4A', property: property5, occupied: true, move_in_date: '06/04/2001')
apartment59 = Apartment.create!(name: '4B', property: property5, occupied: true, move_in_date: '07/25/2001')
apartment60 = Apartment.create!(name: '5A', property: property5, occupied: true, move_in_date: '09/03/2001')
apartment61 = Apartment.create!(name: '5B', property: property5)


tenant49 = Tenant.create!(name: 'Monica Craig', password: '0000', email: 'mcraig@yahoo.com', phone_number: 5936695978, apartment: apartment52)
tenant50 = Tenant.create!(name: 'Nour Zhang', password: '0000', email: 'nzhang@yahoo.com', phone_number: 9728474445, apartment: apartment53)
tenant51 = Tenant.create!(name: 'Harrison Frame', password: '0000', email: 'hframe@gmail.com', phone_number: 5408240175, apartment: apartment54)
tenant52 = Tenant.create!(name: 'Habiba Flowers', password: '0000', email: 'hflowers@yahoo.com', phone_number: 9789828325, apartment: apartment55)
tenant53 = Tenant.create!(name: 'Maisey Cotton', password: '0000', email: 'mcotton@gmail.com', phone_number: 2796902760, apartment: apartment56)
tenant54 = Tenant.create!(name: 'Rory Allison', password: '0000', email: 'ralisson@yahoo.com', phone_number: 9966221518, apartment: apartment57)
tenant55 = Tenant.create!(name: 'Jamaal Hayes', password: '0000', email: 'jhayes@gmail.com', phone_number: 5468040314, apartment: apartment58)
tenant56 = Tenant.create!(name: 'Anish Martinez', password: '0000', email: 'amartinez@yahoo.com', phone_number: 2217082287, apartment: apartment59)
tenant57 = Tenant.create!(name: 'Charlton Hibbert', password: '0000', email: 'chibbert@yahoo.com', phone_number: 2065052362, apartment: apartment60)


# #########################################################################################################################################################
# #########################################################################################################################################################
# #########################################################################################################################################################
# #########################################################################################################################################################
# #########################################################################################################################################################
# #########################################################################################################################################################
# #########################################################################################################################################################
# #########################################################################################################################################################

# Property 6 - 2010 | apartment61 tenant57 | 10 units 10 occupied 2 floors
apartment62 = Apartment.create!(name: '1A', property: property6, occupied: true, move_in_date: '11/23/2010')
apartment63 = Apartment.create!(name: '1B', property: property6, occupied: true, move_in_date: '11/23/2010')
apartment64 = Apartment.create!(name: '1C', property: property6, occupied: true, move_in_date: '11/23/2010')
apartment65 = Apartment.create!(name: '1D', property: property6, occupied: true, move_in_date: '11/23/2010')
apartment66 = Apartment.create!(name: '1E', property: property6, occupied: true, move_in_date: '11/25/2010')
apartment67 = Apartment.create!(name: '2A', property: property6, occupied: true, move_in_date: '11/25/2010')
apartment68 = Apartment.create!(name: '2B', property: property6, occupied: true, move_in_date: '12/01/2010')
apartment69 = Apartment.create!(name: '2C', property: property6, occupied: true, move_in_date: '12/02/2010')
apartment70 = Apartment.create!(name: '2D', property: property6, occupied: true, move_in_date: '12/02/2010')
apartment71 = Apartment.create!(name: '2E', property: property6, occupied: true, move_in_date: '12/05/2010')


tenant58 = Tenant.create!(name: 'Grover Singleton', password: '0000', email: 'gsingleton@yahoo.com', phone_number: 8465143435, apartment: apartment62)
tenant59 = Tenant.create!(name: 'Caden Olson', password: '0000', email: 'colson@yahoo.com', phone_number: 7869569988, apartment: apartment63)
tenant60 = Tenant.create!(name: 'Darcy Acevedo', password: '0000', email: 'dacevedo@gmail.com', phone_number: 4036027753, apartment: apartment64)
tenant61 = Tenant.create!(name: 'Iain Parry', password: '0000', email: 'iparry@yahoo.com', phone_number: 4596218561, apartment: apartment65)
tenant62 = Tenant.create!(name: 'India Gutierrez', password: '0000', email: 'igutierrez@gmail.com', phone_number: 5639830621, apartment: apartment66)
tenant63 = Tenant.create!(name: 'Clarissa Henson', password: '0000', email: 'chenson@yahoo.com', phone_number: 3216183567, apartment: apartment67)
tenant64 = Tenant.create!(name: 'Albie Bull', password: '0000', email: 'abull@gmail.com', phone_number: 4588266105, apartment: apartment68)
tenant65 = Tenant.create!(name: 'Chay Bob', password: '0000', email: 'cbob@yahoo.com', phone_number: 4855783288, apartment: apartment69)
tenant66 = Tenant.create!(name: 'Jagdeep Patel', password: '0000', email: 'jpatel@gmail.com', phone_number: 4405832842, apartment: apartment70)
tenant67 = Tenant.create!(name: 'Diya Hyde', password: '0000', email: 'dhyde@yahoo.com', phone_number: 7355365959, apartment: apartment71)



# # Property 7 - 2009| apartment71 tenant67 | 9 units 8 occipied 3 floors 
apartment72 = Apartment.create!(name: '1A', property: property7, occupied: true, move_in_date: '03/23/2010')
apartment73 = Apartment.create!(name: '1B', property: property7, occupied: true, move_in_date: '03/23/2010')
apartment74 = Apartment.create!(name: '1C', property: property7, occupied: true, move_in_date: '03/25/2010')
apartment75 = Apartment.create!(name: '2A', property: property7, occupied: true, move_in_date: '03/26/2010')
apartment76 = Apartment.create!(name: '2B', property: property7, occupied: true, move_in_date: '03/26/2010')
apartment77 = Apartment.create!(name: '2C', property: property7, occupied: true, move_in_date: '03/27/2010')
apartment78 = Apartment.create!(name: '3A', property: property7, occupied: true, move_in_date: '03/27/2010')
apartment79 = Apartment.create!(name: '3B', property: property7, occupied: true, move_in_date: '11/02/2010')
apartment80 = Apartment.create!(name: '3C', property: property7)


tenant68 = Tenant.create!(name: 'Nur Lamb', password: '0000', email: 'nlamb@yahoo.com', phone_number: 2577596026, apartment: apartment72)
tenant69 = Tenant.create!(name: 'Amandeep Kidd', password: '0000', email: 'akidd@yahoo.com', phone_number: 6939417919, apartment: apartment73)
tenant70 = Tenant.create!(name: 'Abiha Estes', password: '0000', email: 'aestes@gmail.com', phone_number: 7162872646, apartment: apartment74)
tenant71 = Tenant.create!(name: 'Rihanna Zamora', password: '0000', email: 'rzamora@yahoo.com', phone_number: 8355283906, apartment: apartment75)
tenant72 = Tenant.create!(name: 'Carl Davenport', password: '0000', email: 'cdavenport@gmail.com', phone_number: 4077820278, apartment: apartment76)
tenan73 = Tenant.create!(name: 'Tomi Craft', password: '0000', email: 'tcraft@yahoo.com', phone_number: 8913442238, apartment: apartment77)
tenant74 = Tenant.create!(name: 'Aqeel Campos', password: '0000', email: 'acampos@gmail.com', phone_number: 9755935612, apartment: apartment78)
tenant75 = Tenant.create!(name: 'Fintan Cox', password: '0000', email: 'fcox@yahoo.com', phone_number: 9306390926, apartment: apartment79)


# Property 8 - 2005 | apartment80 tenant75 | 6 units  6 occupied 3 floors 
apartment81 = Apartment.create!(name: '1A', property: property8, occupied: true, move_in_date: '04/04/2005')
apartment82 = Apartment.create!(name: '1B', property: property8, occupied: true, move_in_date: '04/05/2005')
apartment83 = Apartment.create!(name: '2A', property: property8, occupied: true, move_in_date: '04/06/2005')
apartment84 = Apartment.create!(name: '2B', property: property8, occupied: true, move_in_date: '04/20/2005')
apartment85 = Apartment.create!(name: '3A', property: property8, occupied: true, move_in_date: '05/02/2005')
apartment86 = Apartment.create!(name: '3B', property: property8, occupied: true, move_in_date: '05/05/2005')


tenant76 = Tenant.create!(name: 'Riaz Miles', password: '0000', email: 'rmiles@yahoo.com', phone_number: 6395214406, apartment: apartment81)
tenant77 = Tenant.create!(name: 'Roy Mcmillan', password: '0000', email: 'rmcmillan@yahoo.com', phone_number: 3357579306, apartment: apartment82)
tenant78 = Tenant.create!(name: 'Talitha Bright', password: '0000', email: 'tbright@gmail.com', phone_number: 2365620557, apartment: apartment83)
tenant79 = Tenant.create!(name: 'Aimie Woods', password: '0000', email: 'aboods@yahoo.com', phone_number: 9962830850, apartment: apartment84)
tenant80 = Tenant.create!(name: 'Omari Lees', password: '0000', email: 'olees@gmail.com', phone_number: 3755501335, apartment: apartment85)
tenant81 = Tenant.create!(name: 'Aalia Hussain', password: '0000', email: 'ahussain@yahoo.com', phone_number: 7726894999, apartment: apartment86)


# Property 9 - 2019 | apartment86 tenant81 | 10 units  7 occupied 5 floors 
apartment87 = Apartment.create!(name: '1A', property: property9, occupied: true, move_in_date: '09/02/2019')
apartment88 = Apartment.create!(name: '1B', property: property9, occupied: true, move_in_date: '09/09/2019')
apartment89 = Apartment.create!(name: '2A', property: property9, occupied: true, move_in_date: '09/11/2019')
apartment90 = Apartment.create!(name: '2B', property: property9, occupied: true, move_in_date: '09/20/2019')
apartment91 = Apartment.create!(name: '3A', property: property9, occupied: true, move_in_date: '11/04/2019')
apartment92 = Apartment.create!(name: '3B', property: property9, occupied: true, move_in_date: '11/04/2019')
apartment93 = Apartment.create!(name: '4A', property: property9, occupied: true, move_in_date: '11/24/2019')
apartment94 = Apartment.create!(name: '4B', property: property9)
apartment95 = Apartment.create!(name: '5A', property: property9)
apartment96 = Apartment.create!(name: '5B', property: property9)


tenant82 = Tenant.create!(name: 'Jim Mcgregor', password: '0000', email: 'jmcgregor@yahoo.com', phone_number: 3423446753, apartment: apartment87)
tenant83 = Tenant.create!(name: 'Amanpreet Enriquez', password: '0000', email: 'aenriquez@yahoo.com', phone_number: 2202684832, apartment: apartment88)
tenant84 = Tenant.create!(name: 'Zakaria Griffiths', password: '0000', email: 'zgriffiths@gmail.com', phone_number: 9014155125, apartment: apartment89)
tenant85 = Tenant.create!(name: 'Nolan Wilder', password: '0000', email: 'nwilder@yahoo.com', phone_number: 8167762146, apartment: apartment90)
tenant86 = Tenant.create!(name: 'Konnor Le', password: '0000', email: 'kle@gmail.com', phone_number: 7693460445, apartment: apartment91)
tenant87 = Tenant.create!(name: 'Shelby Smart', password: '0000', email: 'ssmart@yahoo.com', phone_number: 4418894930, apartment: apartment92)
tenant88 = Tenant.create!(name: 'Donovan Ramsey', password: '0000', email: 'dramsey@gmail.com', phone_number: 2053430970, apartment: apartment93)

# Property 10 - 2018 | apartment96 tenant88 | 10 units  9 occupied 5 floors 
apartment97 = Apartment.create!(name: '1A', property: property10, occupied: true, move_in_date: '09/02/2018')
apartment98 = Apartment.create!(name: '1B', property: property10, occupied: true, move_in_date: '09/09/2018')
apartment99 = Apartment.create!(name: '2A', property: property10, occupied: true, move_in_date: '09/10/2018')
apartment100 = Apartment.create!(name: '2B', property: property10, occupied: true, move_in_date: '09/10/2018')
apartment101 = Apartment.create!(name: '3A', property: property10, occupied: true, move_in_date: '09/14/2018')
apartment102 = Apartment.create!(name: '3B', property: property10, occupied: true, move_in_date: '01/24/2019')
apartment103 = Apartment.create!(name: '4A', property: property10, occupied: true, move_in_date: '02/04/2019')
apartment104 = Apartment.create!(name: '4B', property: property10, occupied: true, move_in_date: '02/25/2019')
apartment105 = Apartment.create!(name: '5A', property: property10, occupied: true, move_in_date: '02/25/2019')
apartment106 = Apartment.create!(name: '5B', property: property10)


tenant89 = Tenant.create!(name: 'Shamas Dupont', password: '0000', email: 'sdupont@yahoo.com', phone_number: 6995018356, apartment: apartment97)
tenant90 = Tenant.create!(name: 'Demi Ortiz', password: '0000', email: 'dortiz@yahoo.com', phone_number: 9927582439, apartment: apartment98)
tenant91 = Tenant.create!(name: 'Connah Leech', password: '0000', email: 'cleech@gmail.com', phone_number: 9138534066, apartment: apartment99)
tenant92 = Tenant.create!(name: 'Sanjeev Petty', password: '0000', email: 'spetty@yahoo.com', phone_number: 5582066225, apartment: apartment100)
tenant93 = Tenant.create!(name: 'Kezia Norton', password: '0000', email: 'knorton@gmail.com', phone_number: 8444069035, apartment: apartment101)
tenant94 = Tenant.create!(name: 'Umer Summers', password: '0000', email: 'usummers@yahoo.com', phone_number: 4695803424, apartment: apartment102)
tenant95 = Tenant.create!(name: 'Nellie Todd', password: '0000', email: 'ntodd@gmail.com', phone_number: 7275806056, apartment: apartment103)
tenant96 = Tenant.create!(name: 'Aaran Khan', password: '0000', email: 'akhan@yahoo.com', phone_number: 3839531380, apartment: apartment104)
tenant97= Tenant.create!(name: 'Carole Baskin', password: '0000', email: 'cbaskin@yahoo.com', phone_number: 3097982238, apartment: apartment105)



# Adding images
property1.images.attach(io: File.open(Rails.root.join('images', 'p1', 'image1.jpg')), filename: 'image1.jpg', content_type: 'image/jpg')

property1.images.attach(io: File.open(Rails.root.join('images', 'p1', 'image2.jpg')), filename: 'image2.jpg', content_type: "image/jpg")
property1.images.attach(io: File.open(Rails.root.join('images', 'p1', 'image3.jpg')), filename: 'image3.jpg', content_type: "image/jpg")
property1.images.attach(io: File.open(Rails.root.join('images', 'p1', 'image4.jpg')), filename: 'image4.jpg', content_type: "image/jpg")

property2.images.attach(io: File.open(Rails.root.join('images', 'p2', 'image5.jpg')), filename: 'image5.jpg', content_type: "image/jpg")
property2.images.attach(io: File.open(Rails.root.join('images', 'p2', 'image6.jpg')), filename: 'image6.jpg', content_type: "image/jpg")
property2.images.attach(io: File.open(Rails.root.join('images', 'p2', 'image7.jpg')), filename: 'image7.jpg', content_type: "image/jpg")
property2.images.attach(io: File.open(Rails.root.join('images', 'p2', 'image8.jpg')), filename: 'image8.jpg', content_type: "image/jpg")

property3.images.attach(io: File.open(Rails.root.join('images', 'p3', 'image9.jpg')), filename: 'image9.jpg', content_type: "image/jpg")
property3.images.attach(io: File.open(Rails.root.join('images', 'p3', 'image10.jpg')), filename: 'image10.jpg', content_type: "image/jpg")
property3.images.attach(io: File.open(Rails.root.join('images', 'p3', 'image11.jpg')), filename: 'image11.jpg', content_type: "image/jpg")
property3.images.attach(io: File.open(Rails.root.join('images', 'p3', 'image12.jpg')), filename: 'image12.jpg', content_type: "image/jpg")

property4.images.attach(io: File.open(Rails.root.join('images', 'p4', 'image13.jpg')), filename: 'image13.jpg', content_type: "image/jpg")
property4.images.attach(io: File.open(Rails.root.join('images', 'p4', 'image14.jpg')), filename: 'image14.jpg', content_type: "image/jpg")
property4.images.attach(io: File.open(Rails.root.join('images', 'p4', 'image15.jpg')), filename: 'image15.jpg', content_type: "image/jpg")
property4.images.attach(io: File.open(Rails.root.join('images', 'p4', 'image16.jpg')), filename: 'image16.jpg', content_type: "image/jpg")

property5.images.attach(io: File.open(Rails.root.join('images', 'p5', 'image17.jpg')), filename: 'image17.jpg', content_type: "image/jpg")
property5.images.attach(io: File.open(Rails.root.join('images', 'p5', 'image18.jpg')), filename: 'image18.jpg', content_type: "image/jpg")
property5.images.attach(io: File.open(Rails.root.join('images', 'p5', 'image19.jpg')), filename: 'image19.jpg', content_type: "image/jpg")
property5.images.attach(io: File.open(Rails.root.join('images', 'p5', 'image20.jpg')), filename: 'image20.jpg', content_type: "image/jpg")

property6.images.attach(io: File.open(Rails.root.join('images', 'p6', 'image21.jpg')), filename: 'image21.jpg', content_type: "image/jpg")
property6.images.attach(io: File.open(Rails.root.join('images', 'p6', 'image22.jpg')), filename: 'image22.jpg', content_type: "image/jpg")
property6.images.attach(io: File.open(Rails.root.join('images', 'p6', 'image23.jpg')), filename: 'image23.jpg', content_type: "image/jpg")
property6.images.attach(io: File.open(Rails.root.join('images', 'p6', 'image24.jpg')), filename: 'image24.jpg', content_type: "image/jpg")

property7.images.attach(io: File.open(Rails.root.join('images', 'p7', 'image25.jpg')), filename: 'image25.jpg', content_type: "image/jpg")
property7.images.attach(io: File.open(Rails.root.join('images', 'p7', 'image26.jpg')), filename: 'image26.jpg', content_type: "image/jpg")
property7.images.attach(io: File.open(Rails.root.join('images', 'p7', 'image27.jpg')), filename: 'image27.jpg', content_type: "image/jpg")
property7.images.attach(io: File.open(Rails.root.join('images', 'p7', 'image28.jpg')), filename: 'image28.jpg', content_type: "image/jpg")

property8.images.attach(io: File.open(Rails.root.join('images', 'p8', 'image29.jpg')), filename: 'image29.jpg', content_type: "image/jpg")
property8.images.attach(io: File.open(Rails.root.join('images', 'p8', 'image30.jpg')), filename: 'image30.jpg', content_type: "image/jpg")
property8.images.attach(io: File.open(Rails.root.join('images', 'p8', 'image31.jpg')), filename: 'image31.jpg', content_type: "image/jpg")
property8.images.attach(io: File.open(Rails.root.join('images', 'p8', 'image32.jpg')), filename: 'image32.jpg', content_type: "image/jpg")

property9.images.attach(io: File.open(Rails.root.join('images', 'p9', 'image33.jpg')), filename: 'image33.jpg', content_type: "image/jpg")
property9.images.attach(io: File.open(Rails.root.join('images', 'p9', 'image34.jpg')), filename: 'image34.jpg', content_type: "image/jpg")
property9.images.attach(io: File.open(Rails.root.join('images', 'p9', 'image35.jpg')), filename: 'image35.jpg', content_type: "image/jpg")
property9.images.attach(io: File.open(Rails.root.join('images', 'p9', 'image36.jpg')), filename: 'image36.jpg', content_type: "image/jpg")

property10.images.attach(io: File.open(Rails.root.join('images', 'p10', 'image37.jpg')), filename: 'image37.jpg', content_type: "image/jpg")
property10.images.attach(io: File.open(Rails.root.join('images', 'p10', 'image38.jpg')), filename: 'image38.jpg', content_type: "image/jpg")
property10.images.attach(io: File.open(Rails.root.join('images', 'p10', 'image39.jpg')), filename: 'image39.jpg', content_type: "image/jpg")
property10.images.attach(io: File.open(Rails.root.join('images', 'p10', 'image40.jpg')), filename: 'image40.jpg', content_type: "image/jpg")