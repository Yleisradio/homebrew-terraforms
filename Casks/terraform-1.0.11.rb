cask "terraform-1.0.11" do
  version "1.0.11"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_darwin_amd64.zip"
    sha256 "5b6771c87f3febde756baa132d38a67fcac284291a1f88918a58a41d879d2558"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_darwin_arm64.zip"
    sha256 "435cc512332c28c38c98cda11a2ef3670564cfc85ba4e6fe0a73462713799f9e"
  end

  depends_on arch: [:x86_64, :arm64]
end
