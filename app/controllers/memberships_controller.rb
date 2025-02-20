class MembershipsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def create 
        member = Membership.create(member_params) 
        render json: member, status: :create
    end

    private 
    def member_params 
        params.permit(:gym_id, :client_id, :charge)
    end
    
    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
      end
end
