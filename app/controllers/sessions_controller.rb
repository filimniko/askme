class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.authenticate(params[:email], params[:password])

    if @user.present?
      session[:user_id] = @user.id
      redirect_to user_path(@user), notice: 'Вы успешно залогинились!'
    else
      flash.now.alert = 'Неправильный майл или пароль'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Вы успешно разлогинились!'
  end
end
