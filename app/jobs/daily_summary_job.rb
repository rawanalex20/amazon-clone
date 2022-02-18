class DailySummaryJob < ApplicationJob
  queue_as :default

  def perform
    items = Item.where("created_at >= :start_date", {start_date: Date.today})
    users = User.where("created_at >= :start_date", {start_date: Date.today})
    DailySummaryMailer.with(items: items, users: users).new_summary_email.deliver_now
    
    # A temporary loop by calling the same job until setting the schedule
    DailySummaryJob.set(wait_until: Date.tomorrow.noon).perform_later
  end
end
