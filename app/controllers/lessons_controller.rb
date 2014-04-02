class LessonsController < ApplicationController::Base
  def index
    @lessons = Lesson.all
    render 'lessons/index.html.erb'
  end

end
