cask "terraform-1.0.7" do
  version "1.0.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.7/terraform_1.0.7_darwin_amd64.zip"
    sha256 "909ca6950538a8a93c8d99c990b99b4a63285aadc57a7ec7d3b60aa0859fdc2c"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.7/terraform_1.0.7_darwin_arm64.zip"
    sha256 "014b781faf36bfe55ccb6c98e51b46ab6ef006890249a122bdeca0b208bf5396"
  end

  depends_on arch: [:x86_64, :arm64]
end
