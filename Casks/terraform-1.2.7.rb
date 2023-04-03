cask "terraform-1.2.7" do
  version "1.2.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.7/terraform_1.2.7_darwin_amd64.zip"
    sha256 "74e47b54ea78685be24c84e0e17b22b56220afcdb24ec853514b3863199f01e4"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.7/terraform_1.2.7_darwin_arm64.zip"
    sha256 "ec4e623914b411f8cc93a1e71396a1e7f1fe1e96bb2e532ba3e955d2ca5cc442"
  end

  depends_on arch: [:x86_64, :arm64]
end
