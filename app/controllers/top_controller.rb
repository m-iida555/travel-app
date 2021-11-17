class TopController < ApplicationController
  def index
  end
  
  def tokyo
      @tokyo=Room.where("area LIKE ?","%東京%")
  end

  def oosaka
      @oosaka=Room.where("area LIKE ?","%大阪%")
  end
  
  def kyoto
      @kyoto=Room.where("area LIKE ?","%京都%")
  end
  
  def sapporo
      @sapporo=Room.where("area LIKE ?","%札幌%")
  end
  
  
  
end
