cask "terraform-0.9.7" do
  version "0.9.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.9.7/terraform_0.9.7_darwin_amd64.zip"
    sha256 "ece7ad727eac202b571c64018ec3d09b4d7693aea7033db81e239d96d11d48b9"
  end

  depends_on arch: [:x86_64]
end
