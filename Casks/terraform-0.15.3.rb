cask "terraform-0.15.3" do
  version "0.15.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.3/terraform_0.15.3_darwin_amd64.zip"
    sha256 "2cfa2f896aaf2c2b2fdadea6881f2796fe0d85ad0a42f471aadfb113bc32d11b"
  end

  depends_on arch: [:x86_64]
end
