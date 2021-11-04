class Friend < ApplicationRecord
    validates :name, presence: true
    validates :Location, presence: true
end
