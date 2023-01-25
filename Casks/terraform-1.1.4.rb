cask "terraform-1.1.4" do
  version "1.1.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.4/terraform_1.1.4_darwin_amd64.zip"
    sha256 "ec38bbc7a0153fe15cecc29895cbf0c4fb22228e8408538af99af59414f14b6c"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.4/terraform_1.1.4_darwin_arm64.zip"
    sha256 "d13e93873f3831eb221391e5ad4d1da37becea5476a88663141325378613829c"
  end

  depends_on arch: [:x86_64, :arm64]
end
