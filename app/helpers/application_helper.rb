module ApplicationHelper
  def bootstrap_flash_class(level)
    case level
    when 'notice' then "alert alert-info"
    when 'success' then "alert alert-success"
    when 'error' then "alert alert-danger"
    when 'alert' then "alert alert-warning"
    end
  end

    def shorten_description(string, max_length = 280)
    if string.length > max_length
      string[0, max_length - 3] + "..."
    else
      string
    end
  end
end
