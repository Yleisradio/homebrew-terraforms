cask "terraform-1.3.0-alpha20220803" do
  version "1.3.0-alpha20220803"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220803/terraform_1.3.0-alpha20220803_darwin_amd64.zip"
    sha256 "dff45b9ebc241b7928a7f47c3eed0a2e2131f79de20e03ff4f258ee5c6c8dec1"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220803/terraform_1.3.0-alpha20220803_darwin_arm64.zip"
    sha256 "dbbc1eb035fd144dc12e4c95549506473f550b696404ec374c912bd8f36d3930"
  end

  depends_on arch: [:x86_64, :arm64]
end
