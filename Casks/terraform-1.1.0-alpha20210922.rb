cask "terraform-1.1.0-alpha20210922" do
  version "1.1.0-alpha20210922"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210922/terraform_1.1.0-alpha20210922_darwin_amd64.zip"
    sha256 "22f9ddf073127d051e275b674a24cba2e3034f7e13df08ac8da73bc980c82944"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210922/terraform_1.1.0-alpha20210922_darwin_arm64.zip"
    sha256 "49698f86bb2dd8c58c7e028105890d631f3c705ba210c0719b1e50b8a85a5501"
  end

  depends_on arch: [:x86_64, :arm64]
end
