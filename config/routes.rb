Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'estimates#index'

  scope '/estimate' do
    post '/address', to: 'estimates#address'
  end

end
