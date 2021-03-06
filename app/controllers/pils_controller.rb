class PilsController < ApplicationController
  before_action :set_pil, only: [:show, :edit, :update, :destroy]


  def report
    @pils = Pil.all
  end

  def report_src

  end

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
    @pil = Pil.new(pil_params.merge(:drafttoken => SecureRandom.hex(10)))


    respond_to do |format|
      if @pil.save
        format.html {redirect_to edit_pil_path(@pil,:step => "2")
          # redirect_to @pil, notice: 'Pil was successfully created.'
          }
        format.json {render :show, status: :created, location: @pil}
      else
        format.html {render :new}
        format.json {render json: @pil.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /pils/1
  # PATCH/PUT /pils/1.json
  def update
    params[:step] ||= "1"
    respond_to do |format|
      if @pil.update(pil_params)
        format.html {
          # redirect_to @pil, notice: 'Pil was successfully updated.'
          if params[:step] == "1"
            redirect_to edit_pil_path(@pil,:step => "2")
          elsif params[:step] == "2"
            redirect_to edit_pil_path(@pil,:step => "3")
          else
            redirect_to @pil, notice: 'Заявка успешно заполнена'
          end
                    }
        # format.json {render :show, status: :ok, location: @pil}
      else
        format.html {render :edit}
        format.json {render json: @pil.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /pils/1
  # DELETE /pils/1.json
  def destroy
    puts("destroy")
    @pil.destroy
    respond_to do |format|
      format.html {redirect_to pils_url, notice: 'Заявка успешно удалена'}
      format.json {head :no_content}
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pil
    @pil = Pil.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def pil_params
    params.require(:pil).permit(:lastname, :firstname, :middlename, :email, :passportSeries, :passportNumber, :passportIssuedDate, :passportIssuedCode, :passportIssuedBy, :birthDate, :passportBirthPlace, :passportRegion, :workinn, :drafttoken,:utm_source,:utm_medium,:utm_campaign,:product,:limit,:deliveryType,:deliveryDate,:deliveryAdress,:dopDoc1,:dopDoc2,:isAccepted,:isDeal,:dealDate)

  end
end
