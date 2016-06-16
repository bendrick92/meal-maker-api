class MealTypeSerializer < ActiveModel::Serializer
  attributes :id, :description, :is_active
end
