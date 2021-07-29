class Patient < ApplicationRecord
    has_many :apointements
    has_many :doctors, through: :appointements
    belongs_to :city
end
