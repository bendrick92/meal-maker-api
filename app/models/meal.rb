class Meal < ActiveRecord::Base
    belongs_to :meal_type
    belongs_to :main_course
    belongs_to :side
end
