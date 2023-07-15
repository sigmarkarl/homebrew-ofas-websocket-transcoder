class OfasWebsocketTranscoder < Formula
    desc "TCP socket to WebSocket transcoder for NetApp Ofas Spark Applications"
    homepage "https://github.com/sigmarkarl/homebrew-ofas-websocket-transcoder"
    url "https://github.com/sigmarkarl/homebrew-ofas-websocket-transcoder/releases/download/1.0.0/ofas-websocket-transcoder"
    sha256 "3274b59a73072b8209d475de0c5fda83da7bf32d8ae091f970a51f736f5e2d7b"
    license "MIT License"
  
    # depends_on "cmake" => :build
  
    def install
      # bin.executable "ofas-websocket-transcoder"
      #bin.install_symlink "ofas-websocket-transcoder"
      bin.install "#{buildpath}/ofas-websocket-transcoder"
      system "chmod", "+x", "#{bin}/ofas-websocket-transcoder"
      # ln -s bin/ocean-websocket-transcoder /opt/homebrew/bin/ocean-websocket-transcoder
      # system "ln", "-s", "#{bin}/ofas-websocket-transcoder", "/opt/homebrew/bin/ofas-websocket-transcoder"
      # ENV.deparallelize
      # system "./configure", *std_configure_args, "--disable-silent-rules"
      # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
      # system "make", "install"
    end
  
    test do
      system "false"
    end
  end
