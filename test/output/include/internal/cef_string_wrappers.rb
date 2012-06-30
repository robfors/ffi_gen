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
  
  # Traits implementation for wide character strings.
  # 
  # = Fields:
  # :char_type ::
  #   (Integer) 
  # :struct_type ::
  #   (unknown) 
  # :userfree_struct_type ::
  #   (FFI::Pointer(StringUserfreeWideT)) 
  # :clear ::
  #   (unknown) 
  class CefStringTraitsWide < FFI::Struct
    layout :char_type, :int,
           :struct_type, :char,
           :userfree_struct_type, :pointer,
           :clear, :char
  end
  
  # Traits implementation for utf8 character strings.
  # 
  # = Fields:
  # :char_type ::
  #   (Integer) 
  # :struct_type ::
  #   (unknown) 
  # :userfree_struct_type ::
  #   (FFI::Pointer(StringUserfreeUtf8T)) 
  # :clear ::
  #   (unknown) 
  class CefStringTraitsUTF8 < FFI::Struct
    layout :char_type, :char,
           :struct_type, :char,
           :userfree_struct_type, :pointer,
           :clear, :char
  end
  
  # Traits implementation for utf16 character strings.
  # 
  # = Fields:
  # :char_type ::
  #   (Integer) 
  # :struct_type ::
  #   (unknown) 
  # :userfree_struct_type ::
  #   (FFI::Pointer(StringUserfreeUtf16T)) 
  # :clear ::
  #   (unknown) 
  class CefStringTraitsUTF16 < FFI::Struct
    layout :char_type, :ushort,
           :struct_type, :char,
           :userfree_struct_type, :pointer,
           :clear, :char
  end
  
end
