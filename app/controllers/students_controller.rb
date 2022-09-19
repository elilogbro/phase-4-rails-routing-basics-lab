class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        grades = Student.all.order(grade: :DESC)
        render json: grades
    end

    def highest_grade
        grades = Student.all.order(grade: :DESC)
        highest = grades[0]
        render json: highest
    end
end
