defmodule ApiMockBee.Conf.Match do
  @moduledoc """
  Struct module that represent a match for a route with the relative response
  """

  use ApiMockBee.Aliases

  defstruct \
    method: "get", # the method to match
    route: "*", # the route to match, * means everything
    headers: [], # headers to match
    response: Response.new # response struct

  def new do
    %Match{}
  end

  def from_match_data(data = %{"response" => response}) do
    Match
    |> struct(DataNormalizer.normalize(data))
    |> Map.put(:response, Response.from_match_data(response))
    |> Map.update!(:method, &String.upcase/1)
  end

  def match?(match = %Match{method: method, route: route}, conn) do
    conn.method === method and conn.request_path === route
  end
end
