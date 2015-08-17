class Comment < ActiveRecord::Base
  belongs_to :recipe
  validates :name, presence: true
  validates :body, presence: true
end
