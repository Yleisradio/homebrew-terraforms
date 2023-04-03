cask "terraform-1.0.3" do
  version "1.0.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.3/terraform_1.0.3_darwin_amd64.zip"
    sha256 "6e86dfff2f90ddc1232b38487613d5f7eab69f227d76c4337921517aaaa11c4f"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.3/terraform_1.0.3_darwin_arm64.zip"
    sha256 "a16f8851e11fcc5b922c529169918b05d39ffd85557e6bbbcd7843cf07e47910"
  end

  depends_on arch: [:x86_64, :arm64]
end
