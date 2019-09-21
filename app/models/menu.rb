class Menu < ApplicationRecord
  belongs_to :user

  validates :name, :category, :price, :user_id, presence: true
end
