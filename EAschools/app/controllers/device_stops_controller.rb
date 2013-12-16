class DeviceStopsController < ApplicationController
  before_action :set_device_stop, only: [:show, :edit, :update, :destroy]

  # GET /device_stops
  # GET /device_stops.json
  def index
    @device_stops = DeviceStop.all
  end

  # GET /device_stops/1
  # GET /device_stops/1.json
  def show
  end

  # GET /device_stops/new
  def new
    @device_stop = DeviceStop.new
  end

  # GET /device_stops/1/edit
  def edit
  end

  # POST /device_stops
  # POST /device_stops.json
  def create
    @device_stop = DeviceStop.new(device_stop_params)

    respond_to do |format|
      if @device_stop.save
        format.html { redirect_to @device_stop, notice: 'Device stop was successfully created.' }
        format.json { render action: 'show', status: :created, location: @device_stop }
      else
        format.html { render action: 'new' }
        format.json { render json: @device_stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /device_stops/1
  # PATCH/PUT /device_stops/1.json
  def update
    respond_to do |format|
      if @device_stop.update(device_stop_params)
        format.html { redirect_to @device_stop, notice: 'Device stop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @device_stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /device_stops/1
  # DELETE /device_stops/1.json
  def destroy
    @device_stop.destroy
    respond_to do |format|
      format.html { redirect_to device_stops_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device_stop
      @device_stop = DeviceStop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_stop_params
      params.require(:device_stop).permit(:device_id, :stop_name, :stop_lan, :stop_lat, :stop_time, :number_of_passanger)
    end
end
