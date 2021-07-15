cask "terraform-1.1.0-alpha20210714" do
  version "1.1.0-alpha20210714"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210714/terraform_1.1.0-alpha20210714_darwin_amd64.zip"
    sha256 "e35af55d525ab8c18ed880b2875caf280fb720b3d845f23021e7c0efb07048b8"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210714/terraform_1.1.0-alpha20210714_darwin_arm64.zip"
    sha256 "63524ccb1ceca43180205ba15e4d5af6831ddfb1797e93d7a0e583f56962968c"
  end

  depends_on arch: [:x86_64, :arm64]
end
