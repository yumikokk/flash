class ErstksController < ApplicationController
	skip_before_filter :verify_authenticity_token
	def index
		@first_stock = Erstk.where(tick: 'TSLA')
		render json: @first_stock
	end

	def symbol
		tick = params["tick"]
		stock = StockQuote::Stock.quote(tick)
		recent_data = Erstk.where(tick:tick).order('erDate DESC')
		recent_stock = { er:recent_data[0], realtime:stock, performance: recent_data[1..4]}
		render json: recent_stock
	end

	def monday
		today = Date.today
		monday_am_str = today.beginning_of_week.strftime('%Y-%m-%d 06:30:00')
		monday_am = Erstk.where(erDate: monday_am_str)
		format_stocks = { am: monday_am }
		render json: format_stocks	
	end

	def monday_pm
		today = Date.today
		monday_pm_str = today.beginning_of_week.strftime('%Y-%m-%d 16:30:00')
		monday_pm = Erstk.where(erDate: monday_pm_str)
		format_stocks = { pm: monday_pm }
		render json: format_stocks	
	end

	def tuesday
		today = Date.today
		tuesday_am_str = (today.beginning_of_week + 1).strftime('%Y-%m-%d 06:30:00')
		tuesday_am = Erstk.where(erDate: tuesday_am_str)
		format_stocks = { am: tuesday_am }
		render json: format_stocks	
	end

	def tuesday_pm
		today = Date.today
		tuesday_pm_str = (today.beginning_of_week + 1).strftime('%Y-%m-%d 16:30:00')
		tuesday_pm = Erstk.where(erDate: tuesday_pm_str)
		format_stocks = { pm: tuesday_pm }
		render json: format_stocks	
	end

	def wednesday
		today = Date.today
		wednesday_am_str = (today.beginning_of_week + 2).strftime('%Y-%m-%d 06:30:00')
		wednesday_am = Erstk.where(erDate: wednesday_am_str)
		format_stocks = { am: wednesday_am }
		render json: format_stocks	
	end

	def wednesday_pm
		today = Date.today
		wednesday_pm_str = (today.beginning_of_week + 2).strftime('%Y-%m-%d 16:30:00')
		wednesday_pm = Erstk.where(erDate: wednesday_pm_str)
		format_stocks = { pm: wednesday_pm }
		render json: format_stocks	
	end

	def thursday
		today = Date.today
		thursday_am_str = (today.beginning_of_week + 3).strftime('%Y-%m-%d 06:30:00')
		thursday_am = Erstk.where(erDate: thursday_am_str)
		format_stocks = { am: thursday_am }
		render json: format_stocks	
	end

	def thursday_pm
		today = Date.today
		thursday_pm_str = (today.beginning_of_week + 3).strftime('%Y-%m-%d 16:30:00')
		thursday_pm = Erstk.where(erDate: thursday_pm_str)
		format_stocks = { pm: thursday_pm }
		render json: format_stocks	
	end

	def friday
		today = Date.today
		friday_am_str = (today.beginning_of_week + 4).strftime('%Y-%m-%d 06:30:00')
		friday_am = Erstk.where(erDate: friday_am_str)
		format_stocks = { am: friday_am}
		render json: format_stocks	
	end

	def friday_pm
		today = Date.today
		friday_pm_str = (today.beginning_of_week + 4).strftime('%Y-%m-%d 16:30:00')
		friday_pm = Erstk.where(erDate: friday_pm_str)
		format_stocks = { pm: friday_pm }
		render json: format_stocks	
	end

end
