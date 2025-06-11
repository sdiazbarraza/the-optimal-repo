class Task < ApplicationRecord
  belongs_to :proyect
  scope :completed? , -> { where(completed: true)}
  scope :incompleted? , -> { where(completed: false)}
end
