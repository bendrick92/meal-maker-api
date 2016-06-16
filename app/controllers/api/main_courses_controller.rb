module Api
    class MainCoursesController < ApplicationController
        public
            def index
                @mainCourses = MainCourse.where(nil)
                render json: @mainCourses
            end
            
            def show
                find_by_id
            end
            
        private
            def find_by_id
                @mainCourse = MainCourse.where("id = ?", params[:id]).first
                
                if @mainCourse.blank?
                    render :json => {
                        :errors => [
                            {
                                :status => "404",
                                :source => "/api/mainCourses/#{params[:id]}",
                                :title => "not-found",
                                :detail => "MainCourse with id of #{params[:id]} could not be found"
                            }
                        ]
                    }.to_json,
                    :status => 404
                else
                    render json: @mainCourse
                end
            end
    end
end
