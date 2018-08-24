class CodeCitaionsController < ApplicationController
  before_action :set_code_citaion, only: [:show, :edit, :update, :destroy]

  # GET /code_citaions
  # GET /code_citaions.json
  def index
    @code_citaions = CodeCitaion.all
  end

  # GET /code_citaions/1
  # GET /code_citaions/1.json
  def show
  end

  # GET /code_citaions/new
  def new
    @code_citaion = CodeCitaion.new
  end

  # GET /code_citaions/1/edit
  def edit
  end

  # POST /code_citaions
  # POST /code_citaions.json
  def create
    @code_citaion = CodeCitaion.new(code_citaion_params)

    respond_to do |format|
      if @code_citaion.save
        format.html { redirect_to @code_citaion, notice: 'Code citaion was successfully created.' }
        format.json { render :show, status: :created, location: @code_citaion }
      else
        format.html { render :new }
        format.json { render json: @code_citaion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_citaions/1
  # PATCH/PUT /code_citaions/1.json
  def update
    respond_to do |format|
      if @code_citaion.update(code_citaion_params)
        format.html { redirect_to @code_citaion, notice: 'Code citaion was successfully updated.' }
        format.json { render :show, status: :ok, location: @code_citaion }
      else
        format.html { render :edit }
        format.json { render json: @code_citaion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_citaions/1
  # DELETE /code_citaions/1.json
  def destroy
    @code_citaion.destroy
    respond_to do |format|
      format.html { redirect_to code_citaions_url, notice: 'Code citaion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_citaion
      @code_citaion = CodeCitaion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def code_citaion_params
      params.require(:code_citaion).permit(:book_num, :issued_to, :start_c_num, :end_c_num, :issue_date, :issue_by, :return_date, :return_by, :empty)
    end
end
