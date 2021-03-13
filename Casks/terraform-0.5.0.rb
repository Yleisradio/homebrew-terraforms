cask "terraform-0.5.0" do
  version "0.5.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.5.0/terraform_0.5.0_darwin_amd64.zip"
    sha256 "8033564434ed964fc630fe5ff8b4830945d38a528ad5b14e7a88e23f85591f05"
  end

  depends_on arch: [:x86_64]
end
