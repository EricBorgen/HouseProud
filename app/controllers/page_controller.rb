class PageController < ApplicationController
  # Remember this for CanCan
  # load_and_authorize_resource
before_action :authenticate_user!, only: [:contact]

  def home
  end

  def about
  end

  def contact
  end
end
