cask "terraform-0.6.6" do
  version "0.6.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.6.6/terraform_0.6.6_darwin_amd64.zip"
    sha256 "43912f5d3eac34a73eaa182a78e13e8392ff4b81f053be4a61cd78db53c505a7"
  end

  depends_on arch: [:x86_64]
end
