class HousingUnitsController < ApplicationController

    def index
        @unit = HousingUnit.order('created_at DESC')
        render json: {status: "Success", message:"Loaded homes", data: @unit}
    end
    def show
        @unit = HousingUnit.find(params[:id])
        render json: @unit
    end
    def update
        @unit = HousingUnit.find(params[:id])
        # render json: @unit
        if @unit.update(unit_params)
            render json: {status: 'SUCCESS', message:'New House Added!', data:@unit}, status: :ok
        else
            render json: {status: 'ERROR', message:'User Not Saved!', data:@unit.errors}, status: :unprocessable_entity
        end
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
    def destroy
        @unit = HousingUnit.find(params[:id])
        if @unit.destroy
            render json: "House deleted successfully"
        else
            render json: {status: 'Success', date:@unit.errors, message: "House not deleted"}
    end

    private
    
    def unit_params
        params.permit(:address, :city, :state, :zipcode, :spft, :beds, :baths, :rooms, :description, :unit_type_id, :user_id, :rent, :available_date, :created_at, :updated_at, :id)
    end
end
