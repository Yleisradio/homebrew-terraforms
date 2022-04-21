cask "terraform-1.1.9" do
  version "1.1.9"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.9/terraform_1.1.9_darwin_amd64.zip"
    sha256 "c902b3c12042ac1d950637c2dd72ff19139519658f69290b310f1a5924586286"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.9/terraform_1.1.9_darwin_arm64.zip"
    sha256 "918a8684da5a5529285135f14b09766bd4eb0e8c6612a4db7c121174b4831739"
  end

  depends_on arch: [:x86_64, :arm64]
end
