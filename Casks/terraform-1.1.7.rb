cask "terraform-1.1.7" do
  version "1.1.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.7/terraform_1.1.7_darwin_amd64.zip"
    sha256 "5e7e939e084ae29af7fd86b00a618433d905477c52add2d4ea8770692acbceac"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.7/terraform_1.1.7_darwin_arm64.zip"
    sha256 "a36b6e2810f81a404c11005942b69c3d1d9baa8dd07de6b1f84e87a67eedb58f"
  end

  depends_on arch: [:x86_64, :arm64]
end
