class InquiriesController < ApplicationController
  def new
    @inquiry_form = InquiryForm.new(session[:inquiry_form] || {})
  end

  def create
    @inquiry_form = InquiryForm.new(inquiry_params)
    session[:inquiry_form] = @inquiry_form.attributes
    if @inquiry_form.valid?
      redirect_to new_inquiry_confirmation_path
    else
      flash[:form_error_messages] = create_flash_message(@inquiry_form)
      redirect_to new_inquiry_path, flash: { alert: '入力内容に問題があります' }
    end
  end

  private

  def inquiry_params
    params.require(:inquiry_form).permit(
      :name, :subject, :content
    )
  end
end
