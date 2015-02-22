class Event < ActiveRecord::Base
  validates :title, :place,:beginning_at, :end_at,  presence: true
  validate :end_date_is_after_start_date

  has_attached_file :picture
  validates_attachment_content_type :picture, content_type: /\Aimage/

  private

  def end_date_is_after_start_date
    return if beginning_at.blank? || end_at.blank?

    if end_at < beginning_at
      errors.add(:end, "cannot be before the start date")
    end
  end
end
