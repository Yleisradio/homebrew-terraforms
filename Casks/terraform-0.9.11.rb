cask "terraform-0.9.11" do
  version "0.9.11"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.9.11/terraform_0.9.11_darwin_amd64.zip"
    sha256 "31ca22b9b8e840789314085ea3a9a666af261b17c0f86b68dfedf1eb50345cbd"
  end

  depends_on arch: [:x86_64]
end
