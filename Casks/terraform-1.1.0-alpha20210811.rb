cask "terraform-1.1.0-alpha20210811" do
  version "1.1.0-alpha20210811"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210811/terraform_1.1.0-alpha20210811_darwin_amd64.zip"
    sha256 "bd9afe8033bda2b04e18d97d5bd0f77a9cd80747e9ff8aff4ab83263fd81d76c"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210811/terraform_1.1.0-alpha20210811_darwin_arm64.zip"
    sha256 "22628eca35df6019891929f49466f2512bc0032c10014076c2b2e5637be6f8e4"
  end

  depends_on arch: [:x86_64, :arm64]
end
