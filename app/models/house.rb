class House < ApplicationRecord
    belongs_to :agent
    validates :address, presence:true 
    validates :price, presence:true
end
