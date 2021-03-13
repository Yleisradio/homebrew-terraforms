cask "terraform-0.12.10" do
  version "0.12.10"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.10/terraform_0.12.10_darwin_amd64.zip"
    sha256 "d97db2217c6050926eedf517b7b0427b1b5f1bda989742cfd33d8fe56c95bb05"
  end

  depends_on arch: [:x86_64]
end
