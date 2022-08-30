class DungeonsController < ApplicationController
 def index
  @dungeons = Dungeon.all
end

def show
@dungeon = Dungeon.find(params[:id])
end

def new
  @dungeon = Dungeon.new
end
#changes
def create
 @dungeon = Dungeon.new(dungeon_params)
 @dungeon.save
 redirect_to dungeon_path(@dungeon)
end

private
def dungeon_params
  params.require(:dungeon).permit(:name, :address, :price, :description, :guests, :dragon)
 end
end
