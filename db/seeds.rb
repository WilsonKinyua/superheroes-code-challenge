# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# create heroes, powers, and hero_powers records
hero1 = Hero.create(name: "Clark Kent",super_name: "Superman")
hero2 = Hero.create(name: "Bruce Wayne",super_name: "Batman")
hero3 = Hero.create(name: "Peter Parker",super_name: "Spiderman")
hero4 = Hero.create(name: "Tony Stark",super_name: "Ironman")
hero5 = Hero.create(name: "Steve Rogers",super_name: "Captain America")

power1 = Power.create(name: "Super Strength", description: "Superman can lift 100 tons")
power2 = Power.create(name: "Super Speed", description: "Superman can run at 670 mph")
power3 = Power.create(name: "Super Hearing", description: "Superman can hear a pin drop from 100 miles away")
power4 = Power.create(name: "Super Vision", description: "Superman can see 100 miles away")
power5 = Power.create(name: "Super Breath", description: "Superman can blow a hurricane")


HeroPower.create(hero_id: hero1.id, power_id: power1.id, strength: "Average")
HeroPower.create(hero_id: hero1.id, power_id: power2.id, strength: "Weak")
HeroPower.create(hero_id: hero1.id, power_id: power3.id, strength: "Average")
HeroPower.create(hero_id: hero1.id, power_id: power4.id, strength: "Strong")
HeroPower.create(hero_id: hero1.id, power_id: power5.id, strength: "Weak")

