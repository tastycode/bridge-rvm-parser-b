class URLParser

  def initialize(input)
    @raw = input
  end

  def self.parse(url:)
    new(url)
  end

  def scheme
    parsed[:scheme]
  end

  def host
    parsed[:host]
  end

  def parsed
    @raw.match(%r{^((?<scheme>[\w]+)://)?(?<host>[\w\-\.]+)?})
  end
end
