cask "terraform-1.3.0-alpha20220608" do
  version "1.3.0-alpha20220608"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220608/terraform_1.3.0-alpha20220608_darwin_amd64.zip"
    sha256 "f3ae274c586e3ca7c1dbaecf1c475ff70fe942de91caeb47540b39e906589d0c"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220608/terraform_1.3.0-alpha20220608_darwin_arm64.zip"
    sha256 "798d0b02ce243a59d4982fcc0a1d00ed9f3fcdd22cc194503866291f217047ee"
  end

  depends_on arch: [:x86_64, :arm64]
end
