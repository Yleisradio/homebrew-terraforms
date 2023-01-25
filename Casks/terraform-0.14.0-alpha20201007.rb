cask "terraform-0.14.0-alpha20201007" do
  version "0.14.0-alpha20201007"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.0-alpha20201007/terraform_0.14.0-alpha20201007_darwin_amd64.zip"
    sha256 "a334ee3d6195e3aa39127bbff36c7ec614f8758d85d70259341a1e9934595a59"
  end

  depends_on arch: [:x86_64]
end
