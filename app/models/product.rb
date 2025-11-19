class Product < ActiveRecord::Base
  before_validation do
    throw :abort if total_price.to_f < 0
  end
end
