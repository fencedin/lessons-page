class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    render 'lessons/index.html.erb'
  end

  def new
    @lesson = Lesson.new
    render 'lessons/new.html.erb'
  end

  def create
    @lesson = Lesson.new(params[:lesson])
    @lesson.url_name = @lesson.url_format(@lesson.name)
    if @lesson.save
      redirect_to '/'
    else
      render 'lessons/new.html.erb'
    end
  end

  def show
    @lesson = Lesson.find_by(url_name: params[:url_name])
    render 'lessons/show.html.erb'
  end

  def edit
    @lesson = Lesson.find_by(url_name: params[:url_name])
    render 'lessons/edit.html.erb'
  end

  def update
    @lesson = Lesson.find_by(url_name: params[:url_name])
    @lesson.update(params[:lesson])
    @lesson.update(url_name: @lesson.url_format(@lesson.name))
    @lesson.url_name = @lesson.url_format(@lesson.name)
    redirect_to '/'
  end

  def destroy
    @lesson = Lesson.find_by(url_name: params[:url_name])
    @lesson.destroy
    redirect_to "/"
  end
end
