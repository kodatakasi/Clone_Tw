class WhispersController < ApplicationController
  before_action :set_whisper, only: [:show, :edit, :update, :destroy]

  def index
    @whispers = Whisper.all
  end

  def show
  end

  def new
    @whisper = Whisper.new
  end

  def edit
  end

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

  def destroy
    @whisper.destroy
    respond_to do |format|
      format.html { redirect_to whispers_url, notice: 'Whisper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_whisper
      @whisper = Whisper.find(params[:id])
    end

    def whisper_params
      params.require(:whisper).permit(:content)
    end
end
