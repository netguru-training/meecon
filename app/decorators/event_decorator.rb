class EventDecorator < Draper::Decorator
  delegate :picture, :title, :place, :beginning_at, :end_at, :description, :category

  def self.collection_decorator_class
    PaginatingDecorator
  end

  def beginning_at
    I18n.l object.beginning_at, format: :datetime
  end

  def end_at
    I18n.l object.beginning_at, format: :datetime
  end

  def short_description
    h.truncate(object.description, length: 400, separator: ' ')
  end
end
