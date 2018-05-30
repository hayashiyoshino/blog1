class Blog < ActiveRecord::Base

  def round_created_at
    self.created_at
  end
end
