cask "terraform-1.1.0-beta2" do
  version "1.1.0-beta2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-beta2/terraform_1.1.0-beta2_darwin_amd64.zip"
    sha256 "1c49422be110b5518c612968aa6b20e83a8fb74a88dd6b8fee2774b93e6cec9c"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-beta2/terraform_1.1.0-beta2_darwin_arm64.zip"
    sha256 "03b5e40d214c885629c917571982350cf8a084a416d924d89b6c035b1dff3e00"
  end

  depends_on arch: [:x86_64, :arm64]
end
