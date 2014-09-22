class MailerContentsController < ApplicationController
  before_action :set_mailer_content, only: [:show, :edit, :update, :destroy]

  # GET /mailer_contents
  # GET /mailer_contents.json
  def index
    @mailer_contents = MailerContent.all
  end

  # GET /mailer_contents/1
  # GET /mailer_contents/1.json
  def show
  end

  # GET /mailer_contents/new
  def new
    @mailer_content = MailerContent.new
  end

  # GET /mailer_contents/1/edit
  def edit
  end

  # POST /mailer_contents
  # POST /mailer_contents.json
  def create
    @mailer_content = MailerContent.new(mailer_content_params)

    respond_to do |format|
      if @mailer_content.save
        format.html { redirect_to @mailer_content, notice: 'Mailer content was successfully created.' }
        format.json { render :show, status: :created, location: @mailer_content }
      else
        format.html { render :new }
        format.json { render json: @mailer_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mailer_contents/1
  # PATCH/PUT /mailer_contents/1.json
  def update
    respond_to do |format|
      if @mailer_content.update(mailer_content_params)
        format.html { redirect_to @mailer_content, notice: 'Mailer content was successfully updated.' }
        format.json { render :show, status: :ok, location: @mailer_content }
      else
        format.html { render :edit }
        format.json { render json: @mailer_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mailer_contents/1
  # DELETE /mailer_contents/1.json
  def destroy
    @mailer_content.destroy
    respond_to do |format|
      format.html { redirect_to mailer_contents_url, notice: 'Mailer content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mailer_content
      @mailer_content = MailerContent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mailer_content_params
      params.require(:mailer_content).permit(:category, :subcategory, :actual_context)
    end
end
