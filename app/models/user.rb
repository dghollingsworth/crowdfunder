class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :pledges
  has_many :projects, through: :pledges
  has_many :comments, as: :commentable

  validates :password, confirmation: true
end
