cask "terraform-1.1.3" do
  version "1.1.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.3/terraform_1.1.3_darwin_amd64.zip"
    sha256 "016bab760c96d4e64d2140a5f25c614ccc13c3fe9b3889e70c564bd02099259f"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.3/terraform_1.1.3_darwin_arm64.zip"
    sha256 "02ba769bb0a8d4bc50ff60989b0f201ce54fd2afac2fb3544a0791aca5d3f6d5"
  end

  depends_on arch: [:x86_64, :arm64]
end
