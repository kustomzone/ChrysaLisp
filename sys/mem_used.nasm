%include 'inc/func.inc'
%include 'inc/heap.inc'

	fn_function sys/mem_used
		;outputs
		;r0 = amount in bytes

		static_bind sys_mem, statics, r0
		vp_cpy [r0], r0
		vp_ret

	fn_function_end