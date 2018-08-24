class WarningCitaionsController < ApplicationController
  before_action :set_warning_citaion, only: [:show, :edit, :update, :destroy]

  # GET /warning_citaions
  # GET /warning_citaions.json
  def index
    @warning_citaions = WarningCitaion.all
  end

  # GET /warning_citaions/1
  # GET /warning_citaions/1.json
  def show
  end

  # GET /warning_citaions/new
  def new
    @warning_citaion = WarningCitaion.new
  end

  # GET /warning_citaions/1/edit
  def edit
  end

  # POST /warning_citaions
  # POST /warning_citaions.json
  def create
    @warning_citaion = WarningCitaion.new(warning_citaion_params)

    respond_to do |format|
      if @warning_citaion.save
        format.html { redirect_to @warning_citaion, notice: 'Warning citaion was successfully created.' }
        format.json { render :show, status: :created, location: @warning_citaion }
      else
        format.html { render :new }
        format.json { render json: @warning_citaion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /warning_citaions/1
  # PATCH/PUT /warning_citaions/1.json
  def update
    respond_to do |format|
      if @warning_citaion.update(warning_citaion_params)
        format.html { redirect_to @warning_citaion, notice: 'Warning citaion was successfully updated.' }
        format.json { render :show, status: :ok, location: @warning_citaion }
      else
        format.html { render :edit }
        format.json { render json: @warning_citaion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /warning_citaions/1
  # DELETE /warning_citaions/1.json
  def destroy
    @warning_citaion.destroy
    respond_to do |format|
      format.html { redirect_to warning_citaions_url, notice: 'Warning citaion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_warning_citaion
      @warning_citaion = WarningCitaion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def warning_citaion_params
      params.require(:warning_citaion).permit(:book_num, :issued_to, :start_c_num, :end_c_num, :issue_date, :issue_by, :return_date, :return_by, :empty)
    end
end
