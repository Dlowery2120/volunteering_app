class Project < ApplicationRecord
    has_many :donations
    has_many :users, through: :donations

    has_many :volunteer_signups
    has_many :users, through: :volunteer_signups

end
