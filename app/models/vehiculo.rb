class Vehiculo < ApplicationRecord
    validates :marca , presence:true
    validates :modelo , presence:true
    validates :color , presence:true
    validates :patente , presence:true
    validates :descripcion , presence:true

    has_one_attached :foto_interior
    validates :foto_interior, content_type: [ :png, :jpg, :jpeg ]
end
