cask "terraform-0.9.1" do
  version "0.9.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.9.1/terraform_0.9.1_darwin_amd64.zip"
    sha256 "4140c52917da91a276db34f01e5efc27d07b6e1deeede4137625fccf7bfabb83"
  end

  depends_on arch: [:x86_64]
end
