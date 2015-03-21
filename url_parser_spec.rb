require "./url_parser"
require 'pry'
describe URLParser do
  let(:url) { "http://www.example.com" }
  let(:parsed) { URLParser.parse(url: url) }

  describe "with regular strings" do
    let(:url) { "http://www.example.com" }
    it "parses the scheme" do
      expect(parsed.scheme).to eq "http"
    end
  end

  describe "with ftp" do
    let(:url) { "ftp://www.puddle.com" }
    it "parses the scheme" do
      expect(parsed.scheme).to eq "ftp"
    end
  end
end
