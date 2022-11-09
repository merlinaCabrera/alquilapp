class Vehiculo < ApplicationRecord
    validates :marca , presence:true
    validates :modelo , presence:true
    validates :color , presence:true
    validates :precio , presence:true
    validates :descripcion , presence:true
end
