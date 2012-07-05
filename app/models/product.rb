class Product < ActiveRecord::Base
  attr_accessible :description, :imag_url, :price, :title
  validates :title, :description, :imag_url, presence: true 
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :imag_url, allow_blank: true, format: {with: %r{\.(gif|jpg|png)$}i, massage: 'must be a URL for GIF, JPG or PNG  image.'}
end 
