cask "terraform-0.12.16" do
  version "0.12.16"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.16/terraform_0.12.16_darwin_amd64.zip"
    sha256 "c75ad22dd0d512531e4fed2e4e6ba6afc294ab43d33e01e144d63acfff0d8b3c"
  end

  depends_on arch: [:x86_64]
end
