class Api::HellosController < ApplicationController
  before_action :set_api_hello, only: [:show, :edit, :update, :destroy]

  # GET /api/hellos
  # GET /api/hellos.json
  def index
    @api_hellos = Api::Hello.all
  end

  # GET /api/hellos/1
  # GET /api/hellos/1.json
  def show
  end

  # GET /api/hellos/new
  def new
    @api_hello = Api::Hello.new
  end

  # GET /api/hellos/1/edit
  def edit
  end

  # POST /api/hellos
  # POST /api/hellos.json
  def create
    @api_hello = Api::Hello.new(api_hello_params)

    respond_to do |format|
      if @api_hello.save
        format.html { redirect_to @api_hello, notice: 'Hello was successfully created.' }
        format.json { render :show, status: :created, location: @api_hello }
      else
        format.html { render :new }
        format.json { render json: @api_hello.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/hellos/1
  # PATCH/PUT /api/hellos/1.json
  def update
    respond_to do |format|
      if @api_hello.update(api_hello_params)
        format.html { redirect_to @api_hello, notice: 'Hello was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_hello }
      else
        format.html { render :edit }
        format.json { render json: @api_hello.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/hellos/1
  # DELETE /api/hellos/1.json
  def destroy
    @api_hello.destroy
    respond_to do |format|
      format.html { redirect_to api_hellos_url, notice: 'Hello was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_hello
      @api_hello = Api::Hello.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_hello_params
      params.require(:api_hello).permit(:name)
    end
end
