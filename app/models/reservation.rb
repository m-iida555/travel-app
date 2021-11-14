class Reservation < ApplicationRecord
    belongs_to :user,optional:true
    belongs_to :room,optional:true
    
#以下はconfirmアクション内に対するインスタンスメソッド
    def term
        self.term=self.end.to_i - self.start.to_i
    end
    
    def total_money
        self.total_money=self.money.to_i*self.persons.to_i*self.term.to_i
    end

end
