cask "terraform-0.12.17" do
  version "0.12.17"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.17/terraform_0.12.17_darwin_amd64.zip"
    sha256 "b0a3fe53880b074cfb173b492cf6891ff3cd2614589570af04a73a64cc12deb5"
  end

  depends_on arch: [:x86_64]
end
