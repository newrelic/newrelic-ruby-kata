NewrelicRubyKata::Application.routes.draw do
  get "big_list" => "big_list#index"
  get "loop" => "loop#index"
  get "caching" => "caching#index"
  get "tweets" => "tweets#index"
  get "async" => "async#index"
  get "many_assets" => "many_assets#index"
  get "many_assets/display/:id" => "many_assets#display"
  get "errors" => "errors#index"
  get "errors/ajax" => "errors#ajax"

  root :to => "home#index"
end
