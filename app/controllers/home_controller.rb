class HomeController < ApplicationController
  before_action :redirect_if_logged_in, only: [:index]  # Ensure this runs before the index action

  def index
    # Homepage content here
  end

  private

  def redirect_if_logged_in
    if user_signed_in?
      redirect_to dashboard_path # Or any path you want to redirect to
    end
  end
end
