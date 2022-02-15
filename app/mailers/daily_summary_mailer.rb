class DailySummaryMailer < ApplicationMailer
    def new_summary_email
        @items = params[:items]
        @users = params[:users]
        
        mail(to: "admin@mail.com", subject: "Daily Summary")
    end
end
