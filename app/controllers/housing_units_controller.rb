class HousingUnitsController < ApplicationController
    
    def index
        @unit = HousingUnit.order('created_at DESC')
        render json: {status: "Success", message:"Loaded homes", data: @unit}
    end
    def show

    end
    def edit

    end
    def create
        @unit = HousingUnit.new(unit_params)
        # render json: @unit
        if @unit.save
            render json: {status: 'SUCCESS', message:'New House Added!', data:@unit}, status: :ok
        else
            render json: {status: 'ERROR', message:'User Not Saved!', data:@unit.errors}, status: :unprocessable_entity
        end
    end
    def update

    end
    def destroy

    end

    private
    
    def unit_params
        params.permit(:address, :city, :state, :zipcode, :spft, :beds, :baths, :rooms, :description, :unit_type_id, :user_id, :rent, :available_date, :created_at, :updated_at, :id)
    end
end
