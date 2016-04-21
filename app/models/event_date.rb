class EventDate < ActiveRecord::Base
  belongs_to :event

  validates :start, presence: true
  validates :end, presence: true
  validate :end_date_after_start_date?

  def end_date_after_start_date?
    if end_date < start_date
      errors.add :end_date, "must be later than start date"
    end
  end
end
