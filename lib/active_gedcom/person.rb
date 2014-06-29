module ActiveGedcom
  class Person
    attr_accessor :id, :name, :sex, :birth, :death, :mother, :father, :famc, :fams, :birthplace, :deathplace
    def initialize(id)
      @id = id
    end
    def mother; famc.wife if famc; end
    def father; famc.husband if famc; end
  end
end
