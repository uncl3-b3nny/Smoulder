class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event, only: [:show, :edit, :update, :destroy] 
  respond_to :json, :html
  # GET /events
  # GET /events.json
  def index
    @events = Event.all
    @users = User.all
    @user = User.new
    @event = Event.new
    @contents = Suggestion.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @events = Event.all
    @users = User.all
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    # <%= f.datetime_select :start, class: "date-field form-control validate-field date", data_validation_type: "date", placeholder: "dd/mm/yy" %>

    @event = Event.create event_params
      respond_to do |format|
        if @event.save
          flash[:notice] = "Event was successfully saved"
          format.html { redirect_to events_path }
          format.js { render json: @event.as_json }
        else
          flash[:error] = "Event was not successfully saved"
          format.html { redirect_to events_path }
        end
      end

    # redirect_to events_path
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    
    Event.next_event.first.update(event_params)

    if suggestion_params[:category] == "Words of affirmation"
      Suggestion.next_words_of_affirmation(current_user.id).first.update(suggestion_params)
    else
      Suggestion.next_quality_time(current_user.id).first.update(suggestion_params)
    end

    respond_to do |format|
        format.js
        format.html 
        format.json 
    end

  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, 
       :date, 
       :allDay, 
       :start, 
       :end, 
       :url, 
       :className, 
       :editable, 
       :startEditable, 
       :endEditable, 
       :durationEditable, 
       :color, 
       :backgroundColor, 
       :borderColor, 
       :textColor, 
       :event_type, 
       :user_id, 
       :workflow_state, 
       :notes)
    end
    #To do: whitelist suggestions and events for users via join tables
      # def user_params
      #   event_ids:[]
      #   suggestion_ids: []
      # end

    def suggestion_params
      params.require(:suggestion).permit(
        :primary_category, 
        :primary_subcategory, 
        :secondary_category, 
        :user_id, 
        :name, 
        :workflow_state, 
        :content_title, 
        :content, 
        :options, 
        :address, 
        :time_frame, 
        :budget_size, 
        :suggestion_image_file_path, 
        :url
        )
    end
end
