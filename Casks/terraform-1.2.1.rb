cask "terraform-1.2.1" do
  version "1.2.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.1/terraform_1.2.1_darwin_amd64.zip"
    sha256 "d7c9a677efb22276afdd6c7703cbfee87d509a31acb247b96aa550a35154400a"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.1/terraform_1.2.1_darwin_arm64.zip"
    sha256 "96e3659e89bfb50f70d1bb8660452ec433019d00a862d2291817c831305d85ea"
  end

  depends_on arch: [:x86_64, :arm64]
end
