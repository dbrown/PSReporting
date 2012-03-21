class ArchitectsController < ApplicationController
  # GET /architects
  # GET /architects.json
  def index
    @architects = Architect.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @architects }
    end
  end

  # GET /architects/1
  # GET /architects/1.json
  def show
    @architect = Architect.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @architect }
    end
  end

  # GET /architects/new
  # GET /architects/new.json
  def new
    @architect = Architect.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @architect }
    end
  end

  # GET /architects/1/edit
  def edit
    @architect = Architect.find(params[:id])
  end

  # POST /architects
  # POST /architects.json
  def create
    @architect = Architect.new(params[:architect])

    respond_to do |format|
      if @architect.save
        format.html { redirect_to @architect, notice: 'Architect was successfully created.' }
        format.json { render json: @architect, status: :created, location: @architect }
      else
        format.html { render action: "new" }
        format.json { render json: @architect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /architects/1
  # PUT /architects/1.json
  def update
    @architect = Architect.find(params[:id])

    respond_to do |format|
      if @architect.update_attributes(params[:architect])
        format.html { redirect_to @architect, notice: 'Architect was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @architect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /architects/1
  # DELETE /architects/1.json
  def destroy
    @architect = Architect.find(params[:id])
    @architect.destroy

    respond_to do |format|
      format.html { redirect_to architects_url }
      format.json { head :no_content }
    end
  end
end
