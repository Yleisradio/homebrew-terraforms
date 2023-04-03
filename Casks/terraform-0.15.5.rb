cask "terraform-0.15.5" do
  version "0.15.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.5/terraform_0.15.5_darwin_amd64.zip"
    sha256 "5ad75ed3def05f36b5c5dab97dee00b5d3d86be9f9dcd205b48136312505f3fc"
  end

  depends_on arch: [:x86_64]
end
