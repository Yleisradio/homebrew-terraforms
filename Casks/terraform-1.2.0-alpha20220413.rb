cask "terraform-1.2.0-alpha20220413" do
  version "1.2.0-alpha20220413"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.0-alpha20220413/terraform_1.2.0-alpha20220413_darwin_amd64.zip"
    sha256 "8642ee1d2cfea914f5ed982b2839c34d693d66b7e410a94774aaacd1934ba0e6"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.0-alpha20220413/terraform_1.2.0-alpha20220413_darwin_arm64.zip"
    sha256 "4f1dd666857728915b91e3681f536945028fe5c3517a820fae503d39d0d74b38"
  end

  depends_on arch: [:x86_64, :arm64]
end
