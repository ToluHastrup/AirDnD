class DungeonsController < ApplicationController


def show
@dungeon = Dungeon.find(params[:id])
end

def index
  if params[:query].present?
    # @dungeons = Dungeon.where(name: params[:query])
    @dungeons = Dungeon.where("name ILIKE ?", "%#{params[:query]}%")
  else
    @dungeons = Dungeon.all
  end
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
