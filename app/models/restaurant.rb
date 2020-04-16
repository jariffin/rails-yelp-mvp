class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :phone_number, :category, presence: true
  validates :category, :inclusion => { :in => [ "Chinese", "Italian", "Japanese", "French", "Belgian", "Malaysian"] }
end
