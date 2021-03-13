cask "terraform-0.12.15" do
  version "0.12.15"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.15/terraform_0.12.15_darwin_amd64.zip"
    sha256 "c1ec56b36e8395a454b7d0ba421aa42c54d2f91c913893447d20aecf1437623f"
  end

  depends_on arch: [:x86_64]
end
