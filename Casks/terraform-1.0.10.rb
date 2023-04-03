cask "terraform-1.0.10" do
  version "1.0.10"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.10/terraform_1.0.10_darwin_amd64.zip"
    sha256 "077479e98701bc9be88db21abeec684286fd85a3463ce437d7739d2a4e372f18"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.10/terraform_1.0.10_darwin_arm64.zip"
    sha256 "776f2e144039ece66ae326ebda0884254848a2e11f0590757d02e3a74f058c81"
  end

  depends_on arch: [:x86_64, :arm64]
end
