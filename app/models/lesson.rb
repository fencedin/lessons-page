class Lesson < ActiveRecord::Base
  validates :name, presence: true,
                   uniqueness: true
  validates :number, presence: true,
                     uniqueness: true
  validates :content, presence: true
  validates :section_id, presence: true
  belongs_to :section

  def url_format(name)
    name.downcase.gsub ' ', '-'
  end

  def next
    current_lesson = Lesson.find_by(:number => self.number)
    all_lessons = Lesson.all.sort_by { |i| i.number }
    current_index = all_lessons.index(current_lesson)
    all_lessons[current_index + 1]
  end

  def prev
    current_lesson = Lesson.find_by(:number => self.number)
    all_lessons = Lesson.all.sort_by { |i| i.number }
    current_index = all_lessons.index(current_lesson)
    if current_index > 0
      all_lessons[current_index - 1]
    end
  end
end
