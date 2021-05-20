cask "terraform-0.15.4" do
  version "0.15.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.4/terraform_0.15.4_darwin_amd64.zip"
    sha256 "c7e413ad9d00a5ba177a32b0d46ff177239bd53a1aab67e7c5efad2e1e25978e"
  end

  depends_on arch: [:x86_64]
end
