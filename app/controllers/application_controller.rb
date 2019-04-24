class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  if Time.current < Time.new(2019, 04, 25)
    http_basic_authenticate_with name: 'schwarzenegger', password: 'arnold'
  end
end
