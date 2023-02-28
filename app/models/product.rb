class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

  def leave_review(user, star_rating, comment)
    Review.create(user: user, product: self, star_rating: star_rating, comment: comment)
  end

  def print_all_reviews
    reviews.each do |review|
      review.print_review
    end
  end

  def average_rating
    reviews.average(:star_rating)
  end

  def users
    User.joins(:reviews).where('reviews.product_id = ?', id).distinct
  end
end