class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      def change
        create_table :machines do |t|
          t.string :title
          t.text :body
    
          t.timestamps
        end
      end
      t.timestamps
    end
  end
end
