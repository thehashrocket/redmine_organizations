class AddMailToOrganizations < ActiveRecord::Migration[4.2]
  def self.up
    add_column :organizations, :mail, :string, :limit => 120
  end

  def self.down
    remove_column :organizations, :mail
  end
end
