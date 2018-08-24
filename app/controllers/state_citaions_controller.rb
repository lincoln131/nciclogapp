class StateCitaionsController < ApplicationController
  before_action :set_state_citaion, only: [:show, :edit, :update, :destroy]

  # GET /state_citaions
  # GET /state_citaions.json
  def index
    @state_citaions = StateCitaion.all
  end

  # GET /state_citaions/1
  # GET /state_citaions/1.json
  def show
  end

  # GET /state_citaions/new
  def new
    @state_citaion = StateCitaion.new
  end

  # GET /state_citaions/1/edit
  def edit
  end

  # POST /state_citaions
  # POST /state_citaions.json
  def create
    @state_citaion = StateCitaion.new(state_citaion_params)

    respond_to do |format|
      if @state_citaion.save
        format.html { redirect_to @state_citaion, notice: 'State citaion was successfully created.' }
        format.json { render :show, status: :created, location: @state_citaion }
      else
        format.html { render :new }
        format.json { render json: @state_citaion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /state_citaions/1
  # PATCH/PUT /state_citaions/1.json
  def update
    respond_to do |format|
      if @state_citaion.update(state_citaion_params)
        format.html { redirect_to @state_citaion, notice: 'State citaion was successfully updated.' }
        format.json { render :show, status: :ok, location: @state_citaion }
      else
        format.html { render :edit }
        format.json { render json: @state_citaion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /state_citaions/1
  # DELETE /state_citaions/1.json
  def destroy
    @state_citaion.destroy
    respond_to do |format|
      format.html { redirect_to state_citaions_url, notice: 'State citaion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_citaion
      @state_citaion = StateCitaion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_citaion_params
      params.require(:state_citaion).permit(:book_num, :issued_to, :start_c_num, :end_c_num, :issue_date, :issue_by, :return_date, :return_by, :empty)
    end
end
