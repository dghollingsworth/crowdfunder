class ProjectsController < ApplicationController

	before_filter :load_commentable

	def index
		@project = Project.all
	end

	def show
		@project = Project.find(params[:id])

		@total = total_pledges
		
		if current_user
			@pledge = @project.pledges.build
			@comments = @commentable.comments
			@comment = @commentable.comments.build
		end
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

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to projects_path
	end

	private
	def project_params
		params.require(:project).permit(:name, :description, :goal, :deadline, gifts_attributes: [:id, :amount, :package, :delivery])
	end

	def total_pledges
		@project.pledges.sum('amount')
	end
	
end
