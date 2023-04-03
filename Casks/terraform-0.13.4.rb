cask "terraform-0.13.4" do
  version "0.13.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.4/terraform_0.13.4_darwin_amd64.zip"
    sha256 "5011d509a23ed6e2010a25f0449552b03822d7ef9b8b48f8a2f3277f2f34b736"
  end

  depends_on arch: [:x86_64]
end
