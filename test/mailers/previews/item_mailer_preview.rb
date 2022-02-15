# Preview all emails at http://localhost:3000/rails/mailers/item_mailer
class ItemMailerPreview < ActionMailer::Preview
    def new_item_email
        # Temporary item for the preview
        item = Item.new(name:"Battery", description:"10.8 Volt / 8600 mAh ", price:"900")
        user = User.new(email:"test@gmail.com")
        
        ItemMailer.with(item: item, user: user).new_item_email
    end
end
