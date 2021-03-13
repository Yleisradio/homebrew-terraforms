cask "terraform-0.14.0-beta1" do
  version "0.14.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.0-beta1/terraform_0.14.0-beta1_darwin_amd64.zip"
    sha256 "10c5c0969438f973a25cffcae3e567697822459da3ff177d707f3ae2d5100962"
  end

  depends_on arch: [:x86_64]
end
