cask "terraform-1.4.3" do
  version "1.4.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.4.3/terraform_1.4.3_darwin_amd64.zip"
    sha256 "89bdb242bfacf24167f365ef7a3bf0ad0e443ddd27ebde425fb71d77ce1a2597"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.4.3/terraform_1.4.3_darwin_arm64.zip"
    sha256 "20b9d484bf99ada6c0de89316176ba33f7c87f64c0738991188465147bba221b"
  end

  depends_on arch: [:x86_64, :arm64]
end
