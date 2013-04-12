# This migration comes from clogs (originally 20130411060329)
class CreateClogsClogs < ActiveRecord::Migration
  def change
    create_table :clogs_clogs do |t|
      t.string :controller
      t.string :path
      t.integer :status
      t.float :view_runtime
      t.float :db_runtime

      t.timestamps
    end
  end
end
