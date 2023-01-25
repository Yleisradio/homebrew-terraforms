cask "terraform-1.2.1" do
  version "1.2.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.1/terraform_1.2.1_darwin_amd64.zip"
    sha256 "f9cf601b455df91fa8894d5f8169e3901cb562b7579c76d26bf429d03dad1437"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.1/terraform_1.2.1_darwin_arm64.zip"
    sha256 "46adfff9135f43635b2077ec642429a4ec3201169430c8de97ae31884ab40b74"
  end

  depends_on arch: [:x86_64, :arm64]
end
