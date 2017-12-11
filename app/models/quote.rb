class Quote < ApplicationRecord
  validates_presence_of :author
  validates_presence_of :content

   scope :search, -> (search){ where('author ILIKE ?', "%#{search}%") }
end
