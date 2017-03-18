class Guide < ApplicationRecord
  has_many :tours

  validates_presence_of :name, :qualification
end
