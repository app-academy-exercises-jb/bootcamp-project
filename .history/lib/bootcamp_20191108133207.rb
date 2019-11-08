class Bootcamp
    def initialize(name, slogan, student_capacity)
        @name, @slogan, @student_capacity = name, slogan, student_capacity
        @teachers, @students, @grades = Array.new, Array.new, Hash.new { |h, k| h[k] = Array.new }
    end

    def name
        @name
    end

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    def hire(prof)
        @teachers << prof
    end

    def enroll(student)
        if @students.length < @student_capacity
            @students << student
            return true
        else
            return false
        end
    end

    def enrolled?(student)
        @students.include?(student)
    end

    def student_to_teacher_ratio
        students.length / teachers.length
    end

    def add_grade(student, grade)
        if enrolled?(student)
            @grades[student] << grade
            return true
        else
            return false
        end
    end

    def num_grades(student)
        @grades[student].length
    end

    def average_grade(student)
        enrolled?(student) || @grades[student].length == 0 ? @grades[student].sum / @grades[student].length : nil
    end

end
