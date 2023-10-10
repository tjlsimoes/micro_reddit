class Post < ApplicationRecord
  has_many :comments
	belongs_to :user

	validates :title, presence: true, 
												uniqueness: true,
												length: { in: 4..12 }
	validates :link, presence: true,
												length: { in: 6..25 }
end
