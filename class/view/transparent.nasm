%include 'inc/func.inc'
%include 'class/class_view.inc'

	fn_function class/view/transparent
		;inputs
		;r0 = view object
		;trashes
		;r0-r3, r5-r15

		;paste dirty patch
		vp_xor r8, r8
		vp_xor r9, r9
		vp_cpy [r0 + view_w], r10
		vp_cpy [r0 + view_h], r11
		static_jmp view, add_transparent

	fn_function_end
