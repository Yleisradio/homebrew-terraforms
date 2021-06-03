cask "terraform-0.15.5" do
  version "0.15.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.5/terraform_0.15.5_darwin_amd64.zip"
    sha256 "27d5ae2431240dff928e6483170b570782a8dd1a2b7c32ce1793097af1acb9bd"
  end

  depends_on arch: [:x86_64]
end
