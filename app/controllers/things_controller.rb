class ThingsController < ApplicationController
  def new
    @thing = Thing.new
  end
  def create
    @thing = Thing.create(thing_params)
    if @thing.valid?
      redirect_to things_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  def index
    @things = Thing.all
  end

  private

  def thing_params
    params.require(:thing).permit(:name, :skill)
  end

end
