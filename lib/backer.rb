class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        projectbacker = ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.select{|project| project.backer == self}.map{|project| project.project}
    end
end