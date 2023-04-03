cask "terraform-0.14.4" do
  version "0.14.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.4/terraform_0.14.4_darwin_amd64.zip"
    sha256 "9efab671f69dd277ab961aff36c17bc2c33a927246b51c55df3816bfd3184966"
  end

  depends_on arch: [:x86_64]
end
