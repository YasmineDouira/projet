class Machine < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    has_one_attached :image
end

