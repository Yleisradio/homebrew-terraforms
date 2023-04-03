cask "terraform-1.2.6" do
  version "1.2.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.6/terraform_1.2.6_darwin_amd64.zip"
    sha256 "d896d2776af8b06cd4acd695ad75913040ce31234f5948688fd3c3fde53b1f75"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.6/terraform_1.2.6_darwin_arm64.zip"
    sha256 "c88ceb34f343a2bb86960e32925c5ec43b41922ee9ede1019c5cf7d7b4097718"
  end

  depends_on arch: [:x86_64, :arm64]
end
