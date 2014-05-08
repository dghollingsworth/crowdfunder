class PledgesController < ApplicationController
  # def new
  # 	@pledge = Pledge.new
  # end

  def create
  	@pledge = @project.pledges.build(pledge_params)
  	@pledge.user_id = current_user.id
  	
  	respond_to do |format|
	  	if @pledge.save
	  		format.html{redirect_to projects_path, notice: "Thank you for your donation"}
	  		format.js {}
	  	else
	  		format.html{render "projects/show", alert: "There was an error"}
	  		format.js{}
	  	end
	  end
  end

  def destroy
  	@pledge = Pledge.find(params[:id])
		@pledge.destroy
  end

  private
  def load_project
  	@project = Project.find(params[:project_id])
  end

  def pledge_params
  	params.require(:pledge).permit(:amount, :gift_id, :user_id, :project_id)
  end

end
