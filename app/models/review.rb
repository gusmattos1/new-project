class Review < ApplicationRecord


  belongs_to :product
  belongs_to :user


  validates :description, presence: true, length: { minimum: 4 }


end
