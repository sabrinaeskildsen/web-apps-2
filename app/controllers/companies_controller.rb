
  # TODO:
  def index
    @companies = Company.all
  end

  def show
    @contact = Contact.find_by({"id" => params["id"] })
    @company = Company.find_by({"id" => @contact["company_id"] })
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new
    @company["name"] = params["company"]["name"]
    @company["city"] = params["company"]["city"]
    @company["state"] = params["company"]["state"]
    @company.save
    redirect_to"/companies"
  end

