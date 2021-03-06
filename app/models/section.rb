class Section < ActiveRecord::Base
  validates :name, presence: true,
                   uniqueness: true
  has_many :lessons
  belongs_to :chapter

  def url_format(name)
    name.downcase.gsub ' ', '-'
  end
end
