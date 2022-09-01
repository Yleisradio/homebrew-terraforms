cask "terraform-1.3.0-beta1" do
  version "1.3.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0-beta1/terraform_1.3.0-beta1_darwin_amd64.zip"
    sha256 "2f407536ec57a1c6ccb6936dee202e676c4d5f1bc085bcbf6a4e8fad1180d879"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0-beta1/terraform_1.3.0-beta1_darwin_arm64.zip"
    sha256 "3eecf0ac0d1d091f17c9dfedd3c0f7e45de79b30092fa84f0014094b288234df"
  end

  depends_on arch: [:x86_64, :arm64]
end
