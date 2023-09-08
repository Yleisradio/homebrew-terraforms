cask "terraform-1.5.7" do
  version "1.5.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.5.7/terraform_1.5.7_darwin_amd64.zip"
    sha256 "b310ec0e626e9799000cfc8e30247cd827cf7f8030c8e0400257c7f111e93537"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.5.7/terraform_1.5.7_darwin_arm64.zip"
    sha256 "db7c33eb1a446b73a443e2c55b532845f7b70cd56100bec4c96f15cfab5f50cb"
  end

  depends_on arch: [:x86_64, :arm64]
end
