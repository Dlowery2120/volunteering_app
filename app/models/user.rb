class User < ApplicationRecord
    has_many :donations
    has_many :volunteer_signups 
    has_many :projects, through: :volunteer_signups
    has_many :projects, through: :donations

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end
