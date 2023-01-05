cask "terraform-1.3.7" do
  version "1.3.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.7/terraform_1.3.7_darwin_amd64.zip"
    sha256 "aa111cd80d84586697d1643c6c21452d34f70e5bc639e4106856f59382351397"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.7/terraform_1.3.7_darwin_arm64.zip"
    sha256 "8860db524d1a51435cbed731902c7de1595348c09dd5b3a342024405c8e7ef74"
  end

  depends_on arch: [:x86_64, :arm64]
end
