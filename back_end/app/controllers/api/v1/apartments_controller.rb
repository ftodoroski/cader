class Api::V1::ApartmentsController < ApplicationController
# Might need to add the include to the create and update 

    def index
        apartments = Apartment.all 
        render json: apartments.to_json(:include => { :property => { only: [:address, :city, :country, :zip_code]} })
    end

    def show 
        apartment = Apartment.find(params[:id])
        render json: apartment.to_json(:include => { :property => { only: [:address, :city, :country, :zip_code]} })
    end

    def create
        apartment = Apartment.new(apartment_params)

        if apartment.save!
            render json: apartment
        else
            render json: "Something went wrong.".to_json  
        end
    end

    def update
        apartment = Apartment.find(params[:id])
        apartment.update(apartment_params) 
        render json: apartment
    end

    def destroy
        apartment = Apartment.find(params[:id])
        apartment.destroy
    end

    private 

    def apartment_params
      params.permit(:name, :property_id, :occupied, :move_in_date)
    end
end
