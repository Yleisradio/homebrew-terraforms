cask "terraform-1.8.0-alpha20240214" do
  version "1.8.0-alpha20240214"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.8.0-alpha20240214/terraform_1.8.0-alpha20240214_darwin_amd64.zip"
    sha256 "b8093f8770eba6e22879941d59f020bbf315ac73b7ee8409820fc66b2e7fffe7"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.8.0-alpha20240214/terraform_1.8.0-alpha20240214_darwin_arm64.zip"
    sha256 "47c6f59a38c3f53eb4d2e239dac8528507fd75cb6f98fa2bdedb47eb6b0c081c"
  end

  depends_on arch: [:x86_64, :arm64]
end
