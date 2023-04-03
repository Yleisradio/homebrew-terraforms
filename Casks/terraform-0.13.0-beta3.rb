cask "terraform-0.13.0-beta3" do
  version "0.13.0-beta3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.0-beta3/terraform_0.13.0-beta3_darwin_amd64.zip"
    sha256 "a4916de8ba4fd28699d4cdab540f9f58cc8941966d276c4ba12f4afdeffd029d"
  end

  depends_on arch: [:x86_64]
end
