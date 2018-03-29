ActiveAdmin.register Registration do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

# action_item only: :show do
#   link_to 'PDF', pdf_admin_registration_path(resource)
# end

member_action :pdf do
  @registration = resource
  html = render_to_string(:action => "pdf.html.slim", layout: 'application.html.slim')
  kit = PDFKit.new(html)
  send_data(kit.to_pdf, :filename => "zgloszenie.pdf", :type => 'application/pdf', :disposition => 'attachment')
end
end
