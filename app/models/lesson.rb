class Lesson < ActiveRecord::Base
  validates :name, presence: true,
                   uniqueness: true
  validates :number, presence: true,
                     uniqueness: true
  validates :content, presence: true
end
