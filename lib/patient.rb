class Patient

    attr_accessor :name, :doctors

    def initialize(name)
        @name = name
    end

    def new_appointment(doctor, date)
        appt = Appointment.new(self, doctor, date)
    end



end
