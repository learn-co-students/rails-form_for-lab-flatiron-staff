class SchoolClass < ActiveRecord::Base
  validates :title, :room_number, presence: true
end