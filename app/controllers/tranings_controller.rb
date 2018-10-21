class TraningsController < ApplicationController
  before_action :set_traning, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /tranings
  # GET /tranings.json
  def index
    @tranings = Traning.all
  end

  # GET /tranings/1
  # GET /tranings/1.json
  def show
  end

  # GET /tranings/new
  def new
    @traning = Traning.new
  end

  # GET /tranings/1/edit
  def edit
  end

  # POST /tranings
  # POST /tranings.json
  def create
    @traning = Traning.new(traning_params)

    respond_to do |format|
      if @traning.save
        format.html { redirect_to @traning, notice: 'Traning was successfully created.' }
        format.json { render :show, status: :created, location: @traning }
      else
        format.html { render :new }
        format.json { render json: @traning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tranings/1
  # PATCH/PUT /tranings/1.json
  def update
    respond_to do |format|
      if @traning.update(traning_params)
        format.html { redirect_to @traning, notice: 'Traning was successfully updated.' }
        format.json { render :show, status: :ok, location: @traning }
      else
        format.html { render :edit }
        format.json { render json: @traning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tranings/1
  # DELETE /tranings/1.json
  def destroy
    @traning.destroy
    respond_to do |format|
      format.html { redirect_to tranings_url, notice: 'Traning was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_traning
      @traning = Traning.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def traning_params
      params.require(:traning).permit(:name)
    end
end
