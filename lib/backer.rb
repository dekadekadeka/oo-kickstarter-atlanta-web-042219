require 'pry'

class Backer
    attr_reader :name, :backed_projects
        def initialize(name)
            @name = name
            @backed_projects = []
        end

        def back_project(project)
            backed_projects << project
            project.backers << self
        end
    end

#Whenever `back_project()` is called to update 
# `@backed_projects`, the project _
# should alsoupdate its `@backers` list_.