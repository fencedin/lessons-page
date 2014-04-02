require 'spec_helper'

describe Lesson do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
  it { should validate_presence_of :number }
  it { should validate_uniqueness_of :number }
  it { should validate_presence_of :content }

  context '#url_format' do
    it 'formats the name and makes it url friendly' do
      lesson = Lesson.create(name: 'Test Lesson')
      lesson.url_format(lesson.name).should eq 'test-lesson'
    end
  end

  context '#next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'lesson1', :number => 1})
      next_lesson = Lesson.create({:name => 'lesson2', :number => 2})
      current_lesson.next.should eq next_lesson
    end
  end
end
