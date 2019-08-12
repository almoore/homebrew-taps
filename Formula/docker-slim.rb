class DockerSlim < Formula
  desc "DockerSlim (docker-slim): Don't change anything in your Docker container image and minify it by up to 30x (and for compiled languages even more) making it secure too! (free and open source)"
  homepage "https://dockersl.im"
  url "https://github.com/docker-slim/docker-slim/releases/download/1.25.2/dist_mac.zip"
  sha256 "9787d042d6e77f780cd6ab60088428f3468a87ac58f783921c6bf78ab6139554"
  version "1.25.2"

  def install
    bin.install "docker-slim", "docker-slim-sensor"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/docker-slim -h 2>&1")
    assert_match "USAGE:", shell_output("#{bin}/docker-slim-sensor -h 2>&1")
  end
end
