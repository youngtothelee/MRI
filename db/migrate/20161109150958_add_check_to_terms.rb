class AddCheckToTerms < ActiveRecord::Migration[5.0]
  def change
    add_column :terms, :check, :boolean
  end
end
