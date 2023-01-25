cask "terraform-0.14.0-alpha20200910" do
  version "0.14.0-alpha20200910"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.0-alpha20200910/terraform_0.14.0-alpha20200910_darwin_amd64.zip"
    sha256 "2068bbedc098668b7a84ba08069ddb4a4622d782ee4f3b0eaf5dd034273da0b0"
  end

  depends_on arch: [:x86_64]
end
