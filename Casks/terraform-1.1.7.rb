cask "terraform-1.1.7" do
  version "1.1.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.7/terraform_1.1.7_darwin_amd64.zip"
    sha256 "1929033b24e2ab21f2d28709a13e19b5c7e8ac9509daf8a87d200fd3a47cce3d"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.7/terraform_1.1.7_darwin_arm64.zip"
    sha256 "d457409a895cb5611e38425a8fc0804b782deec698cc4b9bbbf290bc67186d0f"
  end

  depends_on arch: [:x86_64, :arm64]
end
