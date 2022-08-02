class Doctor < ActiveRecord::Base
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations

  validates :last_name, presence: true
end


# Without :through, we would have to iterate on all doctor consultations to find
# the patients of a given doctor

# doctor = Doctor.first
# patients = []

# doctor.consultations.each do |consultation|
#   patient = consultation.patient
#   patients << patient if !patients.includes?(patient)
# end
