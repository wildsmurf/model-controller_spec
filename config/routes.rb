Rails.application.routes.draw do
  root to: 'guardians#index'
  resources 'guardians' do
    resources 'weapons'
  end
end
