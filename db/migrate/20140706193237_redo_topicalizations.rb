class RedoTopicalizations < ActiveRecord::Migration
    def up
      create_table :topics do |t|
        t.string :name
      end
    
      create_table :topicalizations do |t|
        t.belongs_to :question
        t.belongs_to :topic
      end
    
    end

    def down
      drop_table :topicalizations
      drop_table :topics
    end
  end

