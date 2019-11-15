class Game < ApplicationRecord
	belongs_to :user
	has_many :gameplayers
	enum status: { points: 0, score: 1}
end
