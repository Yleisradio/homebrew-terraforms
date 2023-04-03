cask "terraform-0.11.15-oci" do
  version "0.11.15-oci"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.15-oci/terraform_0.11.15-oci_darwin_amd64.zip"
    sha256 "e219eeee655797d485005014f3833ebfb5484423fa770cf462a03c36f3cfa359"
  end

  depends_on arch: [:x86_64]
end
