class ParkFilter

  def initialize(parks)
    @parks = parks
  end

  def indexing_by_id

    keys = @parks.map {|park_hash| park_hash[:id]}

    zipped = keys.zip(@parks)[0..1]
    Hash[zipped]


  end


  def indexing_by_country

    keys = @parks.group_by {|park_hash| park_hash[:country]}


  end

end
