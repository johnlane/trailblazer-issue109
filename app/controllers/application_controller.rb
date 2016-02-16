class ApplicationController < ActionController::Base
  include Trailblazer::Operation::Controller

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def test
    if request.post?
      run Testthing::Test do |op|
        return redirect_to root_url
      end
      render
    else
      form Testthing::Test
    end
  end

end
