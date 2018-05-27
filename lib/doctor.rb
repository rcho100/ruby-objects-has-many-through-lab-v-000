class Doctor
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

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
    
  end
  #The `Doctor` class needs an instance method, `#new_appointment`, that takes
  #in a date and an instance of the `Patient` class and creates a new appointment.
  #That appointment should know that it belongs to the doctor
end
