class Category < ActiveRecord::Base

    has_many :tour_categories
    has_many :tour, through: :tour_categories
end
