# frozen_string_literal: true

class Users::PasswordsController < Devise::PasswordsController
  # GET /resource/password/new
   def new
       #super
     @password=User.find(current_user.id)
   end

  # POST /resource/password
   def create
     #super
   end
   
  # GET /resource/password/edit?reset_password_token=abcdef
   def edit
       binding.pry
     #super
     @password=User.find(current_user.id)
   end

  # PUT /resource/password
   def update
     #super
     @password=User.find(current_user.id)
     if @password.update(params.require(:user).permit(:password, :email))
         flash[:notice]="更新が完了しました。"
         redirect_to new_user_password_path
     else
         render "edit"
     end
   end

   protected

   def after_resetting_password_path_for(resource)
     #super(resource)
     edit_user_password_path(current_user.id)
   end

  # The path used after sending reset password instructions
  # def after_sending_reset_password_instructions_path_for(resource_name)
  #   super(resource_name)
  # end
end
