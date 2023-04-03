cask "terraform-0.14.9" do
  version "0.14.9"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.9/terraform_0.14.9_darwin_amd64.zip"
    sha256 "a62e812d068b44b8a93d8b2fc024850ad69cb5ce7f9b0bfc68e836b90a06693d"
  end

  depends_on arch: [:x86_64]
end
