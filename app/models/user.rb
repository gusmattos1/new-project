class User < ApplicationRecord

  has_secure_password
  
  has_many :products
  has_many :reviews

  validates :email, :password, presence: true, length: { minimum: 3 }


end
