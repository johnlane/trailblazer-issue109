Rails.application.routes.draw do
  root 'application#test'
  post '/' => 'application#test'
end
