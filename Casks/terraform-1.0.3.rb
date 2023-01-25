cask "terraform-1.0.3" do
  version "1.0.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.3/terraform_1.0.3_darwin_amd64.zip"
    sha256 "2a8be22018464e981461f0ad1296946d97d6d85b366565eea46c545ded86bc24"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.3/terraform_1.0.3_darwin_arm64.zip"
    sha256 "134bb5581b091c8efe45f61eebd301aca9ff7b0c7491a254287cd0411dfe7a93"
  end

  depends_on arch: [:x86_64, :arm64]
end
