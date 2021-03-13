cask "terraform-0.11.6" do
  version "0.11.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.6/terraform_0.11.6_darwin_amd64.zip"
    sha256 "edbdde7ca769a5c7ca1c048bd5729b1f70d556b4ee61287dff5057660bc1f64d"
  end

  depends_on arch: [:x86_64]
end
