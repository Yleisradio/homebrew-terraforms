cask "terraform-1.2.6" do
  version "1.2.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.6/terraform_1.2.6_darwin_amd64.zip"
    sha256 "94d1efad05a06c879b9c1afc8a6f7acb2532d33864225605fc766ecdd58d9888"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.6/terraform_1.2.6_darwin_arm64.zip"
    sha256 "452675f91cfe955a95708697a739d9b114c39ff566da7d9b31489064ceaaf66a"
  end

  depends_on arch: [:x86_64, :arm64]
end
