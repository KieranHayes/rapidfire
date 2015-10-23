Rapidfire::Engine.routes.draw do
  resources :question_groups do
    get 'results', on: :member
    put :update_position
    resources :questions
    resources :answer_groups, only: [:new, :create]
  end

  root :to => "question_groups#index"
end
