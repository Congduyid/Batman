RailsAdmin.config do |config|

  #config.parent_controller = 'ApplicationController' 
  #config.main_app_name = ["Admin Dashboard"]

  ### Popular gems integration

  ## == Devise ==
   config.authenticate_with do
     warden.authenticate!
   end
   config.current_user_method(&:current_nguoidung)

  # config.current_user_method(&:current_user)

  
  #config.current_nguoidungs_method(&:current_nguoidungs)
  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true
  config.excluded_models = ['ActiveStorage::Blob', 'ActiveStorage::Attachment']
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
