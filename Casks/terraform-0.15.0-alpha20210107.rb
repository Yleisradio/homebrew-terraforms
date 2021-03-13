cask "terraform-0.15.0-alpha20210107" do
  version "0.15.0-alpha20210107"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0-alpha20210107/terraform_0.15.0-alpha20210107_darwin_amd64.zip"
    sha256 "91d1c9424968c0efbc9ac5958e14bfe103981c885da1ace12114288884b8c855"
  end

  depends_on arch: [:x86_64]
end
