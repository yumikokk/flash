class ErstksController < ApplicationController
	skip_before_filter :verify_authenticity_token
	def index
		@first_stock = Erstk.where(tick: 'TSLA')
		render json: @first_stock
	end

	def symbol
		p params
		tick = params["tick"]
		first_stock = Erstk.where(tick:tick).first
		render json: first_stock
	end

	def erDate 
		erDate = params["erDate"]
		stocks = Erstk.where(erDate: '2015-11-2306:30:00')
		render json: stocks
	end

	def this_week
		# today = Date.today
		# if today.saturday?
		# 	week_begin = today + 2
		# elsif today.sunday?
		# 	week_begin = today + 1
		# else
		# 	week_begin = today
		# end
		# stocks = Erstk.where(erDate:today)	
	end

end
