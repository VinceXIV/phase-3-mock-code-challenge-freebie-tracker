class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie(dev, item_name, value)
        self.freebie << Freebie.create(dev, item_name, value)
    end

    def self.oldest_company
        self.minimum(:founding_year)
    end
end
