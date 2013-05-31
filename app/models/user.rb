class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation

  has_many :reviews
  has_many :products, :through => :reviews

  has_secure_password
  validates_presence_of :name, :password, :on => :create
end
