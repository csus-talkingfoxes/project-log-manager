class LogUnitsController < ApplicationController
  # GET /log_units
  # GET /log_units.json
  def index
    @log_units = LogUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @log_units }
    end
  end

  # GET /log_units/1
  # GET /log_units/1.json
  def show
    @log_unit = LogUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @log_unit }
    end
  end

  # GET /log_units/new
  # GET /log_units/new.json
  def new
    @log_unit = LogUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @log_unit }
    end
  end

  # GET /log_units/1/edit
  def edit
    @log_unit = LogUnit.find(params[:id])
  end

  # POST /log_units
  # POST /log_units.json
  def create
    @log_unit = LogUnit.new(params[:log_unit])
    @log_unit.user = @current_user

    respond_to do |format|
      if @log_unit.save
        format.html { redirect_to @log_unit, :notice => 'Log unit was successfully created.' }
        format.json { render :json => @log_unit, :status => :created, :location => @log_unit }
      else
        format.html { render :action => "new" }
        format.json { render :json => @log_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /log_units/1
  # PUT /log_units/1.json
  def update
    @log_unit = LogUnit.find(params[:id])

    respond_to do |format|
      if @log_unit.update_attributes(params[:log_unit])
        format.html { redirect_to @log_unit, :notice => 'Log unit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @log_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /log_units/1
  # DELETE /log_units/1.json
  def destroy
    @log_unit = LogUnit.find(params[:id])
    @log_unit.destroy

    respond_to do |format|
      format.html { redirect_to log_units_url }
      format.json { head :no_content }
    end
  end
end
