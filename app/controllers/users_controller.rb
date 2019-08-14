class UsersController < ApplicationController
  def new
    @user_form = UserForm.new(session[:user_form] || {})
  end

  def create
    @user_form = UserForm.new(user_params)
    if @user_form.save
      session[:user_form] = nil
      redirect_to new_user_path, flash: { success: 'ユーザーを作成しました' }
    else
      session[:user_form] = user_params
      flash[:form_error_messages] = create_flash_message(@user_form)
      redirect_to new_user_path, flash: { alert: '入力内容に問題があります' }
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :email,
      profile_attributes: %i[name user_name],
      address_attributes: %i[zipcode pref city street],
      active_attributes: :_destroy
    )
  end
end
