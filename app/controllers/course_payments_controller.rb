class CoursePaymentsController < ApplicationController
  before_action :set_course_payment, only: [:show, :edit, :update, :destroy]

  # GET /course_payments
  # GET /course_payments.json
  def index
    @course_payments = CoursePayment.all
  end

  # GET /course_payments/1
  # GET /course_payments/1.json
  def show
  end

  # GET /course_payments/new
  def new
    @course_payment = CoursePayment.new
  end

  # GET /course_payments/1/edit
  def edit
  end

  # POST /course_payments
  # POST /course_payments.json
  def create
    @course_payment = CoursePayment.new(course_payment_params)

    respond_to do |format|
      if @course_payment.save
        format.html { redirect_to @course_payment, notice: 'Course payment was successfully created.' }
        format.json { render :show, status: :created, location: @course_payment }
      else
        format.html { render :new }
        format.json { render json: @course_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_payments/1
  # PATCH/PUT /course_payments/1.json
  def update
    respond_to do |format|
      if @course_payment.update(course_payment_params)
        format.html { redirect_to @course_payment, notice: 'Course payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_payment }
      else
        format.html { render :edit }
        format.json { render json: @course_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_payments/1
  # DELETE /course_payments/1.json
  def destroy
    @course_payment.destroy
    respond_to do |format|
      format.html { redirect_to course_payments_url, notice: 'Course payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_payment
      @course_payment = CoursePayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_payment_params
      params[:course_payment]
    end
end
