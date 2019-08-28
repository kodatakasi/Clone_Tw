class WhispersController < ApplicationController
  before_action :set_whisper, only: [:show, :edit, :update, :destroy]

  # GET /whispers
  # GET /whispers.json
  def index
    @whispers = Whisper.all
  end

  # GET /whispers/1
  # GET /whispers/1.json
  def show
  end

  # GET /whispers/new
  def new
    @whisper = Whisper.new
  end

  # GET /whispers/1/edit
  def edit
  end

  # POST /whispers
  # POST /whispers.json
  def create
    @whisper = Whisper.new(whisper_params)

    respond_to do |format|
      if @whisper.save
        format.html { redirect_to @whisper, notice: 'Whisper was successfully created.' }
        format.json { render :show, status: :created, location: @whisper }
      else
        format.html { render :new }
        format.json { render json: @whisper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whispers/1
  # PATCH/PUT /whispers/1.json
  def update
    respond_to do |format|
      if @whisper.update(whisper_params)
        format.html { redirect_to @whisper, notice: 'Whisper was successfully updated.' }
        format.json { render :show, status: :ok, location: @whisper }
      else
        format.html { render :edit }
        format.json { render json: @whisper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whispers/1
  # DELETE /whispers/1.json
  def destroy
    @whisper.destroy
    respond_to do |format|
      format.html { redirect_to whispers_url, notice: 'Whisper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whisper
      @whisper = Whisper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whisper_params
      params.require(:whisper).permit(:content)
    end
end
