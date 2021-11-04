Rails.application.routes.draw do
  get 'somethings/index'
  namespace 'api' do
    namespace 'v1' do
      resources :friends
    end
  end
end
