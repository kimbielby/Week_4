Rails.application.routes.draw do
  get '/' => 'visitors#home', as: :home
  get '/company/about' => 'visitors#about', as: :about
  get '/blog' => 'visitors#blog', as: :blog
  get '/contact' => 'visitors#contact', as: :contact 
end
