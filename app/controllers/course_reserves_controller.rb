class CourseReservesController < ApplicationController
  before_action :set_course_reserf, only: [:show, :edit, :update, :destroy]

  # GET /course_reserves
  # GET /course_reserves.json
  def index
    @course_reserves = CourseReserve.all
  end

  # GET /course_reserves/1
  # GET /course_reserves/1.json
  def show
  end

  # GET /course_reserves/new
  def new
    @course_reserf = CourseReserve.new
  end

  # GET /course_reserves/1/edit
  def edit
  end

  # POST /course_reserves
  # POST /course_reserves.json
  def create
    @course_reserf = CourseReserve.new(course_reserf_params)

    respond_to do |format|
      if @course_reserf.save
        format.html { redirect_to @course_reserf, notice: 'Course reserve was successfully created.' }
        format.json { render :show, status: :created, location: @course_reserf }
      else
        format.html { render :new }
        format.json { render json: @course_reserf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_reserves/1
  # PATCH/PUT /course_reserves/1.json
  def update
    respond_to do |format|
      if @course_reserf.update(course_reserf_params)
        format.html { redirect_to @course_reserf, notice: 'Course reserve was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_reserf }
      else
        format.html { render :edit }
        format.json { render json: @course_reserf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_reserves/1
  # DELETE /course_reserves/1.json
  def destroy
    @course_reserf.destroy
    respond_to do |format|
      format.html { redirect_to course_reserves_url, notice: 'Course reserve was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_reserf
      @course_reserf = CourseReserve.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_reserf_params
      params[:course_reserf]
    end
end
