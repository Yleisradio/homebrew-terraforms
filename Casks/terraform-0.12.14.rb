cask "terraform-0.12.14" do
  version "0.12.14"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.14/terraform_0.12.14_darwin_amd64.zip"
    sha256 "23de0d866199d0d305084c146969115318773921fcf22c1d78503bdafec4c44d"
  end

  depends_on arch: [:x86_64]
end
