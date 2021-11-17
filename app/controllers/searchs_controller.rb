class SearchsController < ApplicationController
    def search
       @posts = Room.search(params[:search])
     end
end
