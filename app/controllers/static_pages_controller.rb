class StaticPagesController < ApplicationController
	def shop
		@sales = Portfolio.where(:category => 'For Sale')
	end

	def freelance
		@freelance = Portfolio.where(:category => 'Freelance')
	end
end

