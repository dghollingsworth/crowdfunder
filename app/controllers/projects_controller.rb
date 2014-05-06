class ProjectsController < ApplicationController
	def index
		@project = Project.all
	end

	def show
		@project = Project.find(params[:id])
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			redirect_to project_path(@project)
		else
			render :new
		end
	end

	def new
		@project = Project.new
	end

	def edit
		@project = Project.find(params[:id])

	end

	def update
		@project = Project.find(params[:id])

		if @project.update_attributes(project_params)
			redirect_to project_path(@project)
		else
			render :edit
		end
	end

	def delete
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to projects_path
	end

	private
	def project_params
		params.require(:project).permit(:name, :description, :goal, :deadline)
	end
	
end
