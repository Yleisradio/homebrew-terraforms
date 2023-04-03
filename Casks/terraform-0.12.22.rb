cask "terraform-0.12.22" do
  version "0.12.22"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.22/terraform_0.12.22_darwin_amd64.zip"
    sha256 "7e2c6d74fb3ff141976567b3903d3ffc6721230d3dd4e346e4c09de146a947bb"
  end

  depends_on arch: [:x86_64]
end
