class User < ActiveRecord::Base
  has_one :address
  accepts_nested_attributes_for :address

  validates :name, :email_address, :presence => true
  validates :name, :length => { :minimum => 2 }
  validates :email_address, :uniqueness => true
end
