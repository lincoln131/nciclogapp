class WarningCitationsController < ApplicationController
  before_action :set_warning_citation, only: [:show, :edit, :update, :destroy]

  # GET /warning_citations
  # GET /warning_citations.json
  def index
    @warning_citations = WarningCitation.all
  end

  # GET /warning_citations/1
  # GET /warning_citations/1.json
  def show
  end

  # GET /warning_citations/new
  def new
    @warning_citation = WarningCitation.new
  end

  # GET /warning_citations/1/edit
  def edit
  end

  # POST /warning_citations
  # POST /warning_citations.json
  def create
    @warning_citation = WarningCitation.new(warning_citation_params)

    respond_to do |format|
      if @warning_citation.save
        format.html { redirect_to @warning_citation, notice: 'Warning citation was successfully created.' }
        format.json { render :show, status: :created, location: @warning_citation }
      else
        format.html { render :new }
        format.json { render json: @warning_citation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /warning_citations/1
  # PATCH/PUT /warning_citations/1.json
  def update
    respond_to do |format|
      if @warning_citation.update(warning_citation_params)
        format.html { redirect_to @warning_citation, notice: 'Warning citation was successfully updated.' }
        format.json { render :show, status: :ok, location: @warning_citation }
      else
        format.html { render :edit }
        format.json { render json: @warning_citation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /warning_citations/1
  # DELETE /warning_citations/1.json
  def destroy
    @warning_citation.destroy
    respond_to do |format|
      format.html { redirect_to warning_citations_url, notice: 'Warning citation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_warning_citation
      @warning_citation = WarningCitation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def warning_citation_params
      params.require(:warning_citation).permit(:book_num, :issued_to, :start_c_num, :end_c_num, :issue_date, :issue_by, :return_date, :return_by, :empty)
    end
end
