class InquiryConfirmationsController < ApplicationController
  def new
    @inquiry_form = InquiryForm.new(session[:inquiry_form] || {})
  end

  def create
    @inquiry_form = InquiryForm.new(session[:inquiry_form])
    if @inquiry_form.save
      session[:inquiry_form] = nil
      flash[:success] = '問い合わせを送信しました'
      redirect_to new_inquiry_path
    else
      flash[:danger] = '問い合わせの送信に失敗しました'
      redirect_to new_inquiry_path 
    end
  end
end
