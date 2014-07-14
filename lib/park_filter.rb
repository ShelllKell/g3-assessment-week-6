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

    keys = @parks.map {|park_hash| park_hash[:country]}

    zipped = keys.zip(@parks)
    Hash[zipped].sort_by {|key, value| key}.to_h

  #need to find second united states and put hashes in array
  end

end
