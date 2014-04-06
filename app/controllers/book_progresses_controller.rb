class BookProgressesController < ApplicationController
  before_action :set_book_progress, only: [:show, :edit, :update, :destroy]

  # GET /book_progresses
  # GET /book_progresses.json
  def index
    @book_progresses = BookProgress.all
  end

  # GET /book_progresses/1
  # GET /book_progresses/1.json
  def show
  end

  # GET /book_progresses/new
  def new
    @book_progress = BookProgress.new
  end

  # GET /book_progresses/1/edit
  def edit
  end

  # POST /book_progresses
  # POST /book_progresses.json
  def create
    @book_progress = BookProgress.new(book_progress_params)

    respond_to do |format|
      if @book_progress.save
        format.html { redirect_to @book_progress, notice: 'Book progress was successfully created.' }
        format.json { render action: 'show', status: :created, location: @book_progress }
      else
        format.html { render action: 'new' }
        format.json { render json: @book_progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_progresses/1
  # PATCH/PUT /book_progresses/1.json
  def update
    respond_to do |format|
      if @book_progress.update(book_progress_params)
        format.html { redirect_to @book_progress, notice: 'Book progress was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @book_progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_progresses/1
  # DELETE /book_progresses/1.json
  def destroy
    @book_progress.destroy
    respond_to do |format|
      format.html { redirect_to book_progresses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_progress
      @book_progress = BookProgress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_progress_params
      params.require(:book_progress).permit(:percent, :book_id, :date)
    end
end
