module Clogs
  class Clog < ActiveRecord::Base
    attr_accessible :controller, :db_runtime, :path, :status, :view_runtime
  end
end
