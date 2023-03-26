class HerosController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response
    # GET /heroes
    def index
        heroes = Hero.all
        render json: heroes, status: :ok
    end

    # GET /heroes/:id
    def show
        hero = Hero.find(params[:id])
        render json: hero, serializer: HeroPowerSerializer, status: :ok
    end

    private

    def not_found_response
        render json: { error: "Hero not found" }, status: 404
    end
end
