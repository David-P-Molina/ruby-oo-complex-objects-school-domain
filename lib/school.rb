# code here!
require 'pry'
class School
    attr_accessor :roster 
  
    def initialize(name)
        @name=name
        @roster={}
    end
    def name
        @name
    end

    # def grade
    #     @grade
    # end
    def grade(grade)
        @roster[grade]
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def sort
        # @roster[grade].collect do |name|
        #     name.sort
        # en  
        @roster.collect do |grade, names|

               names.sort! 
        end

        return @roster

    end

end
