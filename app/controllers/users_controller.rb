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

  def update

    input_username = params.fetch("input_username")
    input_old_username = params.fetch("path_username")

    the_user = User.where({:username => input_old_username}).at(0)

    the_user.username = input_username

    the_user.save   

    redirect_to("/users/"+ the_user.username.to_s)
  
  end

end
