Rails.application.routes.draw do
  resources :proyectos do
    member do
      post 'add_person'
      delete 'remove_person/:person_id', to: 'proyectos#remove_person', as: 'remove_person'
    end
  end
  resources :personas do
    member do
      post 'add_proyect'
      delete 'remove_proyect/:proyect_id', to: 'personas#remove_proyect', as: 'remove_proyect'
    end
  end

  root to: 'proyectos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
