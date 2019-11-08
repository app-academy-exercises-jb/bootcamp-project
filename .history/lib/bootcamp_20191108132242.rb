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

    def hire=(prof)
        @teachers << prof
    end

    def enroll=(student)
        if @students.length < @student_capacity
            @students << student
            return true
        else
            return false
        end
    end


end
