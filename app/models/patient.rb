class Patient < ApplicationRecord
  has_many :physicians, through: :appointments, dependent: :destroy
  has_many :appointments

end
