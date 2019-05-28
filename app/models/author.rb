class Author < ApplicationRecord
    has_many :books

    validates :author_name, length: {minimum: 5}
end
