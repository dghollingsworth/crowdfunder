class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :pledges
  has_many :projects, through: :pledges

  validates :password, confirmation: true
end
