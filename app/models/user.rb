class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # cada perfil tiene una sola imagen adhosada, dependent destroy -> al eliminar el perfil, se elimina la imagen
  has_one_attached :licencia, dependent: :destroy
  has_one_attached :dni_tarjeta, dependent: :destroy

  validates :licencia, content_type: %i[png jpg jpeg]
  validates :dni_tarjeta, content_type: %i[png jpg jpeg]
  validates :nombreUsuario, uniqueness: true
  validates :dni, uniqueness: true

  before_update :inc_balance

  enum :estadoDocumentos, %i[pendiente aprobado rechazado] # -> 0, 1, 2

  def inc_balance
    return unless balance_changed?

    self.balance = balance + balance_was
  end
end