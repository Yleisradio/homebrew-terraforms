cask "terraform-1.3.2" do
  version "1.3.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.2/terraform_1.3.2_darwin_amd64.zip"
    sha256 "b5874e6a2b355f90331e0256737bbeeb85be59e477c32619555e98848b983765"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.2/terraform_1.3.2_darwin_arm64.zip"
    sha256 "4e186e1caadad1e86281cb44f552d12f39186ae2ffe5852a525582b62353bcfc"
  end

  depends_on arch: [:x86_64, :arm64]
end
