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
  
  # This function should be called from the application entry point function to
  # execute a secondary process. It can be used to run secondary processes from
  # the browser client executable (default behavior) or from a separate
  # executable specified by the CefSettings.browser_subprocess_path value. If
  # called for the browser process (identified by no "type" command-line value)
  # it will return immediately with a value of -1. If called for a recognized
  # secondary process it will block until the process should exit and then return
  # the process exit code. The |application| parameter may be NULL.
  class CefAppT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  # 
  # @method execute_process(args, application)
  # @param [FFI::Pointer(*CefMainArgsT)] args 
  # @param [CefAppT] application 
  # @return [Integer] 
  # @scope class
  attach_function :execute_process, :cef_execute_process, [:pointer, CefAppT], :int
  
  # This function should be called on the main application thread to initialize
  # the CEF browser process. The |application| parameter may be NULL. A return
  # value of true (1) indicates that it succeeded and false (0) indicates that it
  # failed.
  class CefAppT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  # 
  # @method initialize(args, settings, application)
  # @param [FFI::Pointer(*CefMainArgsT)] args 
  # @param [FFI::Pointer(*CefSettingsT)] settings 
  # @param [CefAppT] application 
  # @return [Integer] 
  # @scope class
  attach_function :initialize, :cef_initialize, [:pointer, :pointer, CefAppT], :int
  
  # This function should be called on the main application thread to shut down
  # the CEF browser process before the application exits.
  # 
  # @method shutdown()
  # @return [nil] 
  # @scope class
  attach_function :shutdown, :cef_shutdown, [], :void
  
  # Perform a single iteration of CEF message loop processing. This function is
  # used to integrate the CEF message loop into an existing application message
  # loop. Care must be taken to balance performance against excessive CPU usage.
  # This function should only be called on the main application thread and only
  # if cef_initialize() is called with a CefSettings.multi_threaded_message_loop
  # value of false (0). This function will not block.
  # 
  # @method do_message_loop_work()
  # @return [nil] 
  # @scope class
  attach_function :do_message_loop_work, :cef_do_message_loop_work, [], :void
  
  # Run the CEF message loop. Use this function instead of an application-
  # provided message loop to get the best balance between performance and CPU
  # usage. This function should only be called on the main application thread and
  # only if cef_initialize() is called with a
  # CefSettings.multi_threaded_message_loop value of false (0). This function
  # will block until a quit message is received by the system.
  # 
  # @method run_message_loop()
  # @return [nil] 
  # @scope class
  attach_function :run_message_loop, :cef_run_message_loop, [], :void
  
  # Quit the CEF message loop that was started by calling cef_run_message_loop().
  # This function should only be called on the main application thread and only
  # if cef_run_message_loop() was used.
  # 
  # @method quit_message_loop()
  # @return [nil] 
  # @scope class
  attach_function :quit_message_loop, :cef_quit_message_loop, [], :void
  
  # (Not documented)
  class CefCommandLineT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefSchemeRegistrarT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefResourceBundleHandlerT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefBrowserProcessHandlerT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefRenderProcessHandlerT < FFI::Struct
    layout :dummy, :char
  end
  
  # Implement this structure to provide handler implementations. Methods will be
  # called by the process and/or thread indicated.
  # 
  # = Fields:
  # :base ::
  #   (unknown) Base structure.
  # :on_before_command_line_processing ::
  #   (FFI::Pointer(*)) Provides an opportunity to view and/or modify command-line arguments before
  #   processing by CEF and Chromium. The |process_type| value will be NULL for
  #   the browser process. Do not keep a reference to the cef_command_line_t
  #   object passed to this function. The CefSettings.command_line_args_disabled
  #   value can be used to start with an NULL command-line object. Any values
  #   specified in CefSettings that equate to command-line arguments will be set
  #   before this function is called. Be cautious when using this function to
  #   modify command-line arguments for non-browser processes as this may result
  #   in undefined behavior including crashes.
  # :on_register_custom_schemes ::
  #   (FFI::Pointer(*)) Provides an opportunity to register custom schemes. Do not keep a reference
  #   to the |registrar| object. This function is called on the main thread for
  #   each process and the registered schemes should be the same across all
  #   processes.
  # :get_resource_bundle_handler ::
  #   (FFI::Pointer(*)) Return the handler for resource bundle events. If
  #   CefSettings.pack_loading_disabled is true (1) a handler must be returned.
  #   If no handler is returned resources will be loaded from pack files. This
  #   function is called by the browser and render processes on multiple threads.
  # :get_browser_process_handler ::
  #   (FFI::Pointer(*)) Return the handler for functionality specific to the browser process. This
  #   function is called on multiple threads in the browser process.
  # :get_render_process_handler ::
  #   (FFI::Pointer(*)) Return the handler for functionality specific to the render process. This
  #   function is called on the render process main thread.
  class CefAppT < FFI::Struct
    layout :base, :char,
           :on_before_command_line_processing, :pointer,
           :on_register_custom_schemes, :pointer,
           :get_resource_bundle_handler, :pointer,
           :get_browser_process_handler, :pointer,
           :get_render_process_handler, :pointer
  end
  
end
