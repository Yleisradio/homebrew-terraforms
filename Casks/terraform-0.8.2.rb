cask "terraform-0.8.2" do
  version "0.8.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.8.2/terraform_0.8.2_darwin_amd64.zip"
    sha256 "06bec1c06dbeb89ea7fdc2036be972372aa6847d3883786ab285386750a7ceb6"
  end

  depends_on arch: [:x86_64]
end
