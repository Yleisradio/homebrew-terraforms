cask "terraform-0.14.1" do
  version "0.14.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.1/terraform_0.14.1_darwin_amd64.zip"
    sha256 "06704f482319c703aa155ae9c2d3c8cd42ad2d8fcce3de8644dc29354bb52d80"
  end

  depends_on arch: [:x86_64]
end
