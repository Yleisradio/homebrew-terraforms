cask "terraform-1.1.9" do
  version "1.1.9"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.9/terraform_1.1.9_darwin_amd64.zip"
    sha256 "26afa7cda355fbf32a2b4cfd9122a49132f1b68337691b91f05caa0b1023c388"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.9/terraform_1.1.9_darwin_arm64.zip"
    sha256 "80a230b56853f0fd50e12006c0d527da6a7f2e9974f25f7d372abfa2761ee3a3"
  end

  depends_on arch: [:x86_64, :arm64]
end
