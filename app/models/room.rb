class Room < ApplicationRecord
    belongs_to :user,optional: true
    has_many :reservations
    
    mount_uploader :roompic, RoompicUploader
    
    validates :money, numericality: true,presence: true
    validates :roompic, presence: true
    validates :roomname, presence: true
    
    def self.search(search)
     if search
         where(['area LIKE ? OR roompic LIKE ? OR roominfo LIKE ?','%'+search+'%','%'+search+'%','%'+search+'%'])
        else
        redirect_to searchs_nothing_path
       end
    end
end
