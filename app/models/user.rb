class User < ActiveRecord::Base
    has_secure_password
    has_many :rides 
    has_many :attractions, through: :rides
    validates :name, presence: true
    validates :password, presence: true
    validates :nausea, presence: true
    validates :happiness, presence: true
    validates :height, presence: true
    validates :tickets, presence: true
    

    def mood 
        if self.nausea > self.happiness
            return "sad"
        else 
            return "happy" 
        end
    end


end
