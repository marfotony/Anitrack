# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cow_colors  = [ "white","brown","black" ]
init_weight = [ 30, 40, 20, 80, 15, 34 ]
status      = [ "Good", "Bad", "Unknown" ]
temp        = [ "38", "39", "36" ]



100.times do |ele|
    Cow.create([

                  {
                    cow_owner: "Finney",
                    date_of_birth: "23th June 2016",
                    weight: init_weight.sample,
                    color: cow_colors.sample,
                    tag_number: "F#{(ele*3) + 1}83#{ele}",
                    temperature: temp.sample,
                    status: status.sample,
                    farmer_id: 2,
                    vet_officers_id: 2
                  }

              ])
end
