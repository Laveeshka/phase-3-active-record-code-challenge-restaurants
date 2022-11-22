class Customer < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def favorite_restaurant
        self.reviews.order(star_rating: :desc).first.restaurant
    end

    def add_review(restaurant, rating)
        Review.create(customer: self, restaurant: restaurant, star_rating: rating)
    end

    def delete_reviews(restaurant)
        self.reviews.where(restaurant: restaurant).destroy_all
    end
end