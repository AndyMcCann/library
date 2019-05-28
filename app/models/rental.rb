class Rental < ApplicationRecord
    belongs_to :member
    belongs_to :book
end
