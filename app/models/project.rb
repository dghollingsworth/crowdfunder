class Project < ActiveRecord::Base
  has_many :gifts
  accepts_nested_attributes_for :gifts, :reject_if => :all_blank, :allow_destroy => true

  has_many :users, through: :pledges
  has_many :pledges

  has_many :comments, as: :commentable

	
	def format_date(deadline)
		deadline.strftime("%B %e %Y, %l %P")
	end

	def format_goal(goal)
		goal = goal.to_f
		sprintf("%.2f", goal)
	end

	
end
