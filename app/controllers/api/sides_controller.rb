module Api
    class SidesController < ApplicationController
        public
            def index
                @sides = Side.where(nil)
                render json: @sides
            end
            
            def show
                find_by_id
            end
            
        private
            def find_by_id
                @side = Side.where("id = ?", params[:id]).first
                
                if @side.blank?
                    render :json => {
                        :errors => [
                            {
                                :status => "404",
                                :source => "/api/sides/#{params[:id]}",
                                :title => "not-found",
                                :detail => "Side with id of #{params[:id]} could not be found"
                            }
                        ]
                    }.to_json,
                    :status => 404
                else
                    render json: @side
                end
            end
    end
end
