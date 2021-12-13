class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    gradeList = Student.order(grade: :desc)
    render json: gradeList
  end

  def highest_grade
    highest_grade_student = Student.order(grade: :desc).limit(1)[0]
    render json: highest_grade_student
  end
end
