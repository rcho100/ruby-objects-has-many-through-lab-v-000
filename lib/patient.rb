class Patient
  @@all = []
  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def name
    @name
  end

  def new_appointment(doctor, date)
    
  end
end
