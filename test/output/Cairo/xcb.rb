# Generated by ffi-gen. Please do not change this file by hand.

require 'ffi'

module Cairo
  extend FFI::Library
  ffi_lib 'cairo'
  
  def self.attach_function(name, *_)
    begin; super; rescue FFI::NotFoundError => e
      (class << self; self; end).class_eval { define_method(name) { |*_| raise e } }
    end
  end
  
  # (Not documented)
  # 
  # @method xcb_surface_create(connection, drawable, visual, width, height)
  # @param [FFI::Pointer(*XcbConnectionT)] connection 
  # @param [Integer] drawable 
  # @param [FFI::Pointer(*XcbVisualtypeT)] visual 
  # @param [Integer] width 
  # @param [Integer] height 
  # @return [FFI::Pointer(*SurfaceT)] 
  # @scope class
  attach_function :xcb_surface_create, :cairo_xcb_surface_create, [:pointer, :uint, :pointer, :int, :int], :pointer
  
  # (Not documented)
  # 
  # @method xcb_surface_create_for_bitmap(connection, screen, bitmap, width, height)
  # @param [FFI::Pointer(*XcbConnectionT)] connection 
  # @param [FFI::Pointer(*XcbScreenT)] screen 
  # @param [Integer] bitmap 
  # @param [Integer] width 
  # @param [Integer] height 
  # @return [FFI::Pointer(*SurfaceT)] 
  # @scope class
  attach_function :xcb_surface_create_for_bitmap, :cairo_xcb_surface_create_for_bitmap, [:pointer, :pointer, :uint, :int, :int], :pointer
  
  # (Not documented)
  # 
  # @method xcb_surface_create_with_xrender_format(connection, screen, drawable, format, width, height)
  # @param [FFI::Pointer(*XcbConnectionT)] connection 
  # @param [FFI::Pointer(*XcbScreenT)] screen 
  # @param [Integer] drawable 
  # @param [FFI::Pointer(*XcbRenderPictforminfoT)] format 
  # @param [Integer] width 
  # @param [Integer] height 
  # @return [FFI::Pointer(*SurfaceT)] 
  # @scope class
  attach_function :xcb_surface_create_with_xrender_format, :cairo_xcb_surface_create_with_xrender_format, [:pointer, :pointer, :uint, :pointer, :int, :int], :pointer
  
  # (Not documented)
  # 
  # @method xcb_surface_set_size(surface, width, height)
  # @param [FFI::Pointer(*SurfaceT)] surface 
  # @param [Integer] width 
  # @param [Integer] height 
  # @return [nil] 
  # @scope class
  attach_function :xcb_surface_set_size, :cairo_xcb_surface_set_size, [:pointer, :int, :int], :void
  
  # debug interface
  # 
  # @method xcb_device_debug_cap_xshm_version(device, major_version, minor_version)
  # @param [FFI::Pointer(*DeviceT)] device 
  # @param [Integer] major_version 
  # @param [Integer] minor_version 
  # @return [nil] 
  # @scope class
  attach_function :xcb_device_debug_cap_xshm_version, :cairo_xcb_device_debug_cap_xshm_version, [:pointer, :int, :int], :void
  
  # (Not documented)
  # 
  # @method xcb_device_debug_cap_xrender_version(device, major_version, minor_version)
  # @param [FFI::Pointer(*DeviceT)] device 
  # @param [Integer] major_version 
  # @param [Integer] minor_version 
  # @return [nil] 
  # @scope class
  attach_function :xcb_device_debug_cap_xrender_version, :cairo_xcb_device_debug_cap_xrender_version, [:pointer, :int, :int], :void
  
end