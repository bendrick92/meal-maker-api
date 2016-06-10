if @errors.present?
    json.errors do
        json.status @errors.status
        json.title  @errors.title
    end
else
    json.data do
        json.type   "side"
        json.id     @side.id
        json.attributes do
            json.description    @side.description
            json.isActive       @side.isActive
        end
    end
end