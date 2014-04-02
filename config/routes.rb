Learnhowtoprogram::Application.routes.draw do
  match('/', {via: :get, to: 'lessons#index'})
  match('lessons', {via: :get, to: 'lessons#index'})
end


  # match('', {via: :, to: ''})
