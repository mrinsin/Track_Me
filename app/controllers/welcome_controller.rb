class WelcomeController < ApplicationController
  before_action :authenticate_user! #add this line

  def index
    @user = User.find(current_user.id)
    #split up name in order to access first name
    name_array = @user.name.split(" ")
    @first_name = name_array[0]
  end

end
