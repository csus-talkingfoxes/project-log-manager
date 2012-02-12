class AgendaTypesController < ApplicationController
  # GET /agenda_types
  # GET /agenda_types.json
  def index
    @agenda_types = AgendaType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @agenda_types }
    end
  end

  # GET /agenda_types/1
  # GET /agenda_types/1.json
  def show
    @agenda_type = AgendaType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @agenda_type }
    end
  end

  # GET /agenda_types/new
  # GET /agenda_types/new.json
  def new
    @agenda_type = AgendaType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @agenda_type }
    end
  end

  # GET /agenda_types/1/edit
  def edit
    @agenda_type = AgendaType.find(params[:id])
  end

  # POST /agenda_types
  # POST /agenda_types.json
  def create
    @agenda_type = AgendaType.new(params[:agenda_type])

    respond_to do |format|
      if @agenda_type.save
        format.html { redirect_to @agenda_type, :notice => 'Agenda type was successfully created.' }
        format.json { render :json => @agenda_type, :status => :created, :location => @agenda_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @agenda_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /agenda_types/1
  # PUT /agenda_types/1.json
  def update
    @agenda_type = AgendaType.find(params[:id])

    respond_to do |format|
      if @agenda_type.update_attributes(params[:agenda_type])
        format.html { redirect_to @agenda_type, :notice => 'Agenda type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @agenda_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /agenda_types/1
  # DELETE /agenda_types/1.json
  def destroy
    @agenda_type = AgendaType.find(params[:id])
    @agenda_type.destroy

    respond_to do |format|
      format.html { redirect_to agenda_types_url }
      format.json { head :no_content }
    end
  end
end
