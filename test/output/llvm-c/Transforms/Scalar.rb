# Generated by ffi-gen. Please do not change this file by hand.

require 'ffi'

module LLVM
  extend FFI::Library
  ffi_lib 'LLVM-3.0'
  
  def self.attach_function(name, *_)
    begin; super; rescue FFI::NotFoundError => e
      (class << self; self; end).class_eval { define_method(name) { |*_| raise e } }
    end
  end
  
  # See llvm::createAggressiveDCEPass function.
  # 
  # @method add_aggressive_dce_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_aggressive_dce_pass, :LLVMAddAggressiveDCEPass, [:pointer], :void
  
  # See llvm::createCFGSimplificationPass function.
  # 
  # @method add_cfg_simplification_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_cfg_simplification_pass, :LLVMAddCFGSimplificationPass, [:pointer], :void
  
  # See llvm::createDeadStoreEliminationPass function.
  # 
  # @method add_dead_store_elimination_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_dead_store_elimination_pass, :LLVMAddDeadStoreEliminationPass, [:pointer], :void
  
  # See llvm::createGVNPass function.
  # 
  # @method add_gvn_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_gvn_pass, :LLVMAddGVNPass, [:pointer], :void
  
  # See llvm::createIndVarSimplifyPass function.
  # 
  # @method add_ind_var_simplify_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_ind_var_simplify_pass, :LLVMAddIndVarSimplifyPass, [:pointer], :void
  
  # See llvm::createInstructionCombiningPass function.
  # 
  # @method add_instruction_combining_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_instruction_combining_pass, :LLVMAddInstructionCombiningPass, [:pointer], :void
  
  # See llvm::createJumpThreadingPass function.
  # 
  # @method add_jump_threading_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_jump_threading_pass, :LLVMAddJumpThreadingPass, [:pointer], :void
  
  # See llvm::createLICMPass function.
  # 
  # @method add_licm_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_licm_pass, :LLVMAddLICMPass, [:pointer], :void
  
  # See llvm::createLoopDeletionPass function.
  # 
  # @method add_loop_deletion_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_loop_deletion_pass, :LLVMAddLoopDeletionPass, [:pointer], :void
  
  # See llvm::createLoopIdiomPass function
  # 
  # @method add_loop_idiom_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_loop_idiom_pass, :LLVMAddLoopIdiomPass, [:pointer], :void
  
  # See llvm::createLoopRotatePass function.
  # 
  # @method add_loop_rotate_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_loop_rotate_pass, :LLVMAddLoopRotatePass, [:pointer], :void
  
  # See llvm::createLoopUnrollPass function.
  # 
  # @method add_loop_unroll_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_loop_unroll_pass, :LLVMAddLoopUnrollPass, [:pointer], :void
  
  # See llvm::createLoopUnswitchPass function.
  # 
  # @method add_loop_unswitch_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_loop_unswitch_pass, :LLVMAddLoopUnswitchPass, [:pointer], :void
  
  # See llvm::createMemCpyOptPass function.
  # 
  # @method add_mem_cpy_opt_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_mem_cpy_opt_pass, :LLVMAddMemCpyOptPass, [:pointer], :void
  
  # See llvm::createPromoteMemoryToRegisterPass function.
  # 
  # @method add_promote_memory_to_register_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_promote_memory_to_register_pass, :LLVMAddPromoteMemoryToRegisterPass, [:pointer], :void
  
  # See llvm::createReassociatePass function.
  # 
  # @method add_reassociate_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_reassociate_pass, :LLVMAddReassociatePass, [:pointer], :void
  
  # See llvm::createSCCPPass function.
  # 
  # @method add_sccp_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_sccp_pass, :LLVMAddSCCPPass, [:pointer], :void
  
  # See llvm::createScalarReplAggregatesPass function.
  # 
  # @method add_scalar_repl_aggregates_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_scalar_repl_aggregates_pass, :LLVMAddScalarReplAggregatesPass, [:pointer], :void
  
  # See llvm::createScalarReplAggregatesPass function.
  # 
  # @method add_scalar_repl_aggregates_pass_ssa(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_scalar_repl_aggregates_pass_ssa, :LLVMAddScalarReplAggregatesPassSSA, [:pointer], :void
  
  # See llvm::createScalarReplAggregatesPass function.
  # 
  # @method add_scalar_repl_aggregates_pass_with_threshold(pm, threshold)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @param [Integer] threshold 
  # @return [nil] 
  # @scope class
  attach_function :add_scalar_repl_aggregates_pass_with_threshold, :LLVMAddScalarReplAggregatesPassWithThreshold, [:pointer, :int], :void
  
  # See llvm::createSimplifyLibCallsPass function.
  # 
  # @method add_simplify_lib_calls_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_simplify_lib_calls_pass, :LLVMAddSimplifyLibCallsPass, [:pointer], :void
  
  # See llvm::createTailCallEliminationPass function.
  # 
  # @method add_tail_call_elimination_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_tail_call_elimination_pass, :LLVMAddTailCallEliminationPass, [:pointer], :void
  
  # See llvm::createConstantPropagationPass function.
  # 
  # @method add_constant_propagation_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_constant_propagation_pass, :LLVMAddConstantPropagationPass, [:pointer], :void
  
  # See llvm::demotePromoteMemoryToRegisterPass function.
  # 
  # @method add_demote_memory_to_register_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_demote_memory_to_register_pass, :LLVMAddDemoteMemoryToRegisterPass, [:pointer], :void
  
  # See llvm::createVerifierPass function.
  # 
  # @method add_verifier_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_verifier_pass, :LLVMAddVerifierPass, [:pointer], :void
  
  # See llvm::createCorrelatedValuePropagationPass function
  # 
  # @method add_correlated_value_propagation_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_correlated_value_propagation_pass, :LLVMAddCorrelatedValuePropagationPass, [:pointer], :void
  
  # See llvm::createEarlyCSEPass function
  # 
  # @method add_early_cse_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_early_cse_pass, :LLVMAddEarlyCSEPass, [:pointer], :void
  
  # See llvm::createLowerExpectIntrinsicPass function
  # 
  # @method add_lower_expect_intrinsic_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_lower_expect_intrinsic_pass, :LLVMAddLowerExpectIntrinsicPass, [:pointer], :void
  
  # See llvm::createTypeBasedAliasAnalysisPass function
  # 
  # @method add_type_based_alias_analysis_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_type_based_alias_analysis_pass, :LLVMAddTypeBasedAliasAnalysisPass, [:pointer], :void
  
  # See llvm::createBasicAliasAnalysisPass function
  # 
  # @method add_basic_alias_analysis_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm 
  # @return [nil] 
  # @scope class
  attach_function :add_basic_alias_analysis_pass, :LLVMAddBasicAliasAnalysisPass, [:pointer], :void
  
end
