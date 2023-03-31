cask "terraform-1.4.4" do
  version "1.4.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.4.4/terraform_1.4.4_darwin_amd64.zip"
    sha256 "0303ed9d7e5a225fc2e6fa9bf76fc6574c0c0359f22d5dfc04bc8b3234444f7c"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.4.4/terraform_1.4.4_darwin_arm64.zip"
    sha256 "75602d9ec491982ceabea813569579b2991093a4e0d76b7ca86ffd9b7a2a1d1e"
  end

  depends_on arch: [:x86_64, :arm64]
end
