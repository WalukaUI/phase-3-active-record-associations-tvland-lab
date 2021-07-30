class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors,through: :characters
    belongs_to :networks

    def network
        self.network
    end

    def actors_list
        self.actors.map do |act|
            "#{act.first_name} #{act.last_name}" 
        end
    end

end