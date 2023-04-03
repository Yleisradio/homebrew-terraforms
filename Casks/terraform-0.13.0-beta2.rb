cask "terraform-0.13.0-beta2" do
  version "0.13.0-beta2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.0-beta2/terraform_0.13.0-beta2_darwin_amd64.zip"
    sha256 "44c3afe6bb53020a82341c26ac36612a32a135163ff490aa778e9eefa53bf0f3"
  end

  depends_on arch: [:x86_64]
end
