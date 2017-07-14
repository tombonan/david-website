class StaticPagesController < ApplicationController
	def shop
		@sales = Portfolio.where(:category => 'For Sale')
	end

	def freelance
		@freelance = Portfolio.where(:category => 'Freelance')
	end

	def edit
		@interest = Interest.last
		@interests = Interest.all
		@background = Background.last
		@backgrounds = Background.all
	end

	def editresources
		@resources = Resource.all
	end
end

