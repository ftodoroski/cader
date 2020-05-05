class Api::V1::ApartmentsController < ApplicationController
# Might need to add the include to the create and update 

    def index
        apartments = Apartment.all 
        render json: apartments.to_json(:include => { :property => { only: [:address, :city, :country, :zip_code]} })
    end

    def unoccupied_units
    #    apartments = Apartment.all 
    #    render json: apartments, :include => { :property => { only: [:id, :address, :city, :country, :zip_code] } }

        unoccupied_units = []
        properties = Property.all.select { |property| property.owner.id == params[:id].to_i }

        properties.each do |property|
            property.apartments.each do |apartment|
               unoccupied_units << apartment unless apartment.occupied
            end
        end

        render json: unoccupied_units, :include => { :property => { only: [:address, :city, :state,  :country, :zip_code, :price_per_unit] } }
    end

    def unoccupied_property_units
        unoccupied_property_units = []
        property = Property.find(params[:id])


        property.apartments.each do |apartment|
            unoccupied_property_units << apartment unless apartment.occupied
        end
      
        render json: unoccupied_property_units, :include => { :property => { only: [:address, :city, :state,  :country, :zip_code, :price_per_unit] } }
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
