class Customer < ActiveRecord::Base
  validates :name, :uniqueness => true, :presence => true
  has_many :sows, :dependent => :destroy
end
