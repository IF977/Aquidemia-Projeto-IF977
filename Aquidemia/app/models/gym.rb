class Gym < ApplicationRecord
    acts_as_voteable
    #geocoded_by :address, :latitude  => :latitude, :longitude => :longitude
    #after_validation :geocode
    #def address
    #    [adress, bairro].compact.join(', ')
    #end    
end
