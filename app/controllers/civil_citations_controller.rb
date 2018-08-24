class CivilCitationsController < ApplicationController
  before_action :set_civil_citation, only: [:show, :edit, :update, :destroy]

  # GET /civil_citations
  # GET /civil_citations.json
  def index
    @civil_citations = CivilCitation.all
  end

  # GET /civil_citations/1
  # GET /civil_citations/1.json
  def show
  end

  # GET /civil_citations/new
  def new
    @civil_citation = CivilCitation.new
  end

  # GET /civil_citations/1/edit
  def edit
  end

  # POST /civil_citations
  # POST /civil_citations.json
  def create
    @civil_citation = CivilCitation.new(civil_citation_params)

    respond_to do |format|
      if @civil_citation.save
        format.html { redirect_to @civil_citation, notice: 'Civil citation was successfully created.' }
        format.json { render :show, status: :created, location: @civil_citation }
      else
        format.html { render :new }
        format.json { render json: @civil_citation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /civil_citations/1
  # PATCH/PUT /civil_citations/1.json
  def update
    respond_to do |format|
      if @civil_citation.update(civil_citation_params)
        format.html { redirect_to @civil_citation, notice: 'Civil citation was successfully updated.' }
        format.json { render :show, status: :ok, location: @civil_citation }
      else
        format.html { render :edit }
        format.json { render json: @civil_citation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /civil_citations/1
  # DELETE /civil_citations/1.json
  def destroy
    @civil_citation.destroy
    respond_to do |format|
      format.html { redirect_to civil_citations_url, notice: 'Civil citation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_civil_citation
      @civil_citation = CivilCitation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def civil_citation_params
      params.require(:civil_citation).permit(:book_num, :issued_to, :start_c_num, :end_c_num, :issue_date, :issue_by, :return_date, :return_by, :empty)
    end
end
