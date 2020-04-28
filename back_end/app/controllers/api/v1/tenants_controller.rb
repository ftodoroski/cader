class Api::V1::TenantsController < ApplicationController
# Might need to add the include to the create and update 

    def index
        tenants = Tenant.all 
        render json: tenants.to_json(:include => { :apartment => { only: :name} })
    end

    def show 
        tenant = Tenant.find(params[:id])
        render json: tenant.to_json(:include => { :apartment => { only: :name} })
    end

    def create
        tenant = Tenant.new(tenant_params)

        if tenant.save!
            render json: tenant
        else
            render json: "Something went wrong.".to_json  
        end
    end

    def update
        tenant = Tenant.find(params[:id])
        tenant.update(tenant_params) 
        render json: tenant
    end

    def destroy
        tenant = Tenant.find(params[:id])
        tenant.destroy
    end

    private 

    def tenant_params
      params.permit(:name, :password, :email, :phone_number, :apartment_id)
    end
end
