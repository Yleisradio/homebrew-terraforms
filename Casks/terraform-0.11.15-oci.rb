cask "terraform-0.11.15-oci" do
  version "0.11.15-oci"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.15-oci/terraform_0.11.15-oci_darwin_amd64.zip"
    sha256 "4ac1b0a1a7ee9e04165ce035300eddf9119124046d63fc4bfeffcc88fc6365bb"
  end

  depends_on arch: [:x86_64]
end
