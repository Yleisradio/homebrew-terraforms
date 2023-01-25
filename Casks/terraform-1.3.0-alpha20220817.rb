cask "terraform-1.3.0-alpha20220817" do
  version "1.3.0-alpha20220817"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220817/terraform_1.3.0-alpha20220817_darwin_amd64.zip"
    sha256 "85bd822b98781c65aaa570acc7be58c9d2d50981f0bfd7370395ee98dcfce75a"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220817/terraform_1.3.0-alpha20220817_darwin_arm64.zip"
    sha256 "06018d146f15436823cba72aa972f364e99a9c7b5f3958d2247412862abbd492"
  end

  depends_on arch: [:x86_64, :arm64]
end
