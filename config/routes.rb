Learnhowtoprogram::Application.routes.draw do
  match '/', {via: :get, to: 'sections#index'}
  match 'table-of-contents', {via: :get, to: 'sections#index'}

  match 'sections/new', {via: :get, to: 'sections#new'}
  match 'table-of-contents', {via: :post, to: 'sections#create'}
  match 'sections/:url_name', {via: :get, to: 'sections#show'}
  match 'sections/:url_name/edit', {via: :get, to: 'sections#edit'}
  match 'sections/:url_name', {via: [:put, :patch], to: 'sections#update'}
  match 'sections/:url_name', {via: :delete, to: 'sections#destroy'}

  match 'lessons/new', {via: :get, to: 'lessons#new'}
  match 'lessons/', {via: :post, to: 'lessons#create'}
  match 'lessons/:url_name', {via: :get, to: 'lessons#show'}
  match 'lessons/:url_name/edit', {via: :get, to: 'lessons#edit'}
  match 'lessons/:url_name', {via: [:put, :patch], to: 'lessons#update'}
  match 'lessons/:url_name', {via: :delete, to: 'lessons#destroy'}
end

