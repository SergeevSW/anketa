class PilsController < ApplicationController
  before_action :set_pil, only: [:show, :edit, :update, :destroy]

  # GET /pils
  # GET /pils.json
  def index
    @pils = Pil.all
  end

  # GET /pils/1
  # GET /pils/1.json
  def show
  end

  # GET /pils/new
  def new
    @pil = Pil.new
  end

  # GET /pils/1/edit
  def edit
  end

  # POST /pils
  # POST /pils.json
  def create
    @pil = Pil.new(pil_params)

    respond_to do |format|
      if @pil.save
        format.html { redirect_to @pil, notice: 'Pil was successfully created.' }
        format.json { render :show, status: :created, location: @pil }
      else
        format.html { render :new }
        format.json { render json: @pil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pils/1
  # PATCH/PUT /pils/1.json
  def update
    respond_to do |format|
      if @pil.update(pil_params)
        format.html { redirect_to @pil, notice: 'Pil was successfully updated.' }
        format.json { render :show, status: :ok, location: @pil }
      else
        format.html { render :edit }
        format.json { render json: @pil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pils/1
  # DELETE /pils/1.json
  def destroy
    @pil.destroy
    respond_to do |format|
      format.html { redirect_to pils_url, notice: 'Pil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pil
      @pil = Pil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pil_params
      params.require(:pil).permit(:lastname, :firstname, :middlename)
    end
end