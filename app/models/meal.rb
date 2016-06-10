class Meal < ActiveRecord::Base
    public
        scope :with_user_id, -> (userId) {
            if userId =~ /\A[-+]?[0-9]+\z/
                result = where("\"userId\" = ?", userId)
            else
                result = none
            end
            
            return result
        }
end
