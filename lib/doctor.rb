require 'pry'
class Doctor
  attr_reader :name

  @@all = []
  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
    # self.appointment
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    appointments.collect {|appointment| appointment.patient}
  end
end
