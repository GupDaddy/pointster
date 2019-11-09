class User < ApplicationRecord
	has_many :courses
	has_many :players
	has_many :tours
	has_many :games
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
