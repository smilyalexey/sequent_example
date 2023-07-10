require_relative '../../db/sequent_migrations'
   
Rails.application.reloader.to_prepare do
  Sequent.configure do |config|
    config.migrations_class_name = 'SequentMigrations'
   
    config.command_handlers = [
      User::UserCommandHandler
    ].map(&:new)
   
    config.event_handlers = [
      # add you Sequent::Projector's or Sequent::Workflow's here
    ]

    config.database_config_directory = 'config'
     
    # this is the location of your sql files for your view_schema
    config.migration_sql_files_directory = 'db/sequent'
  end
end
