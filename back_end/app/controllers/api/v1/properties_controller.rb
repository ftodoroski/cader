class Api::V1::PropertiesController < ApplicationController
# Might need to add the include to the create and update 

    def index
        properties = Property.all.with_attached_images

        render json: properties.map { |property|
            images = property.images.map{|image| url_for(image)}
            property.as_json.merge({images: images})
        }
    end

    def owner_properties
        properties = Property.all.select { |property| property.owner.id == params[:id].to_i }
        render json: properties.map { |property|
            images = property.images.map{|image| url_for(image)}
            property.as_json.merge({images: images})
        }
    end

    def properties_coordinates
        prop_cord = []
        properties = Property.all.select { |property| property.owner.id == params[:id].to_i }

        properties.each do |property| 
            coordinates = Geocoder.search("#{property.address} #{property.city}, #{property.state} #{property.zip_code}")  
          
            prop_cord << {id: property.id, coordinates: coordinates.first.coordinates, address: coordinates.first.address}
        end

        render json: prop_cord
    end

    def property_coordinates
        property = Property.find(params[:id])
        coordinates = Geocoder.search("#{property.address} #{property.city}, #{property.state} #{property.zip_code}")  
        render json: coordinates.first.coordinates
    end

    def show 
        property = Property.find(params[:id])
        images = property.images.map{|image| url_for(image)}
        apartments = property.apartments.to_json(:include => [{ :tenant => { only: [:name, :id] } }])

        # render json: property.to_json(:include => [{ :owner => { only: :name} }, :images])
        # render json: property, :include => try it with this - so you dont need the .to_json because its older syntax
        render json: { property: property, images: images, apartments: JSON.parse(apartments) }

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
