class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :place, presence: true
end
