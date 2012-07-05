class Product < ActiveRecord::Base
  attr_accessible :description, :imag_url, :price, :title
  validates :title, :description, :imag_url, presence: true 
end
