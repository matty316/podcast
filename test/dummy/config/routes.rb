Rails.application.routes.draw do
  mount Podcasts::Engine => "/podcasts"
end
