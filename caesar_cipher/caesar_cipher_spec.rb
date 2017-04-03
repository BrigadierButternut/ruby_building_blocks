require "caesar_cipher"

describe "#caesar_cipher" do
  it "encrypts a single word message" do
    expect(caesar_cipher("blue",2)).to eq("dnwg")
  end
end
