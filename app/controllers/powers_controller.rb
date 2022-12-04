class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index 
        render json: Power.all
    end

    def show
        power = Power.find_by(id: params[:id])
        if power
            render json: power
        else
            render json: {error: "Power not found"}, status: 404
        end
    end

    def update
        power = Power.find(params[:id])
        power.update!(power_params)
        render json: power
    end

    private 

    def power_params
        params.permit(:name, :description)
    end

    def render_not_found_response
        render json: { error: "Power not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors}, status: :unprocessable_entity
    end
end
