class WelcomeController < ApplicationController
  before_action :authenticate_user! #add this line

  def index
    #split up name in order to access first name
    name_array = current_user.name.split(" ")
    @first_name = name_array[0]
  end

end
