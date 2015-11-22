class ErstksController < ApplicationController
	skip_before_filter :verify_authenticity_token
	def index
		@first_stock = Erstk.first
		render json: @first_stock
	end

	def symbol
		p params
		first_stock = Erstk.first
		render json: first_stock
	end
end
