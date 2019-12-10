class User < ApplicationRecord
  belongs_to :category
  has_many :posts
end
