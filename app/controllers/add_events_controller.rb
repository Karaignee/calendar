class AddEventsController < ApplicationController
  # GET /add_events
  # GET /add_events.json
  def index
    @add_events = AddEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @add_events }
    end
  end

  # GET /add_events/1
  # GET /add_events/1.json
  def show
    @add_event = AddEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @add_event }
    end
  end

  # GET /add_events/new
  # GET /add_events/new.json
  def new
    @add_event = AddEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @add_event }
    end
  end

  # GET /add_events/1/edit
  def edit
    @add_event = AddEvent.find(params[:id])
  end

  # POST /add_events
  # POST /add_events.json
  def create
    @add_event = AddEvent.new(params[:add_event])

    respond_to do |format|
      if @add_event.save
        format.html { redirect_to @add_event, notice: 'Add event was successfully created.' }
        format.json { render json: @add_event, status: :created, location: @add_event }
      else
        format.html { render action: "new" }
        format.json { render json: @add_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /add_events/1
  # PUT /add_events/1.json
  def update
    @add_event = AddEvent.find(params[:id])

    respond_to do |format|
      if @add_event.update_attributes(params[:add_event])
        format.html { redirect_to @add_event, notice: 'Add event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @add_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_events/1
  # DELETE /add_events/1.json
  def destroy
    @add_event = AddEvent.find(params[:id])
    @add_event.destroy

    respond_to do |format|
      format.html { redirect_to add_events_url }
      format.json { head :no_content }
    end
  end
end
