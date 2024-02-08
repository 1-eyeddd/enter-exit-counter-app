Rails.application.routes.draw do
  root 'counters#index'
  post '/increase', to: 'counters#increase'
  post '/decrease', to: 'counters#decrease'
end
