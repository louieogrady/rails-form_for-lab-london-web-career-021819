Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students # only: [:new, :create, :show, :edit, :update]

  get 'school_classes/new', to: 'school_classes#new', as: :new_school_class
  resources :school_classes, except: [:new]

end
