cask "terraform-1.3.7" do
  version "1.3.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.7/terraform_1.3.7_darwin_amd64.zip"
    sha256 "b00465acc7bdef57ba468b84b9162786e472dc97ad036a9e3526dde510563e2d"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.7/terraform_1.3.7_darwin_arm64.zip"
    sha256 "6cda396999c9a27cb90c4902913c10ac0afe1bfceb957ed50a4298c5872979cf"
  end

  depends_on arch: [:x86_64, :arm64]
end
