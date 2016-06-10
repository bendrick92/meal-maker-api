if @errors.present?
    json.errors do
        json.status @errors.status
        json.title  @errors.title
    end
else
    json.data do
        json.type   "meal"
        json.id     @meal.id
        json.attributes do
            json.mealTypeId    @meal.mealTypeId
            json.userId       @meal.userId
            json.mainCourseId   @meal.mainCourseId
            json.sideId         @meal.sideId
            json.isPublic       @meal.isPublic
            json.isActive       @meal.isActive
        end
    end
end