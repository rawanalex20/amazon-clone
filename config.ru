# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

run Rails.application
Rails.application.load_server
puts"CONFIG.RU"

# daily summary job is called from this file temporary until setting the schedule
DailySummaryJob.set(wait_until: Date.tomorrow.noon).perform_later
