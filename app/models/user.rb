class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates_presence_of :first_name
  validates_presence_of :last_name

  has_many :events

  def full_name
    "#{first_name&.capitalize} #{last_name&.capitalize}"
  end
end
