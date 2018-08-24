class CellarsController < ApplicationController
  before_action :set_cellar, only: [:show, :edit, :update, :destroy]

  # GET /cellars
  # GET /cellars.json
  def index
    @cellars = Cellar.all
  end

  # GET /cellars/1
  # GET /cellars/1.json
  def show
  end

  # GET /cellars/new
  def new
    @cellar = Cellar.new
  end

  # GET /cellars/1/edit
  def edit
  end

  # POST /cellars
  # POST /cellars.json
  def create
    @cellar = Cellar.new(cellar_params)

    respond_to do |format|
      if @cellar.save
        format.html { redirect_to @cellar, notice: 'Cellar was successfully created.' }
        format.json { render :show, status: :created, location: @cellar }
      else
        format.html { render :new }
        format.json { render json: @cellar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cellars/1
  # PATCH/PUT /cellars/1.json
  def update
    respond_to do |format|
      if @cellar.update(cellar_params)
        format.html { redirect_to @cellar, notice: 'Cellar was successfully updated.' }
        format.json { render :show, status: :ok, location: @cellar }
      else
        format.html { render :edit }
        format.json { render json: @cellar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cellars/1
  # DELETE /cellars/1.json
  def destroy
    @cellar.destroy
    respond_to do |format|
      format.html { redirect_to cellars_url, notice: 'Cellar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cellar
      @cellar = Cellar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cellar_params
      params.require(:cellar).permit(:beer, :description)
    end
end
