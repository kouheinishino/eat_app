class S3Uploader
  class << self
    # @return S3にuploadが完了したら画像のurlを返す
    def upload(file)
      # uploadする処理をここに書く
      '/user_images/test.jpeg'
    rescue => e
      puts e.message
      false
    end
  end
end
