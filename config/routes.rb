Learnhowtoprogram::Application.routes.draw do
  match '/', {via: :get, to: 'lessons#index'}
  match 'table-of-contents', {via: :get, to: 'lessons#index'}
  match 'lessons/new', {via: :get, to: 'lessons#new'}
  match 'table-of-contents', {via: :post, to: 'lessons#create'}
  match 'lessons/:url_name', {via: :get, to: 'lessons#show'}
  match 'lessons/:url_name/edit', {via: :get, to: 'lessons#edit'}
  match 'lessons/:url_name', {via: [:put, :patch], to: 'lessons#update'}
  match 'lessons/:url_name', {via: :delete, to: 'lessons#destroy'}
end

