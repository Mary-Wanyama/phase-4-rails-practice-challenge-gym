class Membership < ApplicationRecord

    validates :charge, presence:true 
    belongs_to :Gym  
    belongs_to :client
end
