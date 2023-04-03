cask "terraform-0.12.28" do
  version "0.12.28"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.28/terraform_0.12.28_darwin_amd64.zip"
    sha256 "2c144bdd455d2cf059ff2e6db048667d6e093f29de172188aad176325ca5dc68"
  end

  depends_on arch: [:x86_64]
end
