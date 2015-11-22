class Erstk < ActiveRecord::Base
	validates :erDate, uniqueness: { scope: :tick, 
		message: "The erDate for this stock cannot duplicate."}
end
