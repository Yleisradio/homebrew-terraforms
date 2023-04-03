cask "terraform-0.12.24" do
  version "0.12.24"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_darwin_amd64.zip"
    sha256 "d97e5bb1064aa2da0b82865ecf588bea20afdd6bfaf0692fafcb9ff765de9b2b"
  end

  depends_on arch: [:x86_64]
end
