class ProductNewsController < ApplicationController
  before_action :set_product_news, only: [:show, :edit, :update, :destroy]

  # GET /product_news
  # GET /product_news.json
  def index
    @product_news = ProductNew.all
  end

  # GET /product_news/1
  # GET /product_news/1.json
  def show
  end

  # GET /product_news/new
  def new
    @product_news = ProductNew.new
  end

  # GET /product_news/1/edit
  def edit
  end

  # POST /product_news
  # POST /product_news.json
  def create
    @product_news = ProductNew.new(product_news_params)

    respond_to do |format|
      if @product_news.save
        format.html { redirect_to @product_news, notice: 'Product new was successfully created.' }
        format.json { render :show, status: :created, location: @product_news }
      else
        format.html { render :new }
        format.json { render json: @product_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_news/1
  # PATCH/PUT /product_news/1.json
  def update
    respond_to do |format|
      if @product_news.update(product_news_params)
        format.html { redirect_to @product_news, notice: 'Product new was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_news }
      else
        format.html { render :edit }
        format.json { render json: @product_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_news/1
  # DELETE /product_news/1.json
  def destroy
    @product_news.destroy
    respond_to do |format|
      format.html { redirect_to product_news_url, notice: 'Product new was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_news
      @product_news = ProductNew.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_news_params
      params.require(:product_news).permit(:title, :description, :image_url, :price)
    end
end
