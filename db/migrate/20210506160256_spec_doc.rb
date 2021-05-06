class SpecDoc < ActiveRecord::Migration[5.2]
  def change
    add_reference :doctors, :specialty
  end
end
