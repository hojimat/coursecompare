class IndexController < ApplicationController
  def query
		@schools = School.pluck(:name)
  end
	def results
		render :json => params
	end
end
