class Event < ActiveRecord::Base
  validates :title, :place,:beginning_at,  presence: true
  #validates :end_at, presence: true, :greater_than => :beginning_at
end
