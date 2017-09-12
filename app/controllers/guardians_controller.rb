class GuardiansController < ApplicationController

  before_action :set_guardian, only: [:show, :edit, :update, :destroy]

  def index
    @guardians = Guardian.all
  end

  def show
  end

  def new
    @guardian = Guardian.new
    render partial: "form"
  end

  def create
    @guardian = Guardian.new(guardian_params)
    if @guardian.save
      redirect_to @guardian, notice: 'Guardian Added'
    else
      render partial: "form"
    end
  end

  def edit
  end

  def update
    if @guardian.update(guardian_params)
      redirect_to @guardian, notice: 'Guardian Updated'
    else
      render partial: "form"
    end
  end

  def destroy
    @guardian.destroy
    redirect_to guardians_path, notice: 'Guardian Deleted'
  end

  private
    def set_guardian
      @guardian = Guardian.find(params[:id])
    end

    def guardian_params
      params.require(:guardian).permit(:name, :klass, :subclass, :light, :race, :gender)
    end
end
