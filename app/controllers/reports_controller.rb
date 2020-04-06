class ReportsController < ApplicationController
  load_and_authorize_resource
    before_action :authenticate_user!

 def index
  @report = Report.all
 end

def new
 @report = Report.new(user: current_user)
end

def create
  @report = current_user.reports.build(filtered_params)
  if @report.save
    redirect_to action: 'index'
  else
    render 'new'
  end

end
def show
  respond_to do |format|
    format.html
    format.pdf do
      render :pdf => "file_name",
             :template => "reports/show.pdf.erb",
             :layout => "pdf.html"
    end
  end
end

private
def filtered_params
 params.require(:report).permit(:statement, :user_id, project_ids: [])
end
end
