class Micropost < ActiveRecord::Base
  validates :content,:user_id,presence: true
  validates :content ,length: { maximum: 140 }
  belongs_to :user
end
