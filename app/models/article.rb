class Article < ApplicationRecord
  has_many :comments
  
  validates_associated :comments
  validates :title , presence: true
  validates :body , presence: true, length: {minimum: 10}
end
