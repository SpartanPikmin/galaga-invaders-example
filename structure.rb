class Structure

  DAMAGE = 1

  def initialize(args)
    @location = args.fetch[:location]
    @hit_points = args.fetch[:hit_points]
    post_initialize(args)
  end

  def post_initialize(args)
    nomethoderror
  end

end
