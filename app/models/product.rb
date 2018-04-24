class Product < ApplicationRecord

  belongs_to :user
  has_many :reviews


  validates :name, :description, :price_in_cents, :url, presence: true
  validates :price_in_cents, numericality: { greater_than: 0 }


end
