class Recipe < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: {minimum: 1}
  validates :body, presence: true
end
