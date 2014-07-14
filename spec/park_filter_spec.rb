require "park_filter"

describe ParkFilter do

  before do
    @parks = [
      {
        :id => 546,
        :name => "Kalahari Resorts",
        :city => "Wisconsin Dells",
        :state => "Wisconsin",
        :country => "United States"
      },
      {
        :id => 547,
        :name => "Little Amerricka",
        :city => "Marshall",
        :state => "Wisconsin",
        :country => "United States"
      },
      {
        :id => 2,
        :name => "Calaway Park",
        :city => "Calgary",
        :state => "Alberta",
        :country => "Canada"
      }
    ]
  end

  describe "indexing_by_id" do
    it "returns the parks by their ids as a hash key" do

      expect(ParkFilter.new(@parks).indexing_by_id).to eq({
                                                            546 => {
                                                              :id => 546,
                                                              :name => "Kalahari Resorts",
                                                              :city => "Wisconsin Dells",
                                                              :state => "Wisconsin",
                                                              :country => "United States"
                                                            },
                                                            547 => {
                                                              :id => 547,
                                                              :name => "Little Amerricka",
                                                              :city => "Marshall",
                                                              :state => "Wisconsin",
                                                              :country => "United States"
                                                            }
                                                          })
    end
  end



  describe "indexing_by_country" do
    it "returns the park's country as the key of park hashes" do

      expect(ParkFilter.new(@parks).indexing_by_country).to eq({
                                                                 "Canada" => [
                                                                   {
                                                                     :id => 2,
                                                                     :name => "Calaway Park",
                                                                     :city => "Calgary",
                                                                     :state => "Alberta",
                                                                     :country => "Canada"
                                                                   }
                                                                 ],
                                                                 "United States" => [
                                                                   {
                                                                     :id => 546,
                                                                     :name => "Kalahari Resorts",
                                                                     :city => "Wisconsin Dells",
                                                                     :state => "Wisconsin",
                                                                     :country => "United States"
                                                                   },
                                                                   {
                                                                     :id => 547,
                                                                     :name => "Little Amerricka",
                                                                     :city => "Marshall",
                                                                     :state => "Wisconsin",
                                                                     :country => "United States"
                                                                   }
                                                                 ]
                                                               })
    end
  end

end