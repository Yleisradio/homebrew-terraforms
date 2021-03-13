cask "terraform-0.12.26" do
  version "0.12.26"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.26/terraform_0.12.26_darwin_amd64.zip"
    sha256 "79fb293324012bc981006e1527267987666dd80cff80b11f93fb0ab2e321c450"
  end

  depends_on arch: [:x86_64]
end
