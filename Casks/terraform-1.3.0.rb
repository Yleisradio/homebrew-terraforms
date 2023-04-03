cask "terraform-1.3.0" do
  version "1.3.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0/terraform_1.3.0_darwin_amd64.zip"
    sha256 "80e55182d4495da867c93c25dc6ae29be83ece39d3225e6adedecd55b72d6bbf"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0/terraform_1.3.0_darwin_arm64.zip"
    sha256 "df703317b5c7f80dc7c61e46de4697c9f440e650a893623351ab5e184995b404"
  end

  depends_on arch: [:x86_64, :arm64]
end
