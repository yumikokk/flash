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

	def erdate 
		morning_stocks = Erstk.where(erDate: '2015-11-30 06:30:00')
		afternoon_stocks = Erstk.where(erDate: '2015-11-30 16:30:00')
		am_stocks = []
		pm_stocks = []
		morning_stocks.each do |stock|
			obj = { tick: stock.tick, er_date: stock.erDate, erMove: stock.erMove, cap: stock.marketCapM}
			am_stocks.push(obj)
		end
		afternoon_stocks.each do |stock|
			obj = { tick: stock.tick, er_date: stock.erDate, erMove: stock.erMove, cap: stock.marketCapM}
			pm_stocks.push(obj)
		end
		format_stocks = {am:am_stocks, pm:pm_stocks}
		
		render json: format_stocks
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
