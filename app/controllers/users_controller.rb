class UsersController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def show
    @user = User.new(
      name: "Nikolay",
      username: "filimniko",
      avatar_url: "https://lh3.googleusercontent.com/a-/AOh14GiYg0ILYAZwiIdVvAWnyIPEJyc8mXkkWH_jDRy0Kg=s96-c-rg-br100"
    )
  end
end
