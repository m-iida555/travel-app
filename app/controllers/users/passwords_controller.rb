# frozen_string_literal: true

class Users::PasswordsController < Devise::PasswordsController
    append_before_action :assert_reset_token_passed, only: :edit
    
  # GET /resource/password/new
   def new
       super
     #@password=User.find(current_user.id)
   end

  # POST /resource/password
   #def create
     #super
   #end
   
  # GET /resource/password/edit?reset_password_token=abcdef
   def edit
     super
   end

  # PUT /resource/password
   def update
     super
   end

   
   protected

   def after_resetting_password_path_for(resource)
     #super(resource)
     edit_user_password_path(current_user.id)
   end

    def assert_reset_token_passed
      if params[:reset_password_token].blank?
        set_flash_message(:alert, :no_token)
        redirect_to new_session_path(resource_name)
      end
    end

  # The path used after sending reset password instructions
  # def after_sending_reset_password_instructions_path_for(resource_name)
  #   super(resource_name)
  # end
end
