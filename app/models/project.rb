class Project < ActiveRecord::Base

	def format_date(deadline)
		deadline.strftime("%B %e %Y, %l %P")
	end

	def format_money

	end
end
