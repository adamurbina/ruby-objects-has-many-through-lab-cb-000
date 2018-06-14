class Doctor

    attr_accessor :name, :appointments, :patients

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(patient, date)
        appointment = Appointment.new(patient, self, date)
    end

    def appointments

    end

    def patients

    end


end
