;
;
; Mojo volterra mini 50
;
;

_inspect_compute:
	.cfi_startproc
	sub	sp, sp, #96
	stp	d15, d14, [sp, #16]
	stp	d13, d12, [sp, #32]
	stp	d11, d10, [sp, #48]
	stp	d9, d8, [sp, #64]
	stp	x20, x19, [sp, #80]
	.cfi_def_cfa_offset 96
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset b8, -24
	.cfi_offset b9, -32
	.cfi_offset b10, -40
	.cfi_offset b11, -48
	.cfi_offset b12, -56
	.cfi_offset b13, -64
	.cfi_offset b14, -72
	.cfi_offset b15, -80
	add	x8, x0, #16, lsl #12
	add	x9, x0, #152
	mov	w10, #32920
	add	x10, x0, x10
	mov	w15, #16959
	movk	w15, #15, lsl #16
	add	x11, sp, #8
	fmov	d0, #1.00000000
	mov	x12, #47479
	movk	x12, #24011, lsl #16
	movk	x12, #29422, lsl #32
	movk	x12, #16439, lsl #48
	fmov	d1, x12
	mov	x12, #277076930199552
	movk	x12, #16543, lsl #48
	fmov	d4, x12
	fmov	d5, #-1.00000000
	mov	x12, #6148914691236517205
	movk	x12, #49109, lsl #48

LBB0_1:

	mov	x14, #0
	mov	x13, x15
	str	x1, [sp, #8]
	; InlineAsm Start
	; InlineAsm End
	str	x2, [sp, #8]
	; InlineAsm Start
	; InlineAsm End
	ldr	x15, [x2]
	ldr	s6, [x0, #24]
	fcvt	d6, s6
	ldr	d7, [x0, #16]
	fmul	d6, d7, d6
	fadd	d7, d6, d0
	fdiv	d7, d0, d7
	ldr	s16, [x0, #48]
	fcvt	d18, s16
	fmaxnm	d12, d18, d1
	fdiv	d16, d0, d12
	ldr	d19, [x0, #56]
	fmul	d17, d19, d12
	ldr	s20, [x0, #96]
	fcvt	d20, s20
	fadd	d18, d18, d20
	fmaxnm	d20, d18, d1
	fdiv	d18, d0, d20
	ldp	d22, d21, [x0, #128]
	fdiv	d23, d21, d20
	fminnm	d23, d23, d4
	movi.2d	v2, #0000000000000000
	fmaxnm	d25, d23, d2
	fcvtzs	w16, d25
	fmul	d23, d19, d20
	scvtf	d19, w16
	fsub	d24, d25, d19
	ldr	d27, [x0, #40]
	fdiv	d29, d27, d20
	mvn	w17, w16
	fdiv	d20, d21, d12
	fminnm	d20, d20, d4
	fmaxnm	d20, d20, d2
	fcvtzs	w4, d20
	scvtf	d21, w4
	fsub	d26, d0, d20
	fadd	d30, d26, d21
	fsub	d31, d20, d21
	mvn	w5, w4
	fsub	d20, d0, d25
	fadd	d8, d20, d19

; Promoted state outside the hot loop, within the registers

	ldr	d28, [x0, #72]
	ldr	d11, [x0, #88]
	ldr	d26, [x0, #112]
	ldr	w6, [x0, #144]
	ldr	d21, [x8, #160]
	ldr	d20, [x8, #176]
	ldr	d25, [x8, #192]
	ldr	d19, [x8, #208]
	ldr	s13, [x0, #32]
	movi.2s	v2, #1
	stur	d2, [x0, #28]
	ldr	d10, [x8, #224]
	ldr	d9, [x8, #240]
	ldr	w3, [x0, #144]
	sshll.2d	v13, v13, #0
	scvtf	d13, d13
	fdiv	d12, d27, d12

; Hot loop start
LBB0_2:
	mov.16b	v14, v11
	mov.16b	v15, v22
	fadd	d22, d17, d28
	frintm	d22, d22
	fsub	d22, d28, d22
	fadd	d28, d17, d22
	fadd	d22, d28, d28
	fadd	d22, d22, d5
	fmul	d11, d22, d22
	fadd	d22, d23, d26
	frintm	d22, d22
	fsub	d22, d26, d22
	fsub	d14, d11, d14
	fadd	d26, d23, d22
	fadd	d22, d26, d26
	fadd	d22, d22, d5
	fmul	d22, d22, d22
	and	w7, w6, #0xfff
	fsub	d15, d22, d15
	fmul	d3, d14, d13
	fmul	d3, d12, d3
	add	w19, w6, w5
	and	w19, w19, #0xfff
	str	d3, [x10, w7, uxtw #3]
	ldr	d3, [x10, w19, uxtw #3]
	sub	w19, w6, w4
	and	w19, w19, #0xfff
	ldr	d2, [x10, w19, uxtw #3]
	fmul	d3, d31, d3
	fmadd	d2, d30, d2, d3
	fmul	d3, d15, d13
	fmul	d3, d29, d3
	str	d3, [x9, w7, uxtw #3]
	fmul	d3, d18, d15
	add	w7, w6, w17
	and	w7, w7, #0xfff
	sub	w6, w6, w16
	and	w6, w6, #0xfff
	fmadd	d3, d16, d14, d3
	ldr	d14, [x9, w6, uxtw #3]
	fmadd	d2, d8, d14, d2
	ldr	d14, [x9, w7, uxtw #3]
	fmul	d3, d3, d13
	fmadd	d2, d24, d14, d2
	fnmsub	d2, d27, d3, d2
	fmadd	d3, d6, d2, d21
	fmul	d21, d7, d3
	fmadd	d3, d6, d21, d20
	fmul	d20, d7, d3
	fmul	d3, d21, d21
	fmul	d3, d21, d3
	fmul	d13, d2, d2
	fnmsub	d2, d2, d13, d3
	fmadd	d2, d6, d2, d19
	fmadd	d25, d6, d20, d25
	fmul	d19, d7, d2
	fmul	d2, d20, d20
	fmul	d2, d20, d2
	fadd	d3, d3, d19
	fsub	d3, d3, d2
	fmul	d25, d7, d25
	fmadd	d3, d6, d3, d10
	fmul	d10, d7, d3
	fadd	d2, d2, d10
	fmul	d3, d25, d25
	fmsub	d2, d25, d3, d2
	fmadd	d2, d6, d2, d9
	fmul	d9, d7, d2
	fmov	d2, x12
	fmadd	d2, d9, d2, d25
	fcvt	s2, d2
	str	s2, [x15, x14]
	add	w3, w3, #1
	add	x14, x14, #4
	fmov	d13, #1.00000000
	mov	x6, x3
	cmp	x14, #256
	b.ne	LBB0_2
; Hot loop end

; Final store at once outside loop
	stp	d10, d10, [x8, #216]
	stp	d9, d9, [x8, #232]
	stp	d28, d28, [x0, #64]
	stp	d11, d11, [x0, #80]
	stp	d26, d26, [x0, #104]
	stp	d22, d22, [x0, #120]
	str	w3, [x0, #144]
	stp	d21, d21, [x8, #152]
	stp	d20, d20, [x8, #168]
	stp	d25, d25, [x8, #184]
	stp	d19, d19, [x8, #200]

	;MEMBARRIER
	sub	w15, w13, #1
	cbnz	w13, LBB0_1
	ldp	x20, x19, [sp, #80]
	ldp	d9, d8, [sp, #64]
	ldp	d11, d10, [sp, #48]
	ldp	d13, d12, [sp, #32]
	ldp	d15, d14, [sp, #16]
	add	sp, sp, #96
	ret
	.cfi_endproc

;
;
; Mojo volterra mini 99
;
;

_inspect_compute:
	.cfi_startproc
	sub	sp, sp, #64
	stp	d13, d12, [sp, #16]
	stp	d11, d10, [sp, #32]
	stp	d9, d8, [sp, #48]
	.cfi_def_cfa_offset 64
	.cfi_offset b8, -8
	.cfi_offset b9, -16
	.cfi_offset b10, -24
	.cfi_offset b11, -32
	.cfi_offset b12, -40
	.cfi_offset b13, -48
	add	x8, x0, #16, lsl #12
	add	x9, x0, #152
	mov	w10, #32920
	add	x10, x0, x10
	mov	w16, #16959
	movk	w16, #15, lsl #16
	add	x11, sp, #8
	fmov	d0, #1.00000000
	mov	x12, #47479
	movk	x12, #24011, lsl #16
	movk	x12, #29422, lsl #32
	movk	x12, #16439, lsl #48
	fmov	d1, x12
	mov	x12, #277076930199552
	movk	x12, #16543, lsl #48
	fmov	d2, x12
	movi.2d	v3, #0000000000000000
	mov	w12, #1
	fmov	d4, #-1.00000000
	mov	x13, #6148914691236517205
	movk	x13, #49109, lsl #48
LBB0_1:
	mov	x15, #0
	mov	x14, x16
	str	x1, [sp, #8]
	; InlineAsm Start
	; InlineAsm End
	str	x2, [sp, #8]
	; InlineAsm Start
	; InlineAsm End
	ldr	x16, [x2]
	ldr	s5, [x0, #24]
	fcvt	d7, s5
	ldr	d16, [x0, #16]
	fmul	d5, d16, d7
	fadd	d6, d5, d0
	fdiv	d6, d0, d6
	ldr	s17, [x0, #36]
	fcvt	d25, s17
	fmul	d7, d7, d25
	fmul	d7, d16, d7
	ldr	s16, [x0, #48]
	fcvt	d18, s16
	fmaxnm	d22, d18, d1
	fdiv	d16, d0, d22
	ldr	d19, [x0, #56]
	fmul	d17, d19, d22
	ldr	s20, [x0, #96]
	fcvt	d20, s20
	fadd	d18, d18, d20
	fmaxnm	d26, d18, d1
	fmul	d18, d19, d26
	ldp	d28, d21, [x0, #128]
	fdiv	d19, d21, d26
	fminnm	d19, d19, d2
	fmaxnm	d24, d19, d3
	fcvtzs	w17, d24
	scvtf	d27, w17
	fsub	d19, d24, d27
	ldr	d23, [x0, #40]
	fdiv	d20, d23, d26
	mvn	w3, w17
	fdiv	d21, d21, d22
	fminnm	d21, d21, d2
	fmaxnm	d29, d21, d3
	fcvtzs	w4, d29
	scvtf	d30, w4
	fsub	d21, d0, d29
	fadd	d21, d21, d30
	fdiv	d22, d23, d22
	fsub	d23, d29, d30
	mvn	w5, w4
	fsub	d24, d0, d24
	fadd	d24, d24, d27
	fmul	d27, d25, d25
	fmul	d25, d27, d25
	ldr	w7, [x0, #32]
	ldr	d10, [x0, #72]
	ldr	d9, [x0, #88]
	ldr	d8, [x0, #112]
	ldr	w6, [x0, #144]
	ldr	d31, [x8, #160]
	ldr	d30, [x8, #176]
	ldr	d29, [x8, #192]
	ldr	d27, [x8, #208]
	fdiv	d26, d0, d26

; Hot loop start
LBB0_2:
	str	w12, [x0, #28]
	scvtf	d11, w7
	fadd	d12, d17, d10
	frintm	d12, d12
	fsub	d10, d10, d12
	fadd	d10, d17, d10
	str	d10, [x0, #64]      ; mem access in loop using the registers that shold have been promoted
	fadd	d10, d10, d10
	fadd	d10, d10, d4
	fmul	d10, d10, d10
	str	d10, [x0, #80]      ; mem access in loop using the registers that shold have been promoted
	fsub	d9, d10, d9
	fadd	d10, d18, d8
	frintm	d10, d10
	fsub	d8, d8, d10
	fadd	d8, d18, d8
	str	d8, [x0, #104]      ; mem access in loop using the registers that shold have been promoted
	fadd	d8, d8, d8
	fadd	d8, d8, d4
	fmul	d8, d8, d8
	fsub	d28, d8, d28
	fmul	d10, d28, d11
	fmul	d10, d20, d10
	and	w7, w6, #0xfff
	str	d10, [x9, w7, uxtw #3]      ; mem access in loop using the registers that shold have been promoted
	fmul	d10, d9, d11
	fmul	d10, d22, d10
	str	d10, [x10, w7, uxtw #3]      ; mem access in loop using the registers that shold have been promoted
	str	d8, [x0, #120]
	fmul	d28, d26, d28
	fmadd	d28, d16, d9, d28
	fmul	d28, d28, d11
	add	w7, w6, w3
	and	w7, w7, #0xfff
	ldr	d8, [x9, w7, uxtw #3]
	sub	w7, w6, w4
	and	w7, w7, #0xfff
	ldr	d9, [x10, w7, uxtw #3]      ; mem access in loop using the registers that shold have been promoted
	ldr	d10, [x0, #40]      ; mem access in loop using the registers that shold have been promoted
	add	w7, w6, w5
	and	w7, w7, #0xfff
	ldr	d11, [x10, w7, uxtw #3]
	fmul	d11, d23, d11
	fmadd	d9, d21, d9, d11
	sub	w6, w6, w17
	and	w6, w6, #0xfff
	ldr	d11, [x9, w6, uxtw #3]
	fmadd	d9, d24, d11, d9
	fmadd	d8, d19, d8, d9
	fnmsub	d28, d10, d28, d8
	fmadd	d31, d7, d28, d31
	fmul	d31, d6, d31
	str	d31, [x8, #152]
	fmadd	d30, d5, d31, d30
	fmul	d30, d6, d30
	str	d30, [x8, #168]
	fmadd	d29, d5, d30, d29
	fmul	d29, d6, d29
	str	d29, [x8, #184]
	fmul	d8, d31, d31
	fmul	d31, d31, d8
	fmul	d8, d28, d28
	fmul	d28, d28, d8
	fnmsub	d28, d25, d28, d31
	fmadd	d27, d5, d28, d27
	fmul	d27, d6, d27
	str	d27, [x8, #200]
	fmul	d28, d30, d30
	fmul	d28, d30, d28
	fadd	d27, d31, d27
	fsub	d27, d27, d28
	ldr	d30, [x8, #224]
	fmadd	d27, d5, d27, d30
	fmul	d27, d6, d27
	str	d27, [x8, #216]
	fadd	d27, d28, d27
	fmul	d28, d29, d29
	fmsub	d27, d29, d28, d27
	ldr	d28, [x8, #240]
	fmadd	d27, d5, d27, d28
	fmul	d27, d6, d27
	str	d27, [x8, #232]
	fmov	d28, x13
	fmadd	d27, d27, d28, d29
	fcvt	s27, d27

; Memory pressure inside the hot loop
	str	s27, [x16, x15]
	ldr	w7, [x0, #28]
	str	w7, [x0, #32]
	ldr	d10, [x0, #64]
	str	d10, [x0, #72]
	ldr	d9, [x0, #80]
	str	d9, [x0, #88]
	ldr	d8, [x0, #104]
	str	d8, [x0, #112]
	ldr	d28, [x0, #120]
	str	d28, [x0, #128]
	ldr	w6, [x0, #144]
	add	w6, w6, #1
	str	w6, [x0, #144]
	ldr	d31, [x8, #152]
	str	d31, [x8, #160]
	ldr	d30, [x8, #168]
	str	d30, [x8, #176]
	ldr	d29, [x8, #184]
	str	d29, [x8, #192]
	ldr	d27, [x8, #200]
	str	d27, [x8, #208]
	ldr	d11, [x8, #216]
	str	d11, [x8, #224]
	ldr	d11, [x8, #232]
	str	d11, [x8, #240]
	add	x15, x15, #4
	cmp	x15, #256
	b.ne	LBB0_2
; Hot loop end

; No store after the loop, it happens inside

	;MEMBARRIER
	sub	w16, w14, #1
	cbnz	w14, LBB0_1
	ldp	d9, d8, [sp, #48]
	ldp	d11, d10, [sp, #32]
	ldp	d13, d12, [sp, #16]
	add	sp, sp, #64
	ret
	.cfi_endproc
