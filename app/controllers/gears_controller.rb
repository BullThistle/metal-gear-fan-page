class GearsController < ApplicationController
  def index
    @gears = Gear.all
    render :index
  end
  def show
    @gear = Gear.find(params[:id])
    render :show
  end
  def new
    @gear = Gear.new
    render :new
  end
  def create
    @gear = Gear.new(gear_params)
    if @gear.save
      redirect_to  gears_path
    else
      render :new
    end
  end
  def edit
    @gear = Gear.find(params[:id])
    render :edit
  end
  def update
    @gear= Gear.find(params[:id])
    if @gear.update(gear_params)
      redirect_to gears_path
    else
      render :edit
    end
  end
  def destroy
    @gear = Gear.find(params[:id])
    @gear.destroy
    redirect_to gears_path
  end

private
  def gear_params
    params.require(:gear).permit(:name)
  end
end
