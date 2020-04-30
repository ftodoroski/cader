class Api::V1::OwnersController < ApplicationController

    def index
        owners = Owner.all 
        render json: owners
    end

    def show 
        owner = Owner.find(params[:id])
        render json: owner
    end

    def create
        owner = Owner.new(
            name: params[:name],
            password: params[:password],
            email: params[:email],
            phone_number: params[:phone_number]
        )
            
        if owner.save!
            token = encode_token(owner.id)
            render json: {owner: owner, token: token}
        else
            render json: {errors: owner.errors.full_messages}
        end
    end

    def update
        owner = Owner.find(params[:id])
        owner.update(owner_params) 
        render json: owner
    end

    def destroy
        owner = Owner.find(params[:id])
        owner.destroy
    end

    private 

    def owner_params
      params.require(:owner).permit(:name, :password, :email, :phone_number)
    end
end
