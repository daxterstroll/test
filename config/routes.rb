Rails.application.routes.draw do
  resources :class_schedules, :except => [:show, :edit]
  resources :galleries, :except => [:show]
  resources :articles, :except => [:index]
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root 'articles#index'
  get ':status', to: 'errors#show', constraints: {status: /\d{3}/}
  get 'persons/profile', as: 'user_root'
  get 'history', to: 'pages#history'
  get 'recognition', to: 'pages#recognition'
  get 'direktor', to: 'pages#direktor'
  get 'college', to: 'pages#college'
  get 'department/computer_sciences', to: 'pages#computer_sciences'
  get 'department/economy_and_entrepreneurship', to: 'pages#economy_and_entrepreneurship'
  get 'department/management_and_social-humanitarian', to: 'pages#management_and_social_humanitarian'
  get 'zaochne_viddilennya', to: 'pages#zaochne_viddilennya'
  get 'department', to: 'pages#department'
  get 'studentu', to: 'pages#studentu'
  get 'prijmalna-komisija', to: 'pages#prijmalna_komisija'
  get 'contacts', to: 'pages#contacts'
end
