defmodule NewsFetcher do
  use HTTPoison.Base
  @moduledoc """
  Documentation for `NewsFetcher`.
  """

  @doc """
  Base URL for guardian content.

  ## Examples

      iex> NewsFetcher.process_request_url("")
      "http://content.guardianapis.com/"

  """
  def process_request_url(url) do
    "http://content.guardianapis.com/" <> url
  end

  def process_request_options(options) do

  end
end
