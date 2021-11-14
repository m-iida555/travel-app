class Room < ApplicationRecord
    belongs_to :user,optional: true
    has_many :reservations
    
    mount_uploader :roompic, RoompicUploader
    
    validates :money, numericality: true,presence: true
    validates :roompic, presence: true
    validates :roomname, presence: true
end
