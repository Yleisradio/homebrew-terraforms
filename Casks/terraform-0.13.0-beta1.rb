cask "terraform-0.13.0-beta1" do
  version "0.13.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.0-beta1/terraform_0.13.0-beta1_darwin_amd64.zip"
    sha256 "dfdc8ef005df19d7ec0fcb5f151e51b144233ca425c39dabf94c037e80780b05"
  end

  depends_on arch: [:x86_64]
end
