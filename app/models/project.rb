class Project < ActiveRecord::Base

	def format_date(deadline)
		deadline.strftime("%B %e %Y, %l %P")
	end

	def format_goal(goal)
		goal = goal.to_f
		sprintf("%.2f", goal)
	end

end
