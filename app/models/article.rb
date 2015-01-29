class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :categories, dependent: :destroy
  validates :title, presence: true, length: {minimum: 2}
end
