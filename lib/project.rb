class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        projectbacker = ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.select{|project| project.project == self }.map{|project| project.backer}
    end
end