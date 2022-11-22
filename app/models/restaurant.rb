class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :customers, through: :reviews

    def self.fanciest
        Restaurant.find_by(price: Restaurant.maximum(:price))
    end

    def all_reviews
        self.reviews.map{|review| review.full_review}
    end

end