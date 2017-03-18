class Destiny < ApplicationRecord
  has_many :tours, dependent: :destroy

  validates_presence_of :name, :fixed_value
end
