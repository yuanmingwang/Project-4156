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

events = [{:name => 'Basketball tournament', :location => 'Dodge gym', :interests => 'Sports', :budget => '100', :frequency_of_entertainment => 'twice'},
    	  {:name => 'Book club', :location => 'Butler library', :interests => 'Reading', :budget => '50', :frequency_of_entertainment => 'thrice'},
          {:name => 'Speed Friending', :location => 'Mudd Building', :interests => 'New student', :budget => '10', :frequency_of_entertainment => 'twice'},
          {:name => 'Hackathon', :location => 'Business school', :interests => 'Technology', :budget => '20', :frequency_of_entertainment => 'once'},
          {:name => 'Yoga', :location => 'Low stairs', :interests => 'Fitness', :budget => '10', :frequency_of_entertainment => 'twice'},
          {:name => 'Sleep hygiene', :location => 'Avery library', :interests => 'PDL', :budget => '5', :frequency_of_entertainment => 'twice'},
          {:name => 'Dance competition', :location => 'Miller theatre', :interests => 'Dance', :budget => '60', :frequency_of_entertainment => 'multiple'},
          {:name => 'Music by Columbia', :location => 'Hewitt hall', :interests => 'Music', :budget => '50', :frequency_of_entertainment => 'twice'},
          {:name => 'Library meetup', :location => 'Science and Engineering Library', :interests => 'Reading', :budget => '10', :frequency_of_entertainment => 'once'},
          {:name => 'Fireside chat with alumni', :location => 'Davis auditorium', :interests => 'Meetup', :budget => '0', :frequency_of_entertainment => 'thrice'},
  	 ]

fluffys.each do |fluffy|
  Fluffys.create!(fluffy)
end

events.each do |event|
  Events.create!(event)
end