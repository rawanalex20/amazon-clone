class ItemMailer < ApplicationMailer
    def new_item_email
        @item = params[:item]
        @user = params[:user]
        
        mail(to: @user.email, subject: "New Item")
    end
end
