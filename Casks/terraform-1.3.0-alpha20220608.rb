cask "terraform-1.3.0-alpha20220608" do
  version "1.3.0-alpha20220608"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220608/terraform_1.3.0-alpha20220608_darwin_amd64.zip"
    sha256 "5917598e8fadf9d77e0201c0327e33a6123d6448530724417f4371a25944ed99"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220608/terraform_1.3.0-alpha20220608_darwin_arm64.zip"
    sha256 "1662a8e2b86c920c39ccf298bce464f7d85b05f16670b06fd370698f849d7f60"
  end

  depends_on arch: [:x86_64, :arm64]
end
