cask "terraform-0.12.3" do
  version "0.12.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.3/terraform_0.12.3_darwin_amd64.zip"
    sha256 "f0e09af8ce413ec9a949c00ea6645cd8169a03412e545a3375adf91c3ad8c7ad"
  end

  depends_on arch: [:x86_64]
end
