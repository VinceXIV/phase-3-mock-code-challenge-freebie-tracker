class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        self.freebies.find do |freebie|
            freebie.name == item_name
        end
    end

    def give_away(dev, freebie)
        #I didn't really understand this question so what I wrote might be wrong
        freebie.dev = dev
    end
end
