class DailySummaryJob < ApplicationJob
  queue_as :default

  def perform
    puts"somethingelse"
    items = Item.where("created_at >= :start_date", {start_date: Date.today})
    users = User.where("created_at >= :start_date", {start_date: Date.today})
    DailySummaryMailer.with(items: items, users: users).new_summary_email.deliver_now
  end
end
