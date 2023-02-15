cask "terraform-1.3.9" do
  version "1.3.9"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.9/terraform_1.3.9_darwin_amd64.zip"
    sha256 "ca78815afd657f887de7f9b74014dc4bddffe80fd28028179b271a3c4f64f29a"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.9/terraform_1.3.9_darwin_arm64.zip"
    sha256 "9df6fc8a9264bba1058e6e9383f43af2ee816088e61925e5bc45128ad8b6e9ad"
  end

  depends_on arch: [:x86_64, :arm64]
end
