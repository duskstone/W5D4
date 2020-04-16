class Course < ApplicationRecord
    has_many :enrollments,
    primary_key: :id,
    foreign_key: :course_id,
    class_name: :Enrollment

    has_many :enrolled_students,
    through: :enrollments,
    source: :user

    belongs_to :instructor,
    primary_key: :id,
    foreign_key: :instructor_id,
    class_name: :User

    belongs_to :prerequisite,
    primary_key: :id,        #prequisite(s)? or prequisite?   
    foreign_key: :prereq_id, 
    class_name: :Course,
    optional: true

end


# class User < ActiveRecord::Base
#   has_many :players, 
#   :class_name => "User",  
#   :foreign_key => "coach_id"
#   belongs_to :coach, 
#   :class_name => "User"
# end