cask "terraform-1.2.3" do
  version "1.2.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.3/terraform_1.2.3_darwin_amd64.zip"
    sha256 "2962b0ebdf6f431b8fb182ffc1d8b582b73945db0c3ab99230ffc360d9e297a2"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.3/terraform_1.2.3_darwin_arm64.zip"
    sha256 "601962205ad3dcf9b1b75f758589890a07854506cbd08ca2fc25afbf373bff53"
  end

  depends_on arch: [:x86_64, :arm64]
end
