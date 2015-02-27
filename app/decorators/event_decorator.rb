class EventDecorator < Draper::Decorator
  delegate_all

   def self.collection_decorator_class
    PaginatingDecorator
  end

  def beginning_at
    object.beginning_at.strftime("%Y-%m-%d %R")
  end

  def end_at
    object.beginning_at.strftime("%Y-%m-%d %R")
  end

  def short_description
    max_length = 400
    if object.description.length > max_length
      object.description[0, max_length - 3] + "..."
    else
      object.description
    end
  end
end
