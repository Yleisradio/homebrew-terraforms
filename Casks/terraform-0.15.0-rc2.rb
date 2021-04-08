cask "terraform-0.15.0-rc2" do
  version "0.15.0-rc2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0-rc2/terraform_0.15.0-rc2_darwin_amd64.zip"
    sha256 "2fd60ccbd3d01fb5adb57863c8cb0df98e0743d6a7a9a38dffeea631cef95d9f"
  end

  depends_on arch: [:x86_64]
end
