class CreateTerms < ActiveRecord::Migration[5.0]
  def change
    create_table :terms do |t|
      t.string :name
      t.binary :signature
      t.datetime :signed_on
      t.timestamps
    end
  end
end
