class Post < ApplicationRecord
  enum status: [ :waiting, :in_progress, :completed, :no_action_needed ]
  belongs_to :user
  has_many :post_managers
  
  validates :title, presence: true
  validates :content, presence: true
  
end
