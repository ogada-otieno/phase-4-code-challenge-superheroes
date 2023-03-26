class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :validation_errors
    #  GET /powers
    def index
        powers = Power.all
        render json: powers, status: :ok, except: [:created_at, :updated_at]
    end

    # GET /powers/:id
    def show
        power = find_power
        render json: power, status: :ok, except: [:created_at, :updated_at]
    end

    # PATCH /powers/:id
    def update
        power  = find_power
        power.update(power_params)
        render json: power, status: 201, except: [:created_at, :updated_at]
    end

    private

    def find_power
        Power.find(params[:id])
    end

    def power_params
        params.permit(:description)
    end

    def not_found_response
        render json: { error:  "Power not found" }, status: 404
    end

    def validation_errors(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
end
