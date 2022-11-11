class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #cada perfil tiene una sola imagen adhosada, dependent destroy significa que al eliminar el perfil, se elimina la imagen
  has_one_attached :licencia, dependent: :destroy
  has_one_attached :dni_tarjeta, dependent: :destroy

  validates :licencia, content_type: [:png,:jpg,:jpeg]
  validates :dni_tarjeta, content_type: [:png,:jpg,:jpeg]
end