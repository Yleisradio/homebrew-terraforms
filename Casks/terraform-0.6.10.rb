cask "terraform-0.6.10" do
  version "0.6.10"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.6.10/terraform_0.6.10_darwin_amd64.zip"
    sha256 "9009582111ba938bd7e22767f533c712fb763dffa9f390b40b17f18742bfac59"
  end

  depends_on arch: [:x86_64]
end
