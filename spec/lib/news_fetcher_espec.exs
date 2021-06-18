defmodule NewsFetcherSpec do
  use ESpec
  describe ".process_request_url" do
    subject do: NewsFetcher.process_request_url("")
    let :expected_url, do: "http://content.guardianapis.com/"
    it "returns the expected url" do
      expect subject() |> to(eq(expected_url()))
    end
  end

  # describe ".process_request_options" do
  #   subject(NewsFetcher.process_request_options())
  #   let :expected
  # end
end
