class HomeController < ApplicationController
  # before_action :set_home, only: %i[ show edit update destroy ]
  require 'csv'
  # GET /homes or /homes.json
  def index
    @sites = Site.all
    @siteworkers = Siteworker.all
    @sites.load
    @siteworkers.load
  end

  # GET /homes/1 or /homes/1.json
  def show
  end

  # GET /homes/new
  def new
    
    filename2= File.join Rails.root, "source.csv"
        CSV.foreach(filename2, headers: true, :encoding => "ISO-8859-1") do |row|
            person = Siteworker.where(person_number: row["Person Number"]).first_or_create
            person.person_number = row["Person Number"]
            person.person_first_name = row["Person First Name"]
            person.person_middle_name = row["Person Middle Name"]
            person.person_last_name = row["Person Surname"]
            person.person_role = row["Person Role"]
            person.person_telephone = row["Person Telephone"]
            person.person_email = row["Person Email"]
            person.person_site_number = row["Site Number"]
            person.save
            p person.id, row["Person Number"].to_i
        end
        
        filename= File.join Rails.root, "source.csv"
        CSV.foreach(filename, headers: true, :encoding => "ISO-8859-1") do |row|
            site = Site.where(site_number: row["Site Number"]).first_or_create
            site.facility_name = row["Facility Name"]
            site.site_address = row["Site Address"]
            site.site_city = row["Site City"]
            site.site_state_or_county = row["Site State/County"]
            site.site_postal_code = row["Site Zip"]
            site.site_country = row["Country"]
            site.save
            
        end
        redirect_to root_path 
        # head :ok, content_type: "text/html"
  end

  # GET /homes/1/edit
  def edit
  end

  # POST /homes or /homes.json
  def create
    
    @home = Home.new(home_params)

    respond_to do |format|
      if @home.save
        format.html { redirect_to @home, notice: "Home was successfully created." }
        format.json { render :show, status: :created, location: @home }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homes/1 or /homes/1.json
  def update
    respond_to do |format|
      if @home.update(home_params)
        format.html { redirect_to @home, notice: "Home was successfully updated." }
        format.json { render :show, status: :ok, location: @home }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homes/1 or /homes/1.json
  def destroy
    @home.destroy
    respond_to do |format|
      format.html { redirect_to homes_url, notice: "Home was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home
      @home = Home.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def home_params
      params.fetch(:home, {})
    end
end
