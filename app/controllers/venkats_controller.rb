class VenkatsController < ApplicationController
  before_action :set_venkat, only: [:show, :edit, :update, :destroy]

  # GET /venkats
  # GET /venkats.json
  def index
    @venkats = Venkat.all
  end

  # GET /venkats/1
  # GET /venkats/1.json
  def show
  end

  # GET /venkats/new
  def new
    @venkat = Venkat.new
  end

  # GET /venkats/1/edit
  def edit
  end

  # POST /venkats
  # POST /venkats.json
  def create
    @venkat = Venkat.new(venkat_params)

    respond_to do |format|
      if @venkat.save
        format.html { redirect_to @venkat, notice: 'Venkat was successfully created.' }
        format.json { render :show, status: :created, location: @venkat }
      else
        format.html { render :new }
        format.json { render json: @venkat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /venkats/1
  # PATCH/PUT /venkats/1.json
  def update
    respond_to do |format|
      if @venkat.update(venkat_params)
        format.html { redirect_to @venkat, notice: 'Venkat was successfully updated.' }
        format.json { render :show, status: :ok, location: @venkat }
      else
        format.html { render :edit }
        format.json { render json: @venkat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venkats/1
  # DELETE /venkats/1.json
  def destroy
    @venkat.destroy
    respond_to do |format|
      format.html { redirect_to venkats_url, notice: 'Venkat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venkat
      @venkat = Venkat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def venkat_params
      params.require(:venkat).permit(:name, :city, :country, :email)
    end
end
