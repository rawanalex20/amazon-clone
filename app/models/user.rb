class User < ApplicationRecord
    validates :name, :email, :password, :password_confirmation, :phone, presence: true
    validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
    validates :email, format: { with: /\w+@[a-zA-Z0-9]+.com/, message: "not valid email"}
    validates :password, length: { minimum: 4 }
    validates :password, confirmation: true
    validates :phone, length: { is: 11 }, numericality: true
end
