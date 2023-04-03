cask "terraform-1.1.2" do
  version "1.1.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.2/terraform_1.1.2_darwin_amd64.zip"
    sha256 "78faa76db5dc0ecfe4bf7c6368dbf5cca019a806f9d203580a24a4e0f8cd8353"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.2/terraform_1.1.2_darwin_arm64.zip"
    sha256 "cc3bd03b72db6247c9105edfeb9c8f674cf603e08259075143ffad66f5c25a07"
  end

  depends_on arch: [:x86_64, :arm64]
end
