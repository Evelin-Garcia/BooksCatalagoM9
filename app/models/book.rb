class Book < ApplicationRecord
    belongs_to :user 
    has_many :chapters, dependent: :destroy
    has_and_belongs_to_many :readers

    validates :title, presence: true
end
