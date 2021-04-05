class User < ApplicationRecord
    has_secure_password

    has_many :donations
    has_many :volunteer_signups 
    has_many :projects, through: :volunteer_signups
    has_many :projects, through: :donations

    validates :email, uniqueness: true

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    # def donation_attributes=(donation_attributes_hash)
    #     donation_attributes_hash.each do |index, attributes|
    #         if attributes && attributes ["name"].blank?
    #             donation = Donation.find_or_create_by ()
    # end 

    # def project_attributes=(project_attributes_hash)
    #     project_attributes_hash.each do |index, attributes|
    #         if attributes && attributes ["name"].blank?
    #             project = Project.find_or_create_by(name: project_attributes_hash ["name"])
    #             self.projects << project 
    #         end 
        # end 


end
