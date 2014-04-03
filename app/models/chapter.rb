class Chapter < ActiveRecord::Base
  validates :name, presence: true,
                   uniqueness: true
  has_many :sections

  def url_format(name)
    name.downcase.gsub ' ', '-'
  end
end
