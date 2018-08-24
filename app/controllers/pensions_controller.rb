class PensionsController < ApplicationController
  before_action :set_pension, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!, except: [:index]
  # GET /pensions
  # GET /pensions.json
  def index
    @pensions = Pension.all
    
    @search = Pension.search do
      fulltext params[:search]
    end
    @pensions = @search.results
  end

  # GET /pensions/1
  # GET /pensions/1.json
  def show
    @pension_comments = PensionComment.all
  end

  # GET /pensions/new
  def new
    @pension = Pension.new
  end

  # GET /pensions/1/edit
  def edit
  end

  # POST /pensions
  # POST /pensions.json
  def create
    @pension = Pension.new(pension_params)

    respond_to do |format|
      if @pension.save
        format.html { redirect_to @pension, notice: 'Pension was successfully created.' }
        format.json { render :show, status: :created, location: @pension }
      else
        format.html { render :new }
        format.json { render json: @pension.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pensions/1
  # PATCH/PUT /pensions/1.json
  def update
    respond_to do |format|
      if @pension.update(pension_params)
        format.html { redirect_to @pension, notice: 'Pension was successfully updated.' }
        format.json { render :show, status: :ok, location: @pension }
      else
        format.html { render :edit }
        format.json { render json: @pension.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pensions/1
  # DELETE /pensions/1.json
  def destroy
    @pension.destroy
    respond_to do |format|
      format.html { redirect_to pensions_url, notice: 'Pension was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def comment
    PensionComment.create(article_id: params[:id], message: params[:comment])
    redirect_to :root
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pension
      @pension = Pension.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pension_params
      params.require(:pension).permit(:title, :content, :image)
    end
end
