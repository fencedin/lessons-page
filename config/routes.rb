Learnhowtoprogram::Application.routes.draw do
  match '/', {via: :get, to: 'chapters#index'}
  match 'table-of-contents', {via: :get, to: 'chapters#index'}

  match 'chapters/new', {via: :get, to: 'chapters#new'}
  match 'table-of-contents', {via: :post, to: 'chapters#create'}
  match 'chapters/:url_name', {via: :get, to: 'chapters#show'}
  match 'chapters/:url_name/edit', {via: :get, to: 'chapters#edit'}
  match 'chapters/:url_name', {via: [:put, :patch], to: 'chapters#update'}
  match 'chapters/:url_name', {via: :delete, to: 'chapters#destroy'}

  match 'sections/new', {via: :get, to: 'sections#new'}
  match 'sections/', {via: :post, to: 'sections#create'}
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

