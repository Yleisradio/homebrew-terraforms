cask "terraform-0.12.18" do
  version "0.12.18"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.18/terraform_0.12.18_darwin_amd64.zip"
    sha256 "0a64060a1342e7102d6d0e50104ac7a5192e8bf9a8816bd350c581a19efecabe"
  end

  depends_on arch: [:x86_64]
end
