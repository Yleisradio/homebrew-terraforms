cask "terraform-1.6.0" do
  version "1.6.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.6.0/terraform_1.6.0_darwin_amd64.zip"
    sha256 "8993da0dac34cc8ba9b88f925c17d54ec490bea6d18f6f49b07d535e6264a608"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.6.0/terraform_1.6.0_darwin_arm64.zip"
    sha256 "aaf3f6639c9fd3864059955a36ccdadd7b54bab681fbe760525548a53cc0c7ec"
  end

  depends_on arch: [:x86_64, :arm64]
end
