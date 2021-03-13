cask "terraform-0.12.0-alpha1" do
  version "0.12.0-alpha1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.0-alpha1/terraform_0.12.0-alpha1_darwin_amd64.zip"
    sha256 "2797b82e22c5557da604b6b727cb8112844a92c81b16840980a43ed78d9e0512"
  end

  depends_on arch: [:x86_64]
end
