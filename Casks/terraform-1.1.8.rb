cask "terraform-1.1.8" do
  version "1.1.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.8/terraform_1.1.8_darwin_amd64.zip"
    sha256 "29ad0af72d498a76bbc51cc5cb09a6d6d0e5673cbbab6ef7aca57e3c3e780f46"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.8/terraform_1.1.8_darwin_arm64.zip"
    sha256 "d6fefdc27396a019da56cce26f7eeea3d6986714cbdd488ff6a424f4bca40de8"
  end

  depends_on arch: [:x86_64, :arm64]
end
