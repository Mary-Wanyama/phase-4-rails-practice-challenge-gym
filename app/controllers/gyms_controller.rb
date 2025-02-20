class GymsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def show 
        gym = gym_params 
        render json: gym, status: :ok
    end 

    private 
    def render_not_found_response
        render json: { error: "Gym not found" }, status: :not_found
      end

    def gym_params 
        Gym.find(params[:id])
    end
end
