class User < ActiveRecord::Base
  validates :name,:email,presence: true
  validates :email, format: { with: /\w+@\w+\.\w+/,
    message: "enter correct email " }
  has_many :microposts
end