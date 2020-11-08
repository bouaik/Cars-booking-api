class Appointement < ApplicationRecord
    belongs_to :user
    belongs_to :car

    validates :city, presence: true
    validates :date, presence: true
    validates :time, presence: true
end
