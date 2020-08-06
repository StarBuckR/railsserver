class Notification < ApplicationRecord
    validates :machine_name, presence: true
    validates :message, presence: true
end
