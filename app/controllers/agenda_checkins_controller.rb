class AgendaCheckinsController < ApplicationController
  # GET /agenda_checkins
  # GET /agenda_checkins.json
  def index
    @agenda_checkins = AgendaCheckin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @agenda_checkins }
    end
  end

  # GET /agenda_checkins/1
  # GET /agenda_checkins/1.json
  def show
    @agenda_checkin = AgendaCheckin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @agenda_checkin }
    end
  end

  # GET /agenda_checkins/new
  # GET /agenda_checkins/new.json
  def new
    @agenda_checkin = AgendaCheckin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @agenda_checkin }
    end
  end

  # GET /agenda_checkins/1/edit
  def edit
    @agenda_checkin = AgendaCheckin.find(params[:id])
  end

  # POST /agenda_checkins
  # POST /agenda_checkins.json
  def create
    @agenda_checkin = AgendaCheckin.new(params[:agenda_checkin])
    @agenda_checkin.user = current_user

    respond_to do |format|
      if @agenda_checkin.save
        format.html { redirect_to @agenda_checkin, :notice => 'Agenda checkin was successfully created.' }
        format.json { render :json => @agenda_checkin, :status => :created, :location => @agenda_checkin }
      else
        format.html { render :action => "new" }
        format.json { render :json => @agenda_checkin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /agenda_checkins/1
  # PUT /agenda_checkins/1.json
  def update
    @agenda_checkin = AgendaCheckin.find(params[:id])

    respond_to do |format|
      if @agenda_checkin.update_attributes(params[:agenda_checkin])
        format.html { redirect_to @agenda_checkin, :notice => 'Agenda checkin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @agenda_checkin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /agenda_checkins/1
  # DELETE /agenda_checkins/1.json
  def destroy
    @agenda_checkin = AgendaCheckin.find(params[:id])
    @agenda_checkin.destroy

    respond_to do |format|
      format.html { redirect_to agenda_checkins_url }
      format.json { head :no_content }
    end
  end
end
