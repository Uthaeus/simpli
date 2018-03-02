class Requirement < ApplicationRecord
  validates :title, presence: true
  attr_accessor :date_range
  belongs_to :user
end
