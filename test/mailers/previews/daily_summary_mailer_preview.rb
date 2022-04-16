# Preview all emails at http://localhost:3000/rails/mailers/daily_summary_mailer
class DailySummaryMailerPreview < ActionMailer::Preview
    def new_summary_email
        
        items = []
        users = []
        2.times do |i|
            items.append(Item.new(name:"item#{i + 1}", description:"descrptn ", price:"100"))
            users.append(User.new(name:"user#{i + 1}", email:"test@gmail.com", phone:"01234567890"))
        end

        DailySummaryMailer.with(items: items, users: users).new_summary_email
    end
end
