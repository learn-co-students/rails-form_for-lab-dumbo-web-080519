Rails.application.routes.draw do
  resources :students
  resources :school_classes

  get 'school_classes/edit'

  get 'school_classes/index'

  get 'school_classes/new'

  get 'school_classes/show'

  get 'students/edit'

  get 'students/index'

  get 'students/new'

  get 'students/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
