class ComplementsController < ApplicationController
  # GET /complements
  # GET /complements.json
  def index
    @complements = Complement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @complements }
    end
  end

  # GET /complements/1
  # GET /complements/1.json
  def show
    @complement = Complement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @complement }
    end
  end

  # GET /complements/new
  # GET /complements/new.json
  def new
    @complement = Complement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @complement }
    end
  end

  # GET /complements/1/edit
  def edit
    @complement = Complement.find(params[:id])
  end

  # POST /complements
  # POST /complements.json
  def create
    @complement = Complement.new(params[:complement])

    respond_to do |format|
      if @complement.save
        format.html { redirect_to @complement, notice: 'Complement was successfully created.' }
        format.json { render json: @complement, status: :created, location: @complement }
      else
        format.html { render action: "new" }
        format.json { render json: @complement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /complements/1
  # PUT /complements/1.json
  def update
    @complement = Complement.find(params[:id])

    respond_to do |format|
      if @complement.update_attributes(params[:complement])
        format.html { redirect_to @complement, notice: 'Complement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @complement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complements/1
  # DELETE /complements/1.json
  def destroy
    @complement = Complement.find(params[:id])
    @complement.destroy

    respond_to do |format|
      format.html { redirect_to complements_url }
      format.json { head :no_content }
    end
  end
end
