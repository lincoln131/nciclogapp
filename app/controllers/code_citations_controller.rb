class CodeCitationsController < ApplicationController
  before_action :set_code_citation, only: [:show, :edit, :update, :destroy]

  # GET /code_citations
  # GET /code_citations.json
  def index
    @code_citations = CodeCitation.all
  end

  # GET /code_citations/1
  # GET /code_citations/1.json
  def show
  end

  # GET /code_citations/new
  def new
    @code_citation = CodeCitation.new
  end

  # GET /code_citations/1/edit
  def edit
  end

  # POST /code_citations
  # POST /code_citations.json
  def create
    @code_citation = CodeCitation.new(code_citation_params)

    respond_to do |format|
      if @code_citation.save
        format.html { redirect_to @code_citation, notice: 'Code citation was successfully created.' }
        format.json { render :show, status: :created, location: @code_citation }
      else
        format.html { render :new }
        format.json { render json: @code_citation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_citations/1
  # PATCH/PUT /code_citations/1.json
  def update
    respond_to do |format|
      if @code_citation.update(code_citation_params)
        format.html { redirect_to @code_citation, notice: 'Code citation was successfully updated.' }
        format.json { render :show, status: :ok, location: @code_citation }
      else
        format.html { render :edit }
        format.json { render json: @code_citation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_citations/1
  # DELETE /code_citations/1.json
  def destroy
    @code_citation.destroy
    respond_to do |format|
      format.html { redirect_to code_citations_url, notice: 'Code citation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_citation
      @code_citation = CodeCitation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def code_citation_params
      params.require(:code_citation).permit(:book_num, :issued_to, :start_c_num, :end_c_num, :issue_date, :issue_by, :return_date, :return_by, :empty)
    end
end
