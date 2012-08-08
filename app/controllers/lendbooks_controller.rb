class LendbooksController < ApplicationController
  before_filter :authenticate_user!
  # GET /lendbooks
  # GET /lendbooks.json
  def index
    @lendbooks = Lendbook.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lendbooks }
    end
  end

  # GET /lendbooks/1
  # GET /lendbooks/1.json
  def show
    @lendbook = Lendbook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lendbook }
    end
  end

  # GET /lendbooks/new
  # GET /lendbooks/new.json
  def new
    @lendbook = Lendbook.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lendbook }
    end
  end

  # GET /lendbooks/1/edit
  def edit
    @lendbook = Lendbook.find(params[:id])
  end

  # POST /lendbooks
  # POST /lendbooks.json
  def create
    @lendbook = Lendbook.new(params[:lendbook])

    respond_to do |format|
      if @lendbook.save
        format.html { redirect_to @lendbook, notice: 'Lendbook was successfully created.' }
        format.json { render json: @lendbook, status: :created, location: @lendbook }
      else
        format.html { render action: "new" }
        format.json { render json: @lendbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lendbooks/1
  # PUT /lendbooks/1.json
  def update
    @lendbook = Lendbook.find(params[:id])

    respond_to do |format|
      if @lendbook.update_attributes(params[:lendbook])
        format.html { redirect_to @lendbook, notice: 'Lendbook was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lendbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lendbooks/1
  # DELETE /lendbooks/1.json
  def destroy
    @lendbook = Lendbook.find(params[:id])
    @lendbook.destroy

    respond_to do |format|
      format.html { redirect_to lendbooks_url }
      format.json { head :no_content }
    end
  end
end
