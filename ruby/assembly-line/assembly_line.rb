class AssemblyLine
  PRODUCE_BY_HOUR = 221

  def initialize(speed)
    raise ArgumentError, 'speed must be between 1 and 10' unless speed.between? 1, 10

    @speed = speed
  end

  def production_rate_per_hour
    @speed * PRODUCE_BY_HOUR * production_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end

  private

  def production_rate
    case @speed
    when 1..4
      1
    when 5..8
      0.9
    when 9
      0.8
    when 10
      0.77
    end
  end
end
