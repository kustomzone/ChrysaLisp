%include 'inc/func.inc'
%include 'class/class_view.inc'

	fn_function class/view/add
		;inputs
		;r0 = view object
		;r1 = parent view object
		;trashes
		;r1-r3

		;remove from any existing parent
		vp_cpy r1, r3
		static_call view, sub

		;add to parent
		vp_cpy r3, [r0 + view_parent]
		vp_lea [r3 + view_list], r3
		vp_lea [r0 + view_node], r2
		lh_add_at_tail r3, r2, r1
		vp_ret

	fn_function_end
