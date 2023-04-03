cask "terraform-1.1.5" do
  version "1.1.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.5/terraform_1.1.5_darwin_amd64.zip"
    sha256 "dcf7133ebf61d195e432ddcb70e604bf45056163d960e991881efbecdbd7892b"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.5/terraform_1.1.5_darwin_arm64.zip"
    sha256 "6e5a8d22343722dc8bfcf1d2fd7b742f5b46287f87171e8143fc9b87db32c3d4"
  end

  depends_on arch: [:x86_64, :arm64]
end
