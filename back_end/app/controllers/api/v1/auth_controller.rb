class Api::V1::AuthController < ApplicationController

    def login
        owner = Owner.find_by(email: params[:email])

        if owner && owner.authenticate(params[:password])
          token = encode_token(owner.id)

          render json: {owner: owner, token: token}
        else
          render json: {errors: "Incorrect Info. Please try again"}
        end
    end
    
    def auto_login

      if session_user
        render json: {owner: session_user}
      else 
        render json: {errors: "No such user"}
      end
      
    end
end
