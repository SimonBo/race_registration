ActiveAdmin.register Registration do

  action_item :pdf, only: :show do
    link_to 'PDF', pdf_registration_path(resource.token, format: 'pdf'), download: 'zgloszenie.pdf', id: 'download_pdf'
  end
end
