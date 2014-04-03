class ChaptersController < ApplicationController
  def index
    @chapters = Chapter.all.sort_by { |i| i.number }
    render 'chapters/index.html.erb'
  end

  def new
    @chapter = Chapter.new
    render 'chapters/new.html.erb'
  end

  def create
    @chapter = Chapter.new(params[:chapter])
    @chapter.url_name = @chapter.url_format(@chapter.name)
    if @chapter.save
      redirect_to '/table-of-contents'
    else
      render 'chapters/new.html.erb'
    end
  end

  def show
    @chapter = Chapter.find_by(url_name: params[:url_name])
    render 'chapters/show.html.erb'
  end

  def edit
    @chapter = Chapter.find_by(url_name: params[:url_name])
    render 'chapters/edit.html.erb'
  end

  def update
    @chapter = Chapter.find_by(url_name: params[:url_name])
    @chapter.update(params[:chapter])
    @chapter.update(url_name: @chapter.url_format(@chapter.name))
    @chapter.url_name = @chapter.url_format(@chapter.name)
    redirect_to "/"
  end

  def destroy
    @chapter = Chapter.find_by(url_name: params[:url_name])
    @chapter.sections.each { |section| section.lessons.destroy_all }
    @chapter.sections.destroy_all
    @chapter.destroy
    redirect_to "/"
  end
end
