Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Test::API => '/test/'
  mount Twitter::API => '/twitter/'
<<<<<<< HEAD

  # [path]/test/v2/api.rb のこと
  # api.rb の 構成も Module、Class などで規制される
  mount Test::V2::API => '/test/v2/'
=======
>>>>>>> refs/remotes/origin/master
end
