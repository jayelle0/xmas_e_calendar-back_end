class User < ApplicationRecord
    has_secure_password
    has_many :calendars 
    validates :username, uniqueness: { case_sensitive: false }
     
end
