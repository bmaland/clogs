ActiveSupport::Notifications.subscribe(/process_action.action_controller/) do |*args| 
  event = ActiveSupport::Notifications::Event.new(*args)

  params = event.payload.slice(:controller, :path, :status, :view_runtime, :db_runtime)

  Clogs::Clog.create!(params)
end
