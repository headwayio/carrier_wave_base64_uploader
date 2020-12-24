# frozen_string_literal: true

require 'carrier_wave_base64_uploader/version'
require 'carrier_wave_base64_uploader/base64_string_io'

module CarrierWaveBase64Uploader
  # Override file managing to manually decode the base64 string
  def cache!(file = sanitized_file)
    if file.is_a?(String) && file.start_with?('data:image')
      filename = "#{SecureRandom.uuid}.photo"
      filedata = file

      local_file = CarrierWaveBase64Uploader::Base64StringIO
                   .new(filedata, proc { filename })

      super(local_file)
    else
      super(file)
    end
  end
end
