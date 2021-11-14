class ReservationsController < ApplicationController
  def index
  end

    def new_reserve
     @room=Room.find(params[:id])
     @money=Room.where(id: params[:id])
     @user=User.where(id: params[current_user.id])
     @reservation=Reservation.new
    end
    
    def confirm
     @reservation=Reservation.new(permit_params)
     if @reservation.invalid?
     redirect_to new_reserve_path(@reservation.room_id)
     end
     @term=@reservation.term
     @total_money=@reservation.total_money
    end
    
    def create
     #@reservation.room_id=room.id
     @reservation=Reservation.new(permit_params)
     if
      @reservation.save
      flash[:notice]="予約完了しました"
      redirect_to reservation_path(@reservation.id)
      else
      redirect_to new_reserve_reservation_path
     end
     #redirect_to new_reserve_path and return if params[:back] || !@reservation.save
     #redirect_to reservation_path
     
    end
    
    def show #部屋の最終確認
      @reservation=Reservation.find(params[:id])
    end
    def edit
    end
    def update
    
    end
    def destroy
    
    end


    private
    
    def permit_params
        @attr=params.require(:reservation).permit(:id,:start, :end, :term, :persons, :total_money, :user_id, :room_id, :roomname, :money)#確認画面に引数を渡すためにidも必要
    end

end
