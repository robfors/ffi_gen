# Generated by ffi-gen. Please do not change this file by hand.

require 'ffi'

module CEF
  extend FFI::Library
  ffi_lib 'cef'
  
  def self.attach_function(name, *_)
    begin; super; rescue FFI::NotFoundError => e
      (class << self; self; end).class_eval { define_method(name) { |*_| raise e } }
    end
  end
  
  # Callback structure used for asynchronous continuation of geolocation
  # permission requests.
  # 
  # = Fields:
  # :base ::
  #   (unknown) Base structure.
  # :cont ::
  #   (FFI::Pointer(*)) Call to allow or deny geolocation access.
  class CefGeolocationCallbackT < FFI::Struct
    layout :base, :char,
           :cont, :pointer
  end
  
  # (Not documented)
  class CefBrowserT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefBrowserT < FFI::Struct
    layout :dummy, :char
  end
  
  # Implement this structure to handle events related to geolocation permission
  # requests. The functions of this structure will be called on the browser
  # process IO thread.
  # 
  # = Fields:
  # :base ::
  #   (unknown) Base structure.
  # :on_request_geolocation_permission ::
  #   (FFI::Pointer(*)) Called when a page requests permission to access geolocation information.
  #   |requesting_url| is the URL requesting permission and |request_id| is the
  #   unique ID for the permission request. Call
  #   cef_geolocation_callback_t::Continue to allow or deny the permission
  #   request.
  # :on_cancel_geolocation_permission ::
  #   (FFI::Pointer(*)) Called when a geolocation access request is canceled. |requesting_url| is
  #   the URL that originally requested permission and |request_id| is the unique
  #   ID for the permission request.
  class CefGeolocationHandlerT < FFI::Struct
    layout :base, :char,
           :on_request_geolocation_permission, :pointer,
           :on_cancel_geolocation_permission, :pointer
  end
  
end
