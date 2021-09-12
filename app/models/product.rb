class Product < ApplicationRecord
  validates_uniqueness_of :code
end
