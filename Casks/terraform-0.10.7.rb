cask "terraform-0.10.7" do
  version "0.10.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.10.7/terraform_0.10.7_darwin_amd64.zip"
    sha256 "60924d17e40be4b055629719a1f633736cca70c4506b8f7e32fa17e0d6e57477"
  end

  depends_on arch: [:x86_64]
end
