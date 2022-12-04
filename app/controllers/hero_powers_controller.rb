class HeroPowersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index 
        render json: HeroPower.all
    end

    def create 
        hero_power = HeroPower.create(hero_power_params)
        if hero_power.valid?
            render json: hero_power.hero.to_json(include: :powers)
        else
            render json: {errors: hero_power.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def show
        hero_power = HeroPower.find_by(id: params[:id])
        if hero_power
            render json: hero_power
        else
            render json: {error: "Hero Power not found"}, status: 404
        end
    end

    private 
    def hero_power_params 
        params.permit(:hero_id, :power_id, :strength)
    end

    def render_unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors}, status: :unprocessable_entity
    end
end
