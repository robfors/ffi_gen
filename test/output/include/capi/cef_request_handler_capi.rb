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
  
  # Callback structure used for asynchronous continuation of authentication
  # requests.
  # 
  # = Fields:
  # :base ::
  #   (unknown) Base structure.
  # :cont ::
  #   (FFI::Pointer(*)) Continue the authentication request.
  # :cancel ::
  #   (FFI::Pointer(*)) Cancel the authentication request.
  class CefAuthCallbackT < FFI::Struct
    layout :base, :char,
           :cont, :pointer,
           :cancel, :pointer
  end
  
  # (Not documented)
  class CefBrowserT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefFrameT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefRequestT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefResourceHandlerT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefBrowserT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefFrameT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefRequestT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefBrowserT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefFrameT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefBrowserT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefFrameT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefCookieManagerT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefBrowserT < FFI::Struct
    layout :dummy, :char
  end
  
  # Implement this structure to handle events related to browser requests. The
  # functions of this structure will be called on the thread indicated.
  # 
  # = Fields:
  # :base ::
  #   (unknown) Base structure.
  # :on_before_resource_load ::
  #   (FFI::Pointer(*)) Called on the IO thread before a resource request is loaded. The |request|
  #   object may be modified. To cancel the request return true (1) otherwise
  #   return false (0).
  # :get_resource_handler ::
  #   (FFI::Pointer(*)) Called on the IO thread before a resource is loaded. To allow the resource
  #   to load normally return NULL. To specify a handler for the resource return
  #   a cef_resource_handler_t object. The |request| object should not be
  #   modified in this callback.
  # :on_resource_redirect ::
  #   (FFI::Pointer(*)) Called on the IO thread when a resource load is redirected. The |old_url|
  #   parameter will contain the old URL. The |new_url| parameter will contain
  #   the new URL and can be changed if desired.
  # :get_auth_credentials ::
  #   (FFI::Pointer(*)) Called on the IO thread when the browser needs credentials from the user.
  #   |isProxy| indicates whether the host is a proxy server. |host| contains the
  #   hostname and |port| contains the port number. Return true (1) to continue
  #   the request and call cef_auth_callback_t::Complete() when the
  #   authentication information is available. Return false (0) to cancel the
  #   request.
  # :get_cookie_manager ::
  #   (FFI::Pointer(*)) Called on the IO thread to retrieve the cookie manager. |main_url| is the
  #   URL of the top-level frame. Cookies managers can be unique per browser or
  #   shared across multiple browsers. The global cookie manager will be used if
  #   this function returns NULL.
  class CefRequestHandlerT < FFI::Struct
    layout :base, :char,
           :on_before_resource_load, :pointer,
           :get_resource_handler, :pointer,
           :on_resource_redirect, :pointer,
           :get_auth_credentials, :pointer,
           :get_cookie_manager, :pointer
  end
  
end
