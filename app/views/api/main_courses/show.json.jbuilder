if @errors.present?
    json.errors do
        json.status @errors.status
        json.title  @errors.title
    end
else
    json.data do
        json.type   "mainCourse"
        json.id     @mainCourse.id
        json.attributes do
            json.description    @mainCourse.description
            json.isActive       @mainCourse.isActive
        end
    end
end