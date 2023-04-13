cask "terraform-1.4.5" do
  version "1.4.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.4.5/terraform_1.4.5_darwin_amd64.zip"
    sha256 "808e54d826737e9a0ca79bbe29330e50d3622bbeeb26066c63b371a291731711"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.4.5/terraform_1.4.5_darwin_arm64.zip"
    sha256 "7104d9d13632aa61b494a349c589048d21bd550e579404c3a41c4932e4d6aa97"
  end

  depends_on arch: [:x86_64, :arm64]
end
