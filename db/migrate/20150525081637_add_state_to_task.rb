class AddStateToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :state, :string, default: "en_début"
  end
end
