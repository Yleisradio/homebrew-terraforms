cask "terraform-0.2.0" do
  version "0.2.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.2.0/terraform_0.2.0_darwin_amd64.zip"
    sha256 "32c1c5d2df88c612207e9b5edea6f0f4c3bbdc8f2ae5f8c577ede2055548136b"
  end

  depends_on arch: [:x86_64]
end
