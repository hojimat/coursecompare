class IndexController < ApplicationController
  def query
		@schools = School.pluck(:name,:id)
  end
	def results
		render :json => params
	end
end
