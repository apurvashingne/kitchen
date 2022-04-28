control "gcp" do
  title "Google Cloud configuration"

  describe google_compute_instance(
    project: "searce-playground-v1"
  ) do
    it { should exist }
  end
end