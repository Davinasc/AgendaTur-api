class Tour < ApplicationRecord
  belongs_to :destiny
  belongs_to :guide

  validates_presence_of :date, :vacancies, :exit_time, :arrival_time
end
