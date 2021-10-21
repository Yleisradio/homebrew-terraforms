cask "terraform-1.1.0-alpha20211020" do
  version "1.1.0-alpha20211020"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20211020/terraform_1.1.0-alpha20211020_darwin_amd64.zip"
    sha256 "16686005a31b8404f5baedb260ebb11186868ce6c42f345b45e19b83e170f9c1"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20211020/terraform_1.1.0-alpha20211020_darwin_arm64.zip"
    sha256 "282d76d3c33b2e9bf94212a2485fe5a31fc1a4e6d6339ac6cfa923db001edb7b"
  end

  depends_on arch: [:x86_64, :arm64]
end
