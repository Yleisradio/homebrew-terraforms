cask "terraform-1.7.0-rc2" do
  version "1.7.0-rc2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.7.0-rc2/terraform_1.7.0-rc2_darwin_amd64.zip"
    sha256 "eb63e7f64cc108897b7429866c3f94c966fec007038f7355728218cd3ef86739"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.7.0-rc2/terraform_1.7.0-rc2_darwin_arm64.zip"
    sha256 "645b8da5c5cbf8b9a2ce195e7a419ee7c6850d321df9798aea770b1f614408c6"
  end

  depends_on arch: [:x86_64, :arm64]
end
