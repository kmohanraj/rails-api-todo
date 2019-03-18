class Todo < ApplicationRecord
	validates :title, presence: true
	validates :description, presence: true
	validates :status, presence: true
	validates :due_date, presence: true
end
