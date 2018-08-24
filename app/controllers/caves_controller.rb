class CavesController < ApplicationController
  before_action :set_cafe, only: [:show, :edit, :update, :destroy]
  
  before_action :authenticate_user!, except: [:index]
  # GET /caves
  # GET /caves.json
  def index
    @caves = Cafe.all
    
    @search = Cafe.search do
      fulltext params[:search]
    end
    @caves = @search.results
  end

  # GET /caves/1
  # GET /caves/1.json
  def show
    @cafe_comments = CafeComment.all
  end

  # GET /caves/new
  def new
    @cafe = Cafe.new
  end

  # GET /caves/1/edit
  def edit
  end

  # POST /caves
  # POST /caves.json
  def create
    @cafe = Cafe.new(cafe_params)

    respond_to do |format|
      if @cafe.save
        format.html { redirect_to @cafe, notice: 'Cafe was successfully created.' }
        format.json { render :show, status: :created, location: @cafe }
      else
        format.html { render :new }
        format.json { render json: @cafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caves/1
  # PATCH/PUT /caves/1.json
  def update
    respond_to do |format|
      if @cafe.update(cafe_params)
        format.html { redirect_to @cafe, notice: 'Cafe was successfully updated.' }
        format.json { render :show, status: :ok, location: @cafe }
      else
        format.html { render :edit }
        format.json { render json: @cafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caves/1
  # DELETE /caves/1.json
  def destroy
    @cafe.destroy
    respond_to do |format|
      format.html { redirect_to caves_url, notice: 'Cafe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def comment
    CafeComment.create(article_id: params[:id], message: params[:comment])
    redirect_to :root
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cafe
      @cafe = Cafe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cafe_params
      params.require(:cafe).permit(:title, :content, :image)
    end
    
    # def comment
    # CafeComment.create(cafe_id: params[:cafe_id], msg:params[:msg])
    # redirect_to :root
    # end
    
    def comment
     CafeComment.create(article_id: params[:id], message: params[:comment])
     redirect_to :root
    end
end
