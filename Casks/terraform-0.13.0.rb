cask "terraform-0.13.0" do
  version "0.13.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.0/terraform_0.13.0_darwin_amd64.zip"
    sha256 "080af0420732cd08941aa4c0d2b4693056b24366724faa11b107bf052f7de203"
  end

  depends_on arch: [:x86_64]
end
