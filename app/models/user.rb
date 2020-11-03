class User < ApplicationRecord
    has_secure_password
    has_many :appointements
    has_many :cars, through: :appointements
end
