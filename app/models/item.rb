class Item < ApplicationRecord
  has_many :tranzactions
  belongs_to :user
  mount_uploader :image, ImageUploader

  with_options presence: true do
    validates :name, length: { maximum: 40 }
    validates :description, length: { maximum: 1000 }
    validates :state
    validates :price
    validates :user_id
  end
end
