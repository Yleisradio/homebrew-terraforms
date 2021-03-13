cask "terraform-0.12.23" do
  version "0.12.23"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.23/terraform_0.12.23_darwin_amd64.zip"
    sha256 "ca1a0bc58b4e482d0bdcaee95d002f4901094935fd4b184f57563a5c34fd18d9"
  end

  depends_on arch: [:x86_64]
end
