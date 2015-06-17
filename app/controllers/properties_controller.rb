class PropertiesController < ApplicationController

  before_action :authenticate_user!

  def index
    @properties = current_user.properties.all
  end

end
