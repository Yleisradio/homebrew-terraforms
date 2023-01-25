cask "terraform-0.14.0-beta1" do
  version "0.14.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.0-beta1/terraform_0.14.0-beta1_darwin_amd64.zip"
    sha256 "691ec8a5be44b78e306123c033961d841506b6af54c511cef22bfb7385008361"
  end

  depends_on arch: [:x86_64]
end
