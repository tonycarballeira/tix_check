class TicketsController < ApplicationController
	before_action :set_project
	belongs_to :project

	def new
		@ticket = @project.tickets.build
	end

	private
		
		def set_project
			@project = Project.find(params[:project_id])
		end
end
