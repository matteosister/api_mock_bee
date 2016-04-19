defmodule ApiMockBee.Conf.Response do
  @moduledoc """
  struct module to represent a response
  """

  use ApiMockBee.Aliases

  defstruct \
    status_code: 200,
    body: "Hello world!"

  def new do
    %Response{}
  end

  def from_match_data(data), do: struct(Response, DataNormalizer.normalize(data))
end
