cask "terraform-0.12.11" do
  version "0.12.11"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.11/terraform_0.12.11_darwin_amd64.zip"
    sha256 "e1ddcd5f40d3e9b2758d8bc4858117f5df94169fec16495dada96d3ab358ff34"
  end

  depends_on arch: [:x86_64]
end
