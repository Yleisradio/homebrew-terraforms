cask "terraform-1.6.0-beta3" do
  version "1.6.0-beta3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.6.0-beta3/terraform_1.6.0-beta3_darwin_amd64.zip"
    sha256 "b2cb44e473d196b4e7d9014e1f12acc140e10ea93e14c55da10a82a8af19f21f"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.6.0-beta3/terraform_1.6.0-beta3_darwin_arm64.zip"
    sha256 "ddbdf706f205e5def3388e630786f5f17d72ac15ac5e3d7521fa95a4d4f6d76c"
  end

  depends_on arch: [:x86_64, :arm64]
end
