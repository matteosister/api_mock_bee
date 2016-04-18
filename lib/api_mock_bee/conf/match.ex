defmodule ApiMockBee.Conf.Match do
  use ApiMockBee.Aliases

  defstruct \
    method: "get", # the method to match
    route: "*", # the route to match, * means everything
    response: Response.new, # response to output
    headers: [] # headers to match

  def new do
    %Match{}
  end
end
