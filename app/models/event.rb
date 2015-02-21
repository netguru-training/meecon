class Event < ActiveRecord::Base
  validate :title, presence: true
  validate :beginning, presence: true
  validate :end, presence: true
  validate :place, presence: true
end
