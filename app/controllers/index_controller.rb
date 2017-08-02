class IndexController < ApplicationController
	def query
		@schools = School.pluck(:name,:id)
		@depts = Dept.pluck(:name, :code)
	end

	def results
	#	render :json => params
		@params = params["results"]
		@home = School.find_by(id:@params["home"])
		@host = School.find_by(id:@params["host"])
		@dept = Dept.find_by(code:@params["dept"])
		
	end
end
