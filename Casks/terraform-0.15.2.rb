cask "terraform-0.15.2" do
  version "0.15.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.2/terraform_0.15.2_darwin_amd64.zip"
    sha256 "74b7317085f86b34c7dc1a1a97d8f3f1b418a56d1b3bf51c869c432851fa1138"
  end

  depends_on arch: [:x86_64]
end
