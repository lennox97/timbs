class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :phone, uniqueness: true, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :encrypted_password, presence: true

  def email_required?
    false
  end

  def will_save_change_to_email?
    false
  end
end
