class Fluffys < ActiveRecord::Base
    def self.update_fluffy_coin 
        @fluffy = Fluffys.all
        @fluffy.each do |fluffy|
            if fluffy.fluffy_coin.to_f == 0
                fluffy.fluffy_coin = (fluffy.fluffy_coin.to_f + (100 * ((fluffy.budget.to_f - fluffy.remaining_budget.to_f)/fluffy.budget.to_f))).round(2)
                fluffy.save
            end
        end
    end
    def self.reset_fluffy_coin
        @fluffy = Fluffys.all
        @fluffy.each do |fluffy|
            if fluffy.fluffy_coin.to_f != 0
                fluffy.fluffy_coin = 0
                fluffy.save
            end
        end
    end
    
    def self.run_recommendation
        #Returns all events that are recommended
        #require 'pycall'
        @events = Events.all
        @result = "bye"
        print("Values set")
        
        #Sample py code successfully runs!
        #hello = "hello"
        @result = "hello"
        print(@result)
        
        #Using dummy variables to illustrate output from ML model
        #TODO: Remove interests from Database events
        interests = ["Sports", "Reading"]
        name_list = ['Basketball Tournament', 'Book club']
        @events = Events.where(name: name_list)
        #@events = Events.all
        return @events, @result
    end
    
    def self.is_outofRange id
        if id > Fluffys.count
            return true
        else
            return false
        end
    end
    
    def self.merge_parm fluffy_params
        @new_params = fluffy_params.merge!(:fluffy_coin => '0')
        return @new_params
    end
end
