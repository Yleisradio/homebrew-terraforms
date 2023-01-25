cask "terraform-1.4.0-alpha20221207" do
  version "1.4.0-alpha20221207"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.4.0-alpha20221207/terraform_1.4.0-alpha20221207_darwin_amd64.zip"
    sha256 "4ccc37ca714d6068a5624ec1b05ec219548270673823c04299bdd17973faf4cf"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.4.0-alpha20221207/terraform_1.4.0-alpha20221207_darwin_arm64.zip"
    sha256 "0fe42b84847d9d320417e51f6b9918a8e4ff6a2ce2e3dabc8aa6a86372847964"
  end

  depends_on arch: [:x86_64, :arm64]
end
