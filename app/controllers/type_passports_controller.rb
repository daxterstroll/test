class TypePassportsController < ApplicationController
  before_action :set_type_passport, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /type_passports
  # GET /type_passports.json
  def index
    @type_passports = TypePassport.all
  end

  # GET /type_passports/1
  # GET /type_passports/1.json
  def show
  end

  # GET /type_passports/new
  def new
    @type_passport = TypePassport.new
  end

  # GET /type_passports/1/edit
  def edit
  end

  # POST /type_passports
  # POST /type_passports.json
  def create
    @type_passport = TypePassport.new(type_passport_params)

    respond_to do |format|
      if @type_passport.save
        format.html { redirect_to @type_passport, notice: 'Type passport was successfully created.' }
        format.json { render :show, status: :created, location: @type_passport }
      else
        format.html { render :new }
        format.json { render json: @type_passport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_passports/1
  # PATCH/PUT /type_passports/1.json
  def update
    respond_to do |format|
      if @type_passport.update(type_passport_params)
        format.html { redirect_to @type_passport, notice: 'Type passport was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_passport }
      else
        format.html { render :edit }
        format.json { render json: @type_passport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_passports/1
  # DELETE /type_passports/1.json
  def destroy
    @type_passport.destroy
    respond_to do |format|
      format.html { redirect_to type_passports_url, notice: 'Type passport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_passport
      @type_passport = TypePassport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_passport_params
      params.require(:type_passport).permit(:name)
    end
end
