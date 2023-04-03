cask "terraform-1.1.4" do
  version "1.1.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.4/terraform_1.1.4_darwin_amd64.zip"
    sha256 "4f3bc78fedd4aa17f67acc0db4eafdb6d70ba72392aaba65fe72855520f11f3d"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.4/terraform_1.1.4_darwin_arm64.zip"
    sha256 "5642b46e9c7fb692f05eba998cd4065fb2e48aa8b0aac9d2a116472fbabe34a1"
  end

  depends_on arch: [:x86_64, :arm64]
end
