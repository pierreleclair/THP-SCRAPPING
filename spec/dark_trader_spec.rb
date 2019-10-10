require_relative '../lib/dark_trader'

describe "the get_cryptocurrency_rate method" do
  it "should return an array" do
    expect(get_cryptocurrency_rate.to be_instance_of Array
  end
  it "should not be nil" do
    expect(get_cryptocurrency_rate.not_to be_nil
  end
end