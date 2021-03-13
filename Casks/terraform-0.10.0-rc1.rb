cask "terraform-0.10.0-rc1" do
  version "0.10.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.10.0-rc1/terraform_0.10.0-rc1_darwin_amd64.zip"
    sha256 "cb8b8c7abc291467bd432cbadb993b6972538c0d438cd6933d29c5c0702574d2"
  end

  depends_on arch: [:x86_64]
end
