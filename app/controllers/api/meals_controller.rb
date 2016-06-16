module Api
    class MealsController < ApplicationController
        public
            def index
                @meals = Meal.where(nil)
                
                #filterValue = ""
                #filterType = ""
                
                #if params[:userId].present?
                #    filterValue = params[:userId]
                #    filterType = "userId"
                #    @meals = @meals.with_user_id(filterValue)
                #end
                
                #if @meals.blank?
                #    render :json => {
                #        :errors => [
                #            {
                #                :status => "404",
                #                :source => "/api/meals/#{params[:id]}",
                #                :title => "not-found",
                #                :detail => "Meal with a #{filterType} of #{filterValue} could not be found"
                #            }
                #        ]
                #    }.to_json,
                #    :status => 404
                #else
                    render json: @meals
                #end
            end
            
            def show
                find_by_id
            end
            
        private
            def find_by_id
                @meal = Meal.where("id = ?", params[:id]).first
                
                if @meal.blank?
                    render :json => {
                        :errors => [
                            {
                                :status => "404",
                                :source => "/api/meals/#{params[:id]}",
                                :title => "not-found",
                                :detail => "Meal with id of #{params[:id]} could not be found"
                            }
                        ]
                    }.to_json,
                    :status => 404
                else
                    render json: @meal
                end
            end
    end
end
