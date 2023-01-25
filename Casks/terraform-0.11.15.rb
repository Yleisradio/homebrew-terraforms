cask "terraform-0.11.15" do
  version "0.11.15"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.15/terraform_0.11.15_darwin_amd64.zip"
    sha256 "e98434b0d35c4ec058479148dd590d2bbf3e419fcc6db204522cc4b0bbd9ec25"
  end

  depends_on arch: [:x86_64]
end
