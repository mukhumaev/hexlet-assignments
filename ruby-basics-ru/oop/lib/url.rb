# frozen_string_literal: true

require 'uri'
require 'forwardable'

# BEGIN
class Url
  extend Forwardable
  include Comparable

  def initialize(link)
    @url = URI(link)
    @query = @url.query
  end

  def_delegators :@url, :scheme, :host

  def query_params
    query = @query
    parse_params(query)
  end

  def query_param(key, default_value = nil)
    return if key.nil?

    query = @query
    params = parse_params(query)
    params[key].nil? ? default_value : params[key]
  end

  def <=>(other)
    other <=> @url
  end

  private

  def parse_params(query = nil)
    return {} if query.nil?

    query_array = query.split('&')

    query_array.each_with_object({}) do |pair, params|
      key, value = pair.split('=')
      params[:"#{key}"] = value
    end
  end
end
# END
