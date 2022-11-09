class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #cada perfil tiene una sola imagen adhosada, dependent destroy significa que al eliminar el perfil, se elimina la imagen
  has_one_attached :imagen_perfil, dependent: :destroy

  #active_storage_validation nos permite crear estas validaciones custom
  validates :imagen_perfil, content_type: [:png, :jpg ,:jpeg]
end