class Product < ActiveRecord::Base
  attr_accessible :description, :imag_url, :price, :title
end
