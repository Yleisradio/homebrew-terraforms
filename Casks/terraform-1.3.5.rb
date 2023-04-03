cask "terraform-1.3.5" do
  version "1.3.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.5/terraform_1.3.5_darwin_amd64.zip"
    sha256 "e6c9836188265b20c2588e9c9d6b1727094b324a379337e68ba58a6d26be8b51"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.5/terraform_1.3.5_darwin_arm64.zip"
    sha256 "fcec1cbff229fbe59b03257ba2451d5ad1f5129714f08ccf6372b2737647c063"
  end

  depends_on arch: [:x86_64, :arm64]
end
