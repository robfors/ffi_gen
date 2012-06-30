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
  
  # (Not documented)
  class CefCookieVisitorT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefCookieVisitorT < FFI::Struct
    layout :dummy, :char
  end
  
  # Structure used for managing cookies. The functions of this structure may be
  # called on any thread unless otherwise indicated.
  # 
  # = Fields:
  # :base ::
  #   (unknown) Base structure.
  # :set_supported_schemes ::
  #   (FFI::Pointer(*)) Set the schemes supported by this manager. By default only "http" and
  #   "https" schemes are supported. Must be called before any cookies are
  #   accessed.
  # :visit_all_cookies ::
  #   (FFI::Pointer(*)) Visit all cookies. The returned cookies are ordered by longest path, then
  #   by earliest creation date. Returns false (0) if cookies cannot be accessed.
  # :visit_url_cookies ::
  #   (FFI::Pointer(*)) Visit a subset of cookies. The results are filtered by the given url
  #   scheme, host, domain and path. If |includeHttpOnly| is true (1) HTTP-only
  #   cookies will also be included in the results. The returned cookies are
  #   ordered by longest path, then by earliest creation date. Returns false (0)
  #   if cookies cannot be accessed.
  # :set_cookie ::
  #   (FFI::Pointer(*)) Sets a cookie given a valid URL and explicit user-provided cookie
  #   attributes. This function expects each attribute to be well-formed. It will
  #   check for disallowed characters (e.g. the ';' character is disallowed
  #   within the cookie value attribute) and will return false (0) without
  #   setting the cookie if such characters are found. This function must be
  #   called on the IO thread.
  # :delete_cookies ::
  #   (FFI::Pointer(*)) Delete all cookies that match the specified parameters. If both |url| and
  #   values |cookie_name| are specified all host and domain cookies matching
  #   both will be deleted. If only |url| is specified all host cookies (but not
  #   domain cookies) irrespective of path will be deleted. If |url| is NULL all
  #   cookies for all hosts and domains will be deleted. Returns false (0) if a
  #   non- NULL invalid URL is specified or if cookies cannot be accessed. This
  #   function must be called on the IO thread.
  # :set_storage_path ::
  #   (FFI::Pointer(*)) Sets the directory path that will be used for storing cookie data. If
  #   |path| is NULL data will be stored in memory only. Returns false (0) if
  #   cookies cannot be accessed.
  class CefCookieManagerT < FFI::Struct
    layout :base, :char,
           :set_supported_schemes, :pointer,
           :visit_all_cookies, :pointer,
           :visit_url_cookies, :pointer,
           :set_cookie, :pointer,
           :delete_cookies, :pointer,
           :set_storage_path, :pointer
  end
  
  # Returns the global cookie manager. By default data will be stored at
  # CefSettings.cache_path if specified or in memory otherwise.
  # 
  # @method cookie_manager_get_global_manager()
  # @return [CefCookieManagerT] 
  # @scope class
  attach_function :cookie_manager_get_global_manager, :cef_cookie_manager_get_global_manager, [], CefCookieManagerT
  
  # Creates a new cookie manager. If |path| is NULL data will be stored in memory
  # only. Returns NULL if creation fails.
  # 
  # @method cookie_manager_create_manager(path)
  # @param [FFI::Pointer(*StringT)] path 
  # @return [CefCookieManagerT] 
  # @scope class
  attach_function :cookie_manager_create_manager, :cef_cookie_manager_create_manager, [:pointer], CefCookieManagerT
  
  # Structure to implement for visiting cookie values. The functions of this
  # structure will always be called on the IO thread.
  # 
  # = Fields:
  # :base ::
  #   (unknown) Base structure.
  # :visit ::
  #   (FFI::Pointer(*)) Method that will be called once for each cookie. |count| is the 0-based
  #   index for the current cookie. |total| is the total number of cookies. Set
  #   |deleteCookie| to true (1) to delete the cookie currently being visited.
  #   Return false (0) to stop visiting cookies. This function may never be
  #   called if no cookies are found.
  class CefCookieVisitorT < FFI::Struct
    layout :base, :char,
           :visit, :pointer
  end
  
end
