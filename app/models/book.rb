class Book < ApplicationRecord
    belongs_to :user 
    has_many :chapters, dependent: :destroy
    validates :name, presence: true
end
