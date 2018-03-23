class Pokemon < ApplicationRecord
	belongs_to :trainer
	validates :name, presence: true, uniqueness: true
end
