cask "terraform-1.1.0-alpha20211020" do
  version "1.1.0-alpha20211020"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20211020/terraform_1.1.0-alpha20211020_darwin_amd64.zip"
    sha256 "c7141fa2ad25a856155284c79b295e2054f417a3bfca88508419dba058294e10"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20211020/terraform_1.1.0-alpha20211020_darwin_arm64.zip"
    sha256 "0302cb342a1f32d821929f130637af1b44dfd1732323c8bbed8a007d90a3396c"
  end

  depends_on arch: [:x86_64, :arm64]
end
