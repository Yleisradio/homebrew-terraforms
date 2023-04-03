cask "terraform-1.2.0-rc1" do
  version "1.2.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.0-rc1/terraform_1.2.0-rc1_darwin_amd64.zip"
    sha256 "6891ce78a1b184484ea297d7ed7b82367b23191ff03bcf029d9f32209a18e7df"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.0-rc1/terraform_1.2.0-rc1_darwin_arm64.zip"
    sha256 "459b92dac3965a3888cae2d11930785b1e7c76189fd2e8d3feb1a0bbebb34ce0"
  end

  depends_on arch: [:x86_64, :arm64]
end
