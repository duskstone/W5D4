class User < ApplicationRecord
    has_many :apples,
    primary_key: :id,
    foreign_key: :student_id,
    class_name: :Enrollment

    has_many :enrolled_courses,
    through: :apples,
    source: :banana

    has_many :instructed_courses,
    primary_key: :id,
    foreign_key: :instructor_id,
    class_name: :Course
end