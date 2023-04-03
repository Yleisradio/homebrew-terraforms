cask "terraform-0.12.8" do
  version "0.12.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.8/terraform_0.12.8_darwin_amd64.zip"
    sha256 "6f472c3cff1b679c43ebf128e164d35fc15ff95f10a8a02f9027fd60a0bcab6f"
  end

  depends_on arch: [:x86_64]
end
