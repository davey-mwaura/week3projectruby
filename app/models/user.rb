class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews
    
    
  def reviews
    Review.where(user_id: id)
  end
      
  def products
     Product.joins(:reviews).where('reviews.user_id = ?', id).distinct
  end
      
  def favorite_product
      products.max_by { |product| product.average_rating }
   end
end