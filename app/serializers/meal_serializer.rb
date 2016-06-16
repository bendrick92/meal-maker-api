class MealSerializer < ActiveModel::Serializer
  attributes :id, :meal_type_id, :main_course_id, :side_id, :is_public, :is_active
  belongs_to :main_course
  belongs_to :meal_type
  belongs_to :side
end
