cask "terraform-1.4.2" do
  version "1.4.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.4.2/terraform_1.4.2_darwin_amd64.zip"
    sha256 "c218a6c0ef6692b25af16995c8c7bdf6739e9638fef9235c6aced3cd84afaf66"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.4.2/terraform_1.4.2_darwin_arm64.zip"
    sha256 "af8ff7576c8fc41496fdf97e9199b00d8d81729a6a0e821eaf4dfd08aa763540"
  end

  depends_on arch: [:x86_64, :arm64]
end
