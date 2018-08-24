class ParkingCitationsController < ApplicationController
  before_action :set_parking_citation, only: [:show, :edit, :update, :destroy]

  # GET /parking_citations
  # GET /parking_citations.json
  def index
    @parking_citations = ParkingCitation.all
  end

  # GET /parking_citations/1
  # GET /parking_citations/1.json
  def show
  end

  # GET /parking_citations/new
  def new
    @parking_citation = ParkingCitation.new
  end

  # GET /parking_citations/1/edit
  def edit
  end

  # POST /parking_citations
  # POST /parking_citations.json
  def create
    @parking_citation = ParkingCitation.new(parking_citation_params)

    respond_to do |format|
      if @parking_citation.save
        format.html { redirect_to @parking_citation, notice: 'Parking citation was successfully created.' }
        format.json { render :show, status: :created, location: @parking_citation }
      else
        format.html { render :new }
        format.json { render json: @parking_citation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parking_citations/1
  # PATCH/PUT /parking_citations/1.json
  def update
    respond_to do |format|
      if @parking_citation.update(parking_citation_params)
        format.html { redirect_to @parking_citation, notice: 'Parking citation was successfully updated.' }
        format.json { render :show, status: :ok, location: @parking_citation }
      else
        format.html { render :edit }
        format.json { render json: @parking_citation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parking_citations/1
  # DELETE /parking_citations/1.json
  def destroy
    @parking_citation.destroy
    respond_to do |format|
      format.html { redirect_to parking_citations_url, notice: 'Parking citation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parking_citation
      @parking_citation = ParkingCitation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parking_citation_params
      params.require(:parking_citation).permit(:book_num, :issued_to, :start_c_num, :end_c_num, :issue_date, :issue_by, :return_date, :return_by, :empty)
    end
end
