set :output, error: 'error.log', standard: 'cron.log'

every 1.days do
  Rails.logger.info 'Another awesome day!'
end
