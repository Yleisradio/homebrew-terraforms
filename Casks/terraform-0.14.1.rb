cask "terraform-0.14.1" do
  version "0.14.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.1/terraform_0.14.1_darwin_amd64.zip"
    sha256 "3077741547eaa8885aa0f8fb9ed160b6f069a55c8e8f908a316416a13c4407ca"
  end

  depends_on arch: [:x86_64]
end
