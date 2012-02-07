class AgendaItemsController < ApplicationController
  # GET /agenda_items
  # GET /agenda_items.json
  def index
    @agenda_items = AgendaItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agenda_items }
    end
  end

  # GET /agenda_items/1
  # GET /agenda_items/1.json
  def show
    @agenda_item = AgendaItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @agenda_item }
    end
  end

  # GET /agenda_items/new
  # GET /agenda_items/new.json
  def new
    @agenda_item = AgendaItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @agenda_item }
    end
  end

  # GET /agenda_items/1/edit
  def edit
    @agenda_item = AgendaItem.find(params[:id])
  end

  # POST /agenda_items
  # POST /agenda_items.json
  def create
    @agenda_item = AgendaItem.new(params[:agenda_item])
    @agenda_item.user = current_user

    respond_to do |format|
      if @agenda_item.save
        format.html { redirect_to @agenda_item, notice: 'Agenda item was successfully created.' }
        format.json { render json: @agenda_item, status: :created, location: @agenda_item }
      else
        format.html { render action: "new" }
        format.json { render json: @agenda_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /agenda_items/1
  # PUT /agenda_items/1.json
  def update
    @agenda_item = AgendaItem.find(params[:id])

    respond_to do |format|
      if @agenda_item.update_attributes(params[:agenda_item])
        format.html { redirect_to @agenda_item, notice: 'Agenda item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @agenda_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agenda_items/1
  # DELETE /agenda_items/1.json
  def destroy
    @agenda_item = AgendaItem.find(params[:id])
    @agenda_item.destroy

    respond_to do |format|
      format.html { redirect_to agenda_items_url }
      format.json { head :no_content }
    end
  end
end
