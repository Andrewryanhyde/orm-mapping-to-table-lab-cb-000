class Student
  attr_accessor :name, :grade
  attr_reader :id

  def initialize(name, grade, id=nil)
    @name = name
    @grade = grade
    @id = id
  end


  self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER,
        name TEXT,
        grade INTEGER
      )
      SQL

      DB[:conn].execute(sql)
  end

  self.drop_table
    sql = <<-SQL
      DROP TABLE student
    SQL

    DB[:conn].execute(sql)
  end



  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

end
