cask "terraform-0.11.15-oci" do
  version "0.11.15-oci"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.15-oci/terraform_0.11.15-oci_darwin_amd64.zip"
    sha256 "52e20f74001af262792ea379be3eb7f169420646e48514d063ffe2591a844821"
  end

  depends_on arch: [:x86_64]
end
