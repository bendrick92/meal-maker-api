# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

main_courses = MainCourse.create(
    [
        { description: 'Burger', is_active: true },
        { description: 'Fettucine Alfredo', is_active: true },
        { description: 'Lasagna', is_active: true }
    ]
)
sides = Side.create(
    [
        { description: 'Mashed Potatoes', is_active: true },
        { description: 'French Fries', is_active: true },
        { description: 'Garlic Bread', is_active: true }
    ]
)
meal_types = MealType.create(
    [
        { description: 'Breakfast', is_active: true },
        { description: 'Lunch', is_active: true },
        { description: 'Dinner', is_active: true }
    ]
)
meals = Meal.create(
    [
        { meal_type_id: 3, main_course_id: 1, side_id: 2, is_public: true, is_active: true },
        { meal_type_id: 3, main_course_id: 3, side_id: 3, is_public: false, is_active: true }
    ]
)