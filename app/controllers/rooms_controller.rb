class RoomsController < ApplicationController


    def index
     @rooms=current_user.rooms#アソシエーションを築いた上での１対多のユーザーひとりの一覧を表示させる方法
    end
    
    def new
     @room=Room.new
    end

    def create
    @room=Room.new(room_index)   #.merge(user_id: current_user.id))
     if @room.save
     flash[:notice]="新規登録しました"
      redirect_to rooms_path#room_list_room_path(@room.id)
     else
      redirect_to new_room_path
     end
    end
    
    def show
     #@user=User.where(id: params[current_user.id])#Userモデルオブジョクトの一つの配列（id指定した一つ）を渡す書き方。
     #@reservation=Reservation.new
     #@room=Room.find(params[:id])#where(id: params[:id])
     #@money=Room.where(id: params[:id])#eachの際に記述
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
    




  private

  def room_index
    params.require(:room).permit(:roompic, :roomname, :roominfo, :money, :area, :user_id)#.merge(user_id: current_user.id)
  end


end
