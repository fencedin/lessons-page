class Lesson < ActiveRecord::Base
  validates :name, presence: true,
                   uniqueness: true
  validates :number, presence: true,
                     uniqueness: true
  validates :content, presence: true

  def url_format(name)
    name.downcase.gsub ' ', '-'
  end
end
