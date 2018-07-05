require 'pry'
class Patient

attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @@all << name
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
    # binding.pry
  end

  def appointments
    Appointment.all.select { |appointment| appointment.patient == self }
  end


  def doctors
    appointments.map {|appointment| appointment.date}
  end

end
