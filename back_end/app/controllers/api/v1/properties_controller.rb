class Api::V1::PropertiesController < ApplicationController
# Might need to add the include to the create and update 

    def index
        properties = Property.all 
        render json: properties.to_json(:include => [{ :owner => { only: :name} }, :images])
    end

    def show 
        property = Property.find(params[:id])
        images = property.images.map{|image| url_for(image)}

        render json: property.to_json(:include => [{ :owner => { only: :name} }, :images])
    end

    def create
        property = Property.new(property_params)

        if property.save!
            render json: property
        else
            render json: "Something went wrong.".to_json  
        end
    end

    def update
        property = Property.find(params[:id])
        property.update(property_params) 
        render json: property
    end

    def destroy
        property = Property.find(params[:id])
        property.destroy
    end

    private 

    def property_params
      params.permit(:owner_id, :address, :city, :state, :country, :zip_code, :date_purchased, :purchased_amount, :mortgage_payable, :price_per_unit, :revenue, :number_of_units, :occupied_units, :cap_rate, :property_type, :building_size, :year_built)
    end
end
