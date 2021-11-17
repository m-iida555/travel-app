class Reservation < ApplicationRecord
    belongs_to :user,optional:true
    belongs_to :room,optional:true
    
    validates :total_money, numericality: true,presence: true
    validates :term, numericality: true,presence: true
    validates :start, presence: true
    validates :end, presence: true
    validates :persons, presence: true

    
#以下はconfirmアクション内に対するインスタンスメソッド
    def term
        self.term=(self.end - self.start).to_i
    end
    
    def total_money
        self.total_money=self.money.to_i*self.persons.to_i*self.term.to_i
    end
 
end
