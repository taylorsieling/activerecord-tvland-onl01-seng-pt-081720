class Show < ActiveRecord::Base
  
    has_many :characters
    has_many :shows, through: :characters
    belongs_to :network

    def actors_list
        self.characters.map do |a|
            a.actor.full_name
        end
    end

end