class Task < ApplicationRecord
  validates :body, presence: true

  def finished?
    finished==true
  end

  def finished!
    finished = true
    save!
  end
end
