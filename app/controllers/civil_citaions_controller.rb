class CivilCitaionsController < ApplicationController
  before_action :set_civil_citaion, only: [:show, :edit, :update, :destroy]

  # GET /civil_citaions
  # GET /civil_citaions.json
  def index
    @civil_citaions = CivilCitaion.all
  end

  # GET /civil_citaions/1
  # GET /civil_citaions/1.json
  def show
  end

  # GET /civil_citaions/new
  def new
    @civil_citaion = CivilCitaion.new
  end

  # GET /civil_citaions/1/edit
  def edit
  end

  # POST /civil_citaions
  # POST /civil_citaions.json
  def create
    @civil_citaion = CivilCitaion.new(civil_citaion_params)

    respond_to do |format|
      if @civil_citaion.save
        format.html { redirect_to @civil_citaion, notice: 'Civil citaion was successfully created.' }
        format.json { render :show, status: :created, location: @civil_citaion }
      else
        format.html { render :new }
        format.json { render json: @civil_citaion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /civil_citaions/1
  # PATCH/PUT /civil_citaions/1.json
  def update
    respond_to do |format|
      if @civil_citaion.update(civil_citaion_params)
        format.html { redirect_to @civil_citaion, notice: 'Civil citaion was successfully updated.' }
        format.json { render :show, status: :ok, location: @civil_citaion }
      else
        format.html { render :edit }
        format.json { render json: @civil_citaion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /civil_citaions/1
  # DELETE /civil_citaions/1.json
  def destroy
    @civil_citaion.destroy
    respond_to do |format|
      format.html { redirect_to civil_citaions_url, notice: 'Civil citaion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_civil_citaion
      @civil_citaion = CivilCitaion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def civil_citaion_params
      params.require(:civil_citaion).permit(:book_num, :issued_to, :start_c_num, :end_c_num, :issue_date, :issue_by, :return_date, :return_by, :empty)
    end
end
