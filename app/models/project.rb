class Project < ApplicationRecord
    has_many :donations
    has_many :users, through: :donations

    has_many :volunteer_signups
    has_many :users, through: :volunteer_signups

    belongs_to :admin

    def donation_total
    self.donations.map {|donation| donation.amount}.sum
    end

    # def self.avg_age
    #     age = self.users.map {|user| user.age}
    #     age.sum / age.size
    # end

end
