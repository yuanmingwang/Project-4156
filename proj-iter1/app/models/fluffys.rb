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
end
