class UsersController < ApplicationController

  def index
    
    matching_users = User.all

    @list_of_users = matching_users.order({:username=> :asc})

    render({:template => "user_templates/index"})

  end

  def show

  url_username = params.fetch("path_username")

  @the_user = User.where({:username => url_username}).at(0)

  render({:template => "user_templates/show"})    

  end

  def insert

    input_username = params.fetch("input_username")

    new_user = User.new

    new_user.username = input_username

    new_user.save   

    redirect_to("/users/"+new_user.username.to_s)
  
  end

end
