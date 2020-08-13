class Cocktail < ApplicationRecord

    validates :name, length: {minimum: 10}
end
