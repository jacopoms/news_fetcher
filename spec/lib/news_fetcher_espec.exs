defmodule NewsFetcherSpec do
  use ESpec
  describe ".process_request_url/1" do
    subject do: NewsFetcher.process_request_url("")
    let :expected_url, do: "http://content.guardianapis.com/"
    it "returns the expected url" do
      expect subject() |> to(eq(expected_url()))
    end
  end

  describe ".process_request_options/1" do
    subject do: NewsFetcher.process_request_options("some-key")
    let :expected_options, do: [api_key: "some-key"]
    it "returns the expected options" do
      # subject()
      # |> IO.inspect(label: "before expect")
      # |> expect
      # |> IO.inspect(label: "after expect")
      # |> to(eq(expected_options()))

      expect subject() |> to(eq(expected_options()))
    end
  end


  describe ".search/1" do
    subject do: NewsFetcher.search("italy")

  end
end
