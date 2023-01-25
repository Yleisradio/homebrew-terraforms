cask "terraform-1.3.4" do
  version "1.3.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.4/terraform_1.3.4_darwin_amd64.zip"
    sha256 "295de24b5f793192fa7aa02ff9e3a1c9486d14881a0a1f126a5ce4321ca8d8c4"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.4/terraform_1.3.4_darwin_arm64.zip"
    sha256 "a02c19942edd0c5b2b4ac73d08e8c1c28238895d8afd8e98a7dab80cc2a2d920"
  end

  depends_on arch: [:x86_64, :arm64]
end
