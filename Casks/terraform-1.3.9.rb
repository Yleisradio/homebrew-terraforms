cask "terraform-1.3.9" do
  version "1.3.9"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.9/terraform_1.3.9_darwin_amd64.zip"
    sha256 "a73326ea8fb06f6976597e005f8047cbd55ac76ed1e517303d8f6395db6c7805"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.9/terraform_1.3.9_darwin_arm64.zip"
    sha256 "d8a59a794a7f99b484a07a0ed2aa6520921d146ac5a7f4b1b806dcf5c4af0525"
  end

  depends_on arch: [:x86_64, :arm64]
end
