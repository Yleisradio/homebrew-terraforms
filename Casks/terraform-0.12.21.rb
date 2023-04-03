cask "terraform-0.12.21" do
  version "0.12.21"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.21/terraform_0.12.21_darwin_amd64.zip"
    sha256 "2303c361e66ae64ccbf09b0e1c50cea4f28727e913c52d930e8a885d79c099f3"
  end

  depends_on arch: [:x86_64]
end
