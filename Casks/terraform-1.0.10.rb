cask "terraform-1.0.10" do
  version "1.0.10"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.10/terraform_1.0.10_darwin_amd64.zip"
    sha256 "a935053f20f4f38bee225fe91547457f1bc0de1aef6ac225a2460e15b72b0c83"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.10/terraform_1.0.10_darwin_arm64.zip"
    sha256 "430c08fe7c5b6d965fb60690cebd79ddab94f4c6b9fab851af3a827dbc8a5e59"
  end

  depends_on arch: [:x86_64, :arm64]
end
