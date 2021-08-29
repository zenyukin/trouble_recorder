class User < ApplicationRecord
  has_many :posts
  has_many :post_managers
  has_secure_password
end
