class PagesController < ApplicationController
	# Make my fancy controller work
	def show
		render template: "pages/#{params[:page]}"
	end
end
