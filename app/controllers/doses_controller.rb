class DosesController < ApplicationController

  before_action :find_cocktail, only: [ :new, :create ]

  def index
  end

  def show
  end

  def new
    @dose = Dose.new
  end

  def create
    @dose = @cocktail.doses.build(dose_params)
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
  end
end


  private

  def dose_params
    params.require(:dose).permit(:description)
  end
  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
