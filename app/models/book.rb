class Book < ApplicationRecord
    belongs_to :author
    belongs_to :genre
    has_many :rentals

    validates :book_title, presence: true
    
end
