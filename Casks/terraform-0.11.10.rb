cask "terraform-0.11.10" do
  version "0.11.10"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.10/terraform_0.11.10_darwin_amd64.zip"
    sha256 "cb5ae1fa5bed45d81d79d427cd1dd84ed7c04f712c72b420003e28f522a77a78"
  end

  depends_on arch: [:x86_64]
end
