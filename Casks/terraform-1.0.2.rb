cask "terraform-1.0.2" do
  version "1.0.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.2/terraform_1.0.2_darwin_amd64.zip"
    sha256 "f323afd5804bf6dbe639585bea5edc68f429011fc8a44519f3f1654ab88e9a5f"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.2/terraform_1.0.2_darwin_arm64.zip"
    sha256 "f653da49e48dfd677403ba6babede93918ab4196280c0ea4d64a442d948723b6"
  end

  depends_on arch: [:x86_64, :arm64]
end
