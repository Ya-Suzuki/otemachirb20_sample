class ApplicationController < ActionController::Base
  def create_flash_message(object)
    object.errors.keys.map { |key| [key.to_s, object.errors.full_messages_for(key)] }.to_h
  end
end
