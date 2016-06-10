# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create(
    [
        { username: 'user1' },
        { username: 'user2' },
        { username: 'user3' }
    ]
)
main_courses = MainCourse.create(
    [
        { description: 'Burger', isActive: true },
        { description: 'Fettucine Alfredo', isActive: true },
        { description: 'Lasagna', isActive: true }
    ]
)
sides = Side.create(
    [
        { description: 'Mashed Potatoes', isActive: true },
        { description: 'French Fries', isActive: true },
        { description: 'Garlic Bread', isActive: true }
    ]
)
meal_types = MealType.create(
    [
        { description: 'Breakfast', isActive: true },
        { description: 'Lunch', isActive: true },
        { description: 'Dinner', isActive: true }
    ]
)
meals = Meal.create(
    [
        { mealTypeId: 3, userId: 1, mainCourseId: 1, sideId: 2, isPublic: true, isActive: true },
        { mealTypeId: 3, userId: 1, mainCourseId: 3, sideId: 3, isPublic: false, isActive: true }
    ]
)