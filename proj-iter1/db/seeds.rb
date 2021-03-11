# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

fluffys = [{:name => 'Aladdin', :budget => '1000', :remaining_budget => '800', :fluffy_coin => '0'},
    	  {:name => 'The Terminator', :budget => '500', :remaining_budget => '400', :fluffy_coin => '0'},
    	  {:name => 'When Harry Met Sally', :budget => '200', :remaining_budget => '100', :fluffy_coin => '0'},
      	  {:name => 'The Help', :budget => '3000', :remaining_budget => '1300', :fluffy_coin => '0'},
      	  {:name => 'Chocolat', :budget => '1200', :remaining_budget => '500', :fluffy_coin => '0'},
      	  {:name => 'Amelie', :budget => '300', :remaining_budget => '140', :fluffy_coin => '0'},
      	  {:name => '2001: A Space Odyssey', :budget => '400', :remaining_budget => '250', :fluffy_coin => '0'},
      	  {:name => 'The Incredibles', :budget => '100', :remaining_budget => '70', :fluffy_coin => '0'},
      	  {:name => 'Raiders of the Lost Ark', :budget => '50', :remaining_budget => '20', :fluffy_coin => '0'},
      	  {:name => 'Chicken Run', :budget => '600', :remaining_budget => '550', :fluffy_coin => '0'},
  	 ]

fluffys.each do |fluffy|
  Fluffys.create!(fluffy)
end