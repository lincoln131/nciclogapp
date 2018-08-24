class StateCitationsController < ApplicationController
  before_action :set_state_citation, only: [:show, :edit, :update, :destroy]

  # GET /state_citations
  # GET /state_citations.json
  def index
    @state_citations = StateCitation.all
  end

  # GET /state_citations/1
  # GET /state_citations/1.json
  def show
  end

  # GET /state_citations/new
  def new
    @state_citation = StateCitation.new
  end

  # GET /state_citations/1/edit
  def edit
  end

  # POST /state_citations
  # POST /state_citations.json
  def create
    @state_citation = StateCitation.new(state_citation_params)

    respond_to do |format|
      if @state_citation.save
        format.html { redirect_to @state_citation, notice: 'State citation was successfully created.' }
        format.json { render :show, status: :created, location: @state_citation }
      else
        format.html { render :new }
        format.json { render json: @state_citation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /state_citations/1
  # PATCH/PUT /state_citations/1.json
  def update
    respond_to do |format|
      if @state_citation.update(state_citation_params)
        format.html { redirect_to @state_citation, notice: 'State citation was successfully updated.' }
        format.json { render :show, status: :ok, location: @state_citation }
      else
        format.html { render :edit }
        format.json { render json: @state_citation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /state_citations/1
  # DELETE /state_citations/1.json
  def destroy
    @state_citation.destroy
    respond_to do |format|
      format.html { redirect_to state_citations_url, notice: 'State citation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_citation
      @state_citation = StateCitation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_citation_params
      params.require(:state_citation).permit(:book_num, :issued_to, :start_c_num, :end_c_num, :issue_date, :issue_by, :return_date, :return_by, :empty)
    end
end
