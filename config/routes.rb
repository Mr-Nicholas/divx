Rails.application.routes.draw do
  resources :job_roles
  resources :locations
  resources :business_locations
  resources :profiles do
    collection do
      # post :make_admin
      # post :assign_recruiter_role, :assign_candidate_role
      post 'assign_recruiter_role', to: 'profiles#assign_recruiter_role'
      post 'assign_candidate_role', to: 'profiles#assign_candidate_role'
    end
  end

  resources :companies
  resources :talents
  devise_for :users
  # post 'assign_role', to: 'profiles/assign_role'
  get 'home/index'
  root 'home#index'
  #
  # get 'admin', to: 'pages#admin'
  # get 'contact', to: 'pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
