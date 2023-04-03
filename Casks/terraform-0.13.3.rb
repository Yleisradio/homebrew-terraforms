cask "terraform-0.13.3" do
  version "0.13.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.3/terraform_0.13.3_darwin_amd64.zip"
    sha256 "4a613dc18ff8cfac525a59cc0e78216fa0a9ecd63e6ac45603561ceb72f6d772"
  end

  depends_on arch: [:x86_64]
end
