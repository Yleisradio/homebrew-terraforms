cask "terraform-0.8.4" do
  version "0.8.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.8.4/terraform_0.8.4_darwin_amd64.zip"
    sha256 "79e94dfaf439fdbba2a2fe03dd7c90b24efa699b6661155aa9329df43e68ba51"
  end

  depends_on arch: [:x86_64]
end
