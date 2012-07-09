class Product < ActiveRecord::Base
  attr_accessible :description, :imag_url, :price, :title
  validates :title, uniqueness: true, length: {minimum: 10, message:'must be more than 10 characters'}
  validates :title, :description, :imag_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :imag_url, allow_blank: true, format: {with: %r{\.(gif|jpg|png)$}i, message: 'must be a URL for GIF, JPG or PNG  image.'}
end
