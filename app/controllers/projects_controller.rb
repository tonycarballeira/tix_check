class ProjectsController < ApplicationController

	def new
		@project = Project.new


	end

	def index
		@projects = Project.all
	end

	def create
		@project = Project.new(params[:project])
		
		if @project.save
			flash[:notice] = "Project has been created."
			redirect_to @project
		else
			# nothing, yet
		end
	end

	def show
		@show = Project.find(params[:id])
	end

	private
	
	def project_params
		params.require(:project).permit(:name, :description)
	end

end
