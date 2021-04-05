class Admin < ApplicationRecord
    has_secure_password
    
    has_many :projects

    validates :email, uniqueness: true

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end
