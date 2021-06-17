cask "terraform-1.1.0-alpha20210616" do
  version "1.1.0-alpha20210616"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210616/terraform_1.1.0-alpha20210616_darwin_amd64.zip"
    sha256 "941fbe1607ed501b278a9e4c42fb8c5dc11366aa09f5c30139bb1a209c4c2c6c"
  end

  depends_on arch: [:x86_64]
end
