# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
   before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
   def new
     @title = 'Вхід'
     if session[:duplication_notice].present?
       flash.now[:alert] = session[:duplication_notice]
       session.delete(:duplication_notice)
     end
     super
   end

  # POST /resource/sign_in
   def create
     @title = 'Вхід'
     super
   end

  # DELETE /resource/sign_out
   def destroy
     @title = 'Вихід'
     super
   end

   protected

  # If you have extra params to permit, append them to the sanitizer.
   def configure_sign_in_params
     devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
   end
end
