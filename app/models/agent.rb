class Agent < ApplicationRecord
    has_many :houses

    validates :name, presence: true
    validates :phone, presence: true 
    validates :broker, presence: true 
    has_secure_password 
    before_save {self.name = name.downcase}
end