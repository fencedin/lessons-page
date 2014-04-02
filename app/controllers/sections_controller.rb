class SectionsController < ApplicationController
  def index
    @sections = Section.all
    render 'sections/index.html.erb'
  end

  def new
    @section = Section.new
    render 'sections/new.html.erb'
  end

  def create
    @section = Section.new(params[:section])
    @section.url_name = @section.url_format(@section.name)
    if @section.save
      redirect_to '/table-of-contents'
    else
      render 'sections/new.html.erb'
    end
  end

  def show
    @section = Section.find_by(url_name: params[:url_name])
    render 'sections/show.html.erb'
  end

  def edit
    @section = Section.find_by(url_name: params[:url_name])
    render 'sections/edit.html.erb'
  end

  def update
    @section = Section.find_by(url_name: params[:url_name])
    @section.update(params[:section])
    @section.update(url_name: @section.url_format(@section.name))
    @section.url_name = @section.url_format(@section.name)
    redirect_to "/"
  end

  def destroy
    @section = Section.find_by(url_name: params[:url_name])
    @section.lessons.destroy_all
    @section.destroy
    redirect_to "/"
  end
end
