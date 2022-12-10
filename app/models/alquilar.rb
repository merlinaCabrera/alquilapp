class Alquilar < ApplicationRecord
    validates :id_vehiculo, uniqueness: true
    validates :id_user, uniqueness: true
end
