class SendItemMailsJob < ApplicationJob
  queue_as :default

  def perform(item, user)
    ItemMailer.with(item: item, user: user).new_item_email.deliver_now
  end
end
