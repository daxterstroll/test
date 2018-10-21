class ClassSchedulesController < ApplicationController
  before_action :set_class_schedule, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /class_schedules
  # GET /class_schedules.json
  def index
    @title = "Розклад занять на #{Time.now.year} - #{Time.now.year+1} навчальний рік"
    @class_schedules = ClassSchedule.all
    @courses = Course.all
  end

  # GET /class_schedules/1
  # GET /class_schedules/1.json
  def show
  end

  # GET /class_schedules/new
  def new
    @title = 'Додати новий розклад'
    @class_schedule = ClassSchedule.new
  end

  # GET /class_schedules/1/edit
  def edit
  end

  # POST /class_schedules
  # POST /class_schedules.json
  def create
    @class_schedule = ClassSchedule.new(class_schedule_params)

    respond_to do |format|
      if @class_schedule.save
        format.html { redirect_to class_schedules_path, notice: 'Розклад занять був успішно доданий.' }
        format.json { render :index, status: :created, location: @class_schedule }
      else
        format.html { render :new }
        format.json { render json: @class_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_schedules/1
  # PATCH/PUT /class_schedules/1.json
  def update
    respond_to do |format|
      if @class_schedule.update(class_schedule_params)
        format.html { redirect_to class_schedules_path, notice: 'Розклад занять був успішно оновлений.' }
        format.json { render :index, status: :ok, location: @class_schedule }
      else
        format.html { render :edit }
        format.json { render json: @class_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_schedules/1
  # DELETE /class_schedules/1.json
  def destroy
    @class_schedule.destroy
    respond_to do |format|
      format.html { redirect_to class_schedules_url, notice: 'Class schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_schedule
      @class_schedule = ClassSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_schedule_params
      params.require(:class_schedule).permit(:attachment, {course_ids: []})
    end
end
