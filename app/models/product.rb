class Product < ApplicationRecord

  belongs_to :user
  has_many :reviews


  validates :name, :description, :price, :url, presence: true
  validates :price, numericality: { greater_than: 0 }


end
