class ErrorsController < ApplicationController
  def index
    some_internal_logic(params['ajax'].to_i)
  end
  
  def some_internal_logic(x)
    return 1 / x
  end
end
