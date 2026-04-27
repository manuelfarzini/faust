;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; C++ single
;;
	.cfi_startproc
; %bb.0:
	ldr	s0, [x0, #40]
	mov	w8, #38771                      ; =0x9773
	movk	w8, #16827, lsl #16
	fmov	s1, w8
	fcmp	s0, s1
	fcsel	s18, s1, s0, mi
	fabs	s2, s0
	fcsel	s4, s1, s2, mi
	ldr	s2, [x0, #64]
	fadd	s0, s0, s2
	fcmp	s0, s1
	fcsel	s16, s1, s0, mi
	fabs	s0, s0
	fcsel	s6, s1, s0, mi
	cmp	w1, #1
	b.lt	LBB17_7
; %bb.1:
	stp	d13, d12, [sp, #-48]!           ; 16-byte Folded Spill
	stp	d11, d10, [sp, #16]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #32]               ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	.cfi_offset b8, -8
	.cfi_offset b9, -16
	.cfi_offset b10, -24
	.cfi_offset b11, -32
	.cfi_offset b12, -40
	.cfi_offset b13, -48
	add	x8, x0, #8, lsl #12             ; =32768
	ldr	x12, [x3]
	ldp	s5, s3, [x0, #16]
	fmul	s0, s3, s5
	fmov	s21, #1.00000000
	fadd	s1, s0, s21
	fdiv	s1, s21, s1
	ldp	s23, s2, [x0, #28]
	fmul	s5, s5, s2
	fmul	s3, s3, s5
	fmov	s7, #20.00000000
	fmaxnm	s19, s4, s7
	fdiv	s4, s21, s19
	ldr	s17, [x0, #44]
	fmul	s5, s17, s19
	fmaxnm	s20, s6, s7
	fdiv	s6, s21, s20
	fmul	s7, s17, s20
	ldp	s25, s22, [x0, #80]
	fdiv	s16, s22, s16
	mov	w9, #57344                      ; =0xe000
	movk	w9, #17663, lsl #16
	fmov	s24, w9
	fminnm	s16, s16, s24
	movi	d27, #0000000000000000
	fmaxnm	s28, s16, s27
	fcvtzs	w13, s28
	fcvtzs	s16, s28
	scvtf	s29, s16
	fsub	s16, s28, s29
	ldr	s26, [x0, #36]
	fdiv	s17, s26, s20
	mvn	w15, w13
	fdiv	s18, s22, s18
	fminnm	s18, s18, s24
	fmaxnm	s20, s18, s27
	fcvtzs	w14, s20
	fcvtzs	s18, s20
	scvtf	s22, s18
	fsub	s18, s21, s20
	fadd	s18, s18, s22
	fdiv	s19, s26, s19
	fsub	s20, s20, s22
	mvn	w16, w14
	fsub	s21, s21, s28
	fadd	s21, s21, s29
	add	x9, x0, #92
	mov	w10, #16476                     ; =0x405c
	add	x10, x0, x10
	mov	w11, #43691                     ; =0xaaab
	movk	w11, #48810, lsl #16
	fmov	s22, w11
	ldp	s27, s24, [x8, #120]
	fmul	s22, s24, s22
	ldr	w11, [x0, #88]
	scvtf	s28, s23
	ldr	s23, [x0, #52]
	fadd	s24, s5, s23
	frintm	s24, s24
	fsub	s23, s23, s24
	fadd	s29, s5, s23
	str	s29, [x0, #48]
	fmov	s23, #-1.00000000
	fmov	s24, #2.00000000
	fmadd	s29, s29, s24, s23
	fmul	s29, s29, s29
	str	s29, [x0, #56]
	ldr	s30, [x0, #60]
	fsub	s29, s29, s30
	ldr	s30, [x0, #72]
	fadd	s31, s7, s30
	frintm	s31, s31
	fsub	s30, s30, s31
	fadd	s30, s7, s30
	str	s30, [x0, #68]
	fmadd	s30, s30, s24, s23
	fmul	s30, s30, s30
	str	s30, [x0, #76]
	fsub	s25, s30, s25
	fmul	s30, s17, s28
	fmul	s30, s30, s25
	and	x17, x11, #0xfff
	str	s30, [x9, x17, lsl #2]
	fmul	s30, s19, s28
	fmul	s30, s30, s29
	str	s30, [x10, x17, lsl #2]
	fmul	s26, s26, s28
	fmul	s25, s6, s25
	add	w15, w11, w15
	and	w15, w15, #0xfff
	ldr	s28, [x9, w15, uxtw #2]
	sub	w15, w11, w14
	and	w15, w15, #0xfff
	ldr	s30, [x10, w15, uxtw #2]
	fmadd	s25, s4, s29, s25
	fmul	s29, s18, s30
	add	w15, w11, w16
	and	w15, w15, #0xfff
	ldr	s30, [x10, w15, uxtw #2]
	fmadd	s28, s16, s28, s29
	fmadd	s28, s20, s30, s28
	sub	w15, w11, w13
	and	w15, w15, #0xfff
	ldr	s29, [x9, w15, uxtw #2]
	fmadd	s28, s21, s29, s28
	fnmsub	s25, s26, s25, s28
	ldr	s26, [x8, #96]
	fmadd	s26, s3, s25, s26
	fmul	s26, s1, s26
	str	s26, [x8, #92]
	ldr	s28, [x8, #104]
	fmadd	s28, s0, s26, s28
	fmul	s28, s1, s28
	str	s28, [x8, #100]
	ldr	s29, [x8, #112]
	fmadd	s29, s0, s28, s29
	fmul	s29, s1, s29
	str	s29, [x8, #108]
	fmadd	s27, s0, s29, s27
	fmul	s27, s1, s27
	str	s27, [x8, #116]
	fmul	s30, s26, s26
	fmul	s26, s26, s30
	ldr	s30, [x8, #132]
	fmul	s25, s2, s25
	fmul	s31, s25, s25
	fmul	s25, s25, s31
	fsub	s25, s25, s26
	fmadd	s25, s0, s25, s30
	fmul	s25, s1, s25
	str	s25, [x8, #128]
	fmul	s30, s28, s28
	fmul	s28, s28, s30
	ldr	s30, [x8, #140]
	fadd	s25, s26, s25
	fsub	s25, s25, s28
	fmadd	s25, s0, s25, s30
	fmul	s25, s1, s25
	str	s25, [x8, #136]
	fmul	s26, s29, s29
	fmul	s26, s29, s26
	ldr	s29, [x8, #148]
	fadd	s25, s28, s25
	fsub	s25, s25, s26
	fmadd	s25, s0, s25, s29
	fmul	s25, s1, s25
	str	s25, [x8, #144]
	ldr	s28, [x8, #156]
	fadd	s25, s26, s25
	fmul	s26, s27, s27
	fmul	s26, s27, s26
	fsub	s25, s25, s26
	fmadd	s25, s0, s25, s28
	fmul	s25, s1, s25
	str	s25, [x8, #152]
	fmadd	s25, s22, s25, s27
	str	s25, [x12]
	ldr	s11, [x0, #48]
	str	s11, [x0, #52]
	ldr	s9, [x0, #56]
	str	s9, [x0, #60]
	ldr	s10, [x0, #68]
	str	s10, [x0, #72]
	ldr	s8, [x0, #76]
	str	s8, [x0, #80]
	ldr	s28, [x8, #92]
	str	s28, [x8, #96]
	ldr	s29, [x8, #100]
	str	s29, [x8, #104]
	ldr	s30, [x8, #108]
	str	s30, [x8, #112]
	ldr	s31, [x8, #116]
	str	s31, [x8, #120]
	ldr	s27, [x8, #128]
	str	s27, [x8, #132]
	ldr	s26, [x8, #136]
	str	s26, [x8, #140]
	ldr	s25, [x8, #144]
	str	s25, [x8, #148]
	ldr	s12, [x8, #152]
	str	s12, [x8, #156]
	cmp	w1, #1
	b.ne	LBB17_3
; %bb.2:
	add	w8, w11, #1
	b	LBB17_6
LBB17_3:
	mov	x15, #0                         ; =0x0
	mov	w16, w1
	add	x12, x12, #4
	sub	x16, x16, #1
	sub	w14, w11, w14
	sub	w13, w11, w13
LBB17_4:                                ; =>This Inner Loop Header: Depth=1
	add	w17, w11, w15
	add	w17, w17, #1
	fadd	s12, s5, s11
	frintm	s12, s12
	fsub	s11, s11, s12
	fadd	s11, s5, s11
	str	s11, [x0, #48]
	fmadd	s11, s11, s24, s23
	fmul	s11, s11, s11
	str	s11, [x0, #56]
	fsub	s9, s11, s9
	fadd	s11, s7, s10
	frintm	s11, s11
	fsub	s10, s10, s11
	fadd	s10, s7, s10
	str	s10, [x0, #68]
	fmadd	s10, s10, s24, s23
	fmul	s10, s10, s10
	str	s10, [x0, #76]
	fsub	s8, s10, s8
	fmul	s10, s17, s8
	and	w17, w17, #0xfff
	str	s10, [x9, w17, uxtw #2]
	fmul	s10, s19, s9
	str	s10, [x10, w17, uxtw #2]
	ldr	s10, [x0, #36]
	fmul	s8, s6, s8
	add	w17, w13, w15
	and	w1, w17, #0xfff
	ldr	s11, [x9, w1, uxtw #2]
	fmadd	s8, s4, s9, s8
	add	w1, w14, w15
	add	w2, w1, #1
	and	w2, w2, #0xfff
	ldr	s9, [x10, w2, uxtw #2]
	fmul	s9, s18, s9
	fmadd	s9, s16, s11, s9
	and	w1, w1, #0xfff
	ldr	s11, [x10, w1, uxtw #2]
	fmadd	s9, s20, s11, s9
	add	w17, w17, #1
	and	w17, w17, #0xfff
	ldr	s11, [x9, w17, uxtw #2]
	fmadd	s9, s21, s11, s9
	fnmsub	s8, s10, s8, s9
	fmadd	s28, s3, s8, s28
	fmul	s28, s1, s28
	str	s28, [x8, #92]
	fmadd	s29, s0, s28, s29
	fmul	s29, s1, s29
	str	s29, [x8, #100]
	fmadd	s30, s0, s29, s30
	fmul	s30, s1, s30
	str	s30, [x8, #108]
	fmadd	s31, s0, s30, s31
	fmul	s31, s1, s31
	str	s31, [x8, #116]
	fmul	s9, s28, s28
	fmul	s28, s28, s9
	fmul	s8, s2, s8
	fmul	s9, s8, s8
	fmul	s8, s8, s9
	fsub	s8, s8, s28
	fmadd	s27, s0, s8, s27
	fmul	s27, s1, s27
	str	s27, [x8, #128]
	fmul	s8, s29, s29
	fmul	s29, s29, s8
	fadd	s27, s28, s27
	fsub	s27, s27, s29
	fmadd	s26, s0, s27, s26
	fmul	s26, s1, s26
	str	s26, [x8, #136]
	fmul	s27, s30, s30
	fmul	s27, s30, s27
	fadd	s26, s29, s26
	fsub	s26, s26, s27
	fmadd	s25, s0, s26, s25
	fmul	s25, s1, s25
	str	s25, [x8, #144]
	ldr	s26, [x8, #156]
	fadd	s25, s27, s25
	fmul	s27, s31, s31
	fmul	s27, s31, s27
	fsub	s25, s25, s27
	fmadd	s25, s0, s25, s26
	fmul	s25, s1, s25
	str	s25, [x8, #152]
	fmadd	s25, s22, s25, s31
	str	s25, [x12, x15, lsl #2]
	ldr	s11, [x0, #48]
	str	s11, [x0, #52]
	ldr	s9, [x0, #56]
	str	s9, [x0, #60]
	ldr	s10, [x0, #68]
	str	s10, [x0, #72]
	ldr	s8, [x0, #76]
	str	s8, [x0, #80]
	ldr	s28, [x8, #92]
	str	s28, [x8, #96]
	ldr	s29, [x8, #100]
	str	s29, [x8, #104]
	ldr	s30, [x8, #108]
	str	s30, [x8, #112]
	ldr	s31, [x8, #116]
	str	s31, [x8, #120]
	ldr	s27, [x8, #128]
	str	s27, [x8, #132]
	ldr	s26, [x8, #136]
	str	s26, [x8, #140]
	ldr	s25, [x8, #144]
	str	s25, [x8, #148]
	ldr	s12, [x8, #152]
	str	s12, [x8, #156]
	add	x15, x15, #1
	cmp	x16, x15
	b.ne	LBB17_4
; %bb.5:
	add	w8, w11, w15
	add	w8, w8, #1
LBB17_6:
	movi.2s	v0, #1
	str	d0, [x0, #24]
	str	w8, [x0, #88]
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #16]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp], #48             ; 16-byte Folded Reload
LBB17_7:
	ret
	.cfi_endproc

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; C++ double
;;
	.cfi_startproc
; %bb.0:
	ldr	s0, [x0, #56]
	fcvt	d0, s0
	mov	x8, #47479                      ; =0xb977
	movk	x8, #24011, lsl #16
	movk	x8, #29422, lsl #32
	movk	x8, #16439, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	fcsel	d6, d1, d0, mi
	fabs	d2, d0
	fcsel	d4, d1, d2, mi
	ldr	s2, [x0, #104]
	fcvt	d2, s2
	fadd	d0, d0, d2
	fcmp	d0, d1
	fcsel	d18, d1, d0, mi
	fabs	d0, d0
	fcsel	d7, d1, d0, mi
	cmp	w1, #1
	b.lt	LBB17_7
; %bb.1:
	stp	d15, d14, [sp, #-64]!           ; 16-byte Folded Spill
	stp	d13, d12, [sp, #16]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #32]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	.cfi_offset b8, -8
	.cfi_offset b9, -16
	.cfi_offset b10, -24
	.cfi_offset b11, -32
	.cfi_offset b12, -40
	.cfi_offset b13, -48
	.cfi_offset b14, -56
	.cfi_offset b15, -64
	add	x8, x0, #16, lsl #12            ; =65536
	ldr	x12, [x3]
	ldr	s0, [x0, #32]
	fcvt	d3, s0
	ldr	d5, [x0, #24]
	fmul	d0, d5, d3
	fmov	d17, #1.00000000
	fadd	d1, d0, d17
	fdiv	d1, d17, d1
	ldp	s21, s2, [x0, #40]
	fcvt	d2, s2
	fmul	d5, d5, d2
	fmul	d3, d5, d3
	fmov	d16, #20.00000000
	fmaxnm	d23, d4, d16
	fdiv	d4, d17, d23
	ldr	d19, [x0, #64]
	fmul	d11, d19, d23
	fmaxnm	d20, d7, d16
	fdiv	d7, d17, d20
	fmul	d12, d19, d20
	ldp	d28, d22, [x0, #136]
	fdiv	d18, d22, d18
	mov	x9, #277076930199552            ; =0xfc0000000000
	movk	x9, #16543, lsl #48
	fmov	d24, x9
	fminnm	d18, d18, d24
	movi	d25, #0000000000000000
	fmaxnm	d26, d18, d25
	fcvtzs	w14, d26
	scvtf	d27, w14
	fsub	d18, d26, d27
	ldr	d19, [x0, #48]
	fdiv	d20, d19, d20
	mvn	w13, w14
	fdiv	d6, d22, d6
	fminnm	d6, d6, d24
	fmaxnm	d6, d6, d25
	fcvtzs	w16, d6
	scvtf	d24, w16
	fsub	d22, d17, d6
	fadd	d22, d22, d24
	fdiv	d23, d19, d23
	fsub	d24, d6, d24
	mvn	w15, w16
	fsub	d6, d17, d26
	fadd	d25, d6, d27
	ldr	s6, [x8, #224]
	fcvt	d6, s6
	add	x9, x0, #160
	mov	w10, #32928                     ; =0x80a0
	add	x10, x0, x10
	mov	x11, #6148914691236517205       ; =0x5555555555555555
	movk	x11, #49109, lsl #48
	fmov	d17, x11
	fmul	d27, d6, d17
	ldr	d6, [x0, #80]
	ldr	d17, [x0, #96]
	ldr	d26, [x0, #120]
	ldr	w11, [x0, #152]
	ldr	d29, [x8, #168]
	ldr	d30, [x8, #184]
	ldr	d8, [x8, #200]
	ldr	d9, [x8, #216]
	sshll.2d	v21, v21, #0
	scvtf	d31, d21
	fadd	d21, d11, d6
	frintm	d21, d21
	fsub	d6, d6, d21
	fadd	d6, d11, d6
	fmov	d5, #-1.00000000
	fmov	d16, #2.00000000
	fmadd	d21, d6, d16, d5
	fmul	d21, d21, d21
	fsub	d10, d21, d17
	fadd	d17, d12, d26
	frintm	d17, d17
	fsub	d17, d26, d17
	fadd	d17, d12, d17
	fmadd	d26, d17, d16, d5
	fmul	d26, d26, d26
	fsub	d28, d26, d28
	fmul	d13, d20, d31
	fmul	d13, d13, d28
	and	x17, x11, #0xfff
	str	d13, [x9, x17, lsl #3]
	fmul	d13, d23, d31
	fmul	d13, d13, d10
	str	d13, [x10, x17, lsl #3]
	ldr	d13, [x8, #240]
	fmul	d28, d7, d28
	add	w13, w11, w13
	and	w13, w13, #0xfff
	ldr	d14, [x9, w13, uxtw #3]
	fmadd	d28, d4, d10, d28
	sub	w13, w11, w16
	and	w13, w13, #0xfff
	ldr	d10, [x10, w13, uxtw #3]
	fmul	d10, d22, d10
	fmadd	d10, d18, d14, d10
	add	w13, w11, w15
	and	w13, w13, #0xfff
	ldr	d14, [x10, w13, uxtw #3]
	fmadd	d10, d24, d14, d10
	sub	w13, w11, w14
	and	w13, w13, #0xfff
	ldr	d14, [x9, w13, uxtw #3]
	fmadd	d10, d25, d14, d10
	ldr	d14, [x8, #256]
	fmul	d31, d19, d31
	fnmsub	d10, d31, d28, d10
	ldr	d15, [x8, #272]
	fmadd	d28, d3, d10, d29
	fmul	d31, d1, d28
	fmadd	d28, d0, d31, d30
	fmul	d30, d1, d28
	fmadd	d28, d0, d30, d8
	fmul	d29, d1, d28
	fmadd	d28, d0, d29, d9
	fmul	d28, d1, d28
	fmul	d8, d10, d2
	fmul	d9, d8, d8
	fmul	d8, d8, d9
	fmul	d9, d31, d31
	fmul	d9, d31, d9
	fsub	d8, d8, d9
	fmadd	d8, d0, d8, d13
	fmul	d8, d1, d8
	fmul	d10, d30, d30
	fmul	d10, d30, d10
	fadd	d9, d9, d8
	fsub	d9, d9, d10
	fmadd	d9, d0, d9, d14
	fmul	d9, d1, d9
	fmul	d13, d29, d29
	fmul	d13, d29, d13
	fadd	d10, d10, d9
	fsub	d10, d10, d13
	fmadd	d10, d0, d10, d15
	fmul	d10, d1, d10
	fadd	d13, d13, d10
	fmul	d14, d28, d28
	fmul	d14, d28, d14
	fsub	d13, d13, d14
	ldr	d14, [x8, #288]
	fmadd	d13, d0, d13, d14
	fmul	d13, d1, d13
	fmadd	d14, d27, d13, d28
	fcvt	s14, d14
	str	s14, [x12]
	cmp	w1, #1
	b.ne	LBB17_3
; %bb.2:
	add	w9, w11, #1
	b	LBB17_6
LBB17_3:
	mov	x13, #0                         ; =0x0
	mov	w15, w1
	add	x12, x12, #4
	sub	x15, x15, #1
	sub	w16, w11, w16
	sub	w14, w11, w14
	fmov	d5, d19
	fmov	d19, d25
	fmov	d25, d23
	fmov	d23, d20
	fmov	d20, d7
	fmov	d7, d3
	fmov	d16, d27
	fmov	d27, d24
	fmov	d24, d22
	fmov	d22, d18
	fmov	d18, d2
LBB17_4:                                ; =>This Inner Loop Header: Depth=1
	fmov	d14, d21
	fmov	d15, d26
	add	w17, w11, w13
	add	w17, w17, #1
	fadd	d21, d11, d6
	frintm	d21, d21
	fsub	d6, d6, d21
	fadd	d6, d11, d6
	fmov	d2, #-1.00000000
	fmov	d3, #2.00000000
	fmadd	d21, d6, d3, d2
	fmul	d21, d21, d21
	fsub	d14, d21, d14
	fadd	d26, d12, d17
	frintm	d26, d26
	fsub	d17, d17, d26
	fadd	d17, d12, d17
	fmadd	d26, d17, d3, d2
	fmul	d26, d26, d26
	fsub	d15, d26, d15
	fmul	d3, d23, d15
	and	w17, w17, #0xfff
	str	d3, [x9, w17, uxtw #3]
	fmul	d3, d25, d14
	str	d3, [x10, w17, uxtw #3]
	fmul	d3, d20, d15
	fmadd	d3, d4, d14, d3
	add	w17, w14, w13
	and	w1, w17, #0xfff
	ldr	d14, [x9, w1, uxtw #3]
	add	w1, w16, w13
	add	w2, w1, #1
	and	w2, w2, #0xfff
	ldr	d15, [x10, w2, uxtw #3]
	fmul	d15, d24, d15
	and	w1, w1, #0xfff
	fmov	d2, d4
	ldr	d4, [x10, w1, uxtw #3]
	fmadd	d14, d22, d14, d15
	fmadd	d4, d27, d4, d14
	add	w17, w17, #1
	and	w17, w17, #0xfff
	ldr	d14, [x9, w17, uxtw #3]
	fmadd	d4, d19, d14, d4
	fnmsub	d3, d5, d3, d4
	fmadd	d4, d7, d3, d31
	fmul	d31, d1, d4
	fmadd	d4, d0, d31, d30
	fmul	d30, d1, d4
	fmadd	d4, d0, d30, d29
	fmul	d29, d1, d4
	fmadd	d4, d0, d29, d28
	fmul	d28, d1, d4
	fmul	d3, d3, d18
	fmul	d4, d3, d3
	fmul	d3, d3, d4
	fmul	d4, d31, d31
	fmul	d4, d31, d4
	fsub	d3, d3, d4
	fmadd	d3, d0, d3, d8
	fmul	d8, d1, d3
	fmul	d3, d30, d30
	fmul	d3, d30, d3
	fadd	d4, d4, d8
	fsub	d4, d4, d3
	fmadd	d4, d0, d4, d9
	fmul	d9, d1, d4
	fmul	d4, d29, d29
	fmul	d4, d29, d4
	fadd	d3, d3, d9
	fsub	d3, d3, d4
	fmadd	d3, d0, d3, d10
	fmul	d10, d1, d3
	fadd	d3, d4, d10
	fmul	d4, d28, d28
	fmul	d4, d28, d4
	fsub	d3, d3, d4
	fmov	d4, d2
	fmadd	d3, d0, d3, d13
	fmul	d13, d1, d3
	fmadd	d3, d16, d13, d28
	fcvt	s3, d3
	str	s3, [x12, x13, lsl #2]
	add	x13, x13, #1
	cmp	x15, x13
	b.ne	LBB17_4
; %bb.5:
	add	w9, w11, w13
	add	w9, w9, #1
LBB17_6:
	movi.2s	v0, #1
	stur	d0, [x0, #36]
	stp	d6, d6, [x0, #72]
	stp	d21, d21, [x0, #88]
	stp	d17, d17, [x0, #112]
	stp	d26, d26, [x0, #128]
	str	w9, [x0, #152]
	stp	d31, d31, [x8, #160]
	stp	d30, d30, [x8, #176]
	stp	d29, d29, [x8, #192]
	stp	d28, d28, [x8, #208]
	stp	d8, d8, [x8, #232]
	stp	d9, d9, [x8, #248]
	stp	d10, d10, [x8, #264]
	stp	d13, d13, [x8, #280]
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #32]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #16]             ; 16-byte Folded Reload
	ldp	d15, d14, [sp], #64             ; 16-byte Folded Reload
LBB17_7:
	ret
	.cfi_endproc

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Mojo single
;;
_inspect_compute:
	.cfi_startproc
	sub	sp, sp, #32
	stp	d9, d8, [sp, #16]
	.cfi_def_cfa_offset 32
	.cfi_offset b8, -8
	.cfi_offset b9, -16
	mov	x8, #0
	add	x9, x0, #8, lsl #12
	add	x10, x0, #88
	mov	w11, #16472
	add	x11, x0, x11
	str	x1, [sp, #8]
	add	x12, sp, #8
	; InlineAsm Start
	; InlineAsm End
	str	x2, [sp, #8]
	; InlineAsm Start
	; InlineAsm End
	ldr	x12, [x2]
	ldp	s4, s3, [x0, #12]
	fmul	s0, s3, s4
	fmov	s20, #1.00000000
	fadd	s1, s0, s20
	fdiv	s1, s20, s1
	ldp	s2, s22, [x0, #28]
	fmul	s3, s3, s2
	fmul	s3, s4, s3
	mov	w13, #38771
	movk	w13, #16827, lsl #16
	fmov	s6, w13
	ldp	s7, s16, [x0, #36]
	fmaxnm	s23, s7, s6
	fdiv	s4, s20, s23
	fmul	s5, s16, s23
	ldp	s24, s17, [x0, #56]
	fadd	s7, s7, s17
	fmaxnm	s17, s7, s6
	fdiv	s6, s20, s17
	fmul	s7, s16, s17
	ldp	s25, s18, [x0, #76]
	fdiv	s16, s18, s17
	mov	w13, #57344
	movk	w13, #17663, lsl #16
	fmov	s19, w13
	fminnm	s16, s16, s19
	movi.2d	v21, #0000000000000000
	fmaxnm	s26, s16, s21
	fcvtzs	w13, s26
	scvtf	s27, w13
	fsub	s16, s26, s27
	fdiv	s17, s22, s17
	fdiv	s18, s18, s23
	fminnm	s18, s18, s19
	fmaxnm	s19, s18, s21
	fcvtzs	w14, s19
	mvn	w15, w13
	scvtf	s21, w14
	fsub	s18, s20, s19
	fadd	s18, s18, s21
	fsub	s19, s19, s21
	mvn	w16, w14
	fsub	s20, s20, s26
	fadd	s20, s20, s27
	mov	w17, #43691
	movk	w17, #16042, lsl #16
	fmov	s21, w17
	ldp	s26, s27, [x9, #116]
	fmul	s21, s27, s21
	ldr	w2, [x0, #24]
	ldr	s31, [x0, #48]
	ldr	s30, [x0, #68]
	ldr	w1, [x0, #84]
	ldr	s29, [x9, #92]
	ldr	s28, [x9, #100]
	ldr	s27, [x9, #108]
	mov	w17, #1
	fdiv	s22, s22, s23
	fmov	s23, #-1.00000000
LBB0_1:
	str	w17, [x0, #20]
	scvtf	s8, w2
	fadd	s9, s5, s31
	frintm	s9, s9
	fsub	s31, s31, s9
	fadd	s31, s5, s31
	str	s31, [x0, #44]
	fadd	s31, s31, s31
	fadd	s31, s31, s23
	fmul	s31, s31, s31
	str	s31, [x0, #52]
	fsub	s24, s31, s24
	fadd	s31, s7, s30
	frintm	s31, s31
	fsub	s30, s30, s31
	fadd	s30, s7, s30
	str	s30, [x0, #64]
	fadd	s30, s30, s30
	fadd	s30, s30, s23
	fmul	s30, s30, s30
	fsub	s25, s30, s25
	fmul	s31, s25, s8
	fmul	s31, s17, s31
	and	w2, w1, #0xfff
	str	s31, [x10, w2, uxtw #2]
	str	s30, [x0, #72]
	fmul	s30, s24, s8
	fmul	s30, s22, s30
	str	s30, [x11, w2, uxtw #2]
	fmul	s25, s6, s25
	fmadd	s24, s4, s24, s25
	fmul	s24, s24, s8
	add	w2, w1, w15
	and	w2, w2, #0xfff
	ldr	s25, [x10, w2, uxtw #2]
	ldr	s30, [x0, #32]
	sub	w2, w1, w14
	and	w2, w2, #0xfff
	ldr	s31, [x11, w2, uxtw #2]
	add	w2, w1, w16
	and	w2, w2, #0xfff
	ldr	s8, [x11, w2, uxtw #2]
	fmul	s8, s19, s8
	fmadd	s31, s18, s31, s8
	sub	w1, w1, w13
	and	w1, w1, #0xfff
	ldr	s8, [x10, w1, uxtw #2]
	fmadd	s31, s20, s8, s31
	fmadd	s25, s16, s25, s31
	fnmsub	s24, s30, s24, s25
	fmadd	s25, s3, s24, s29
	fmul	s25, s1, s25
	str	s25, [x9, #88]
	fmadd	s28, s0, s25, s28
	fmul	s28, s1, s28
	str	s28, [x9, #96]
	fmadd	s27, s0, s28, s27
	fmul	s27, s1, s27
	str	s27, [x9, #104]
	fmadd	s26, s0, s27, s26
	fmul	s26, s1, s26
	str	s26, [x9, #112]
	fmul	s29, s25, s25
	fmul	s25, s25, s29
	fmul	s24, s2, s24
	fmul	s29, s24, s24
	fnmsub	s24, s24, s29, s25
	ldr	s29, [x9, #128]
	fmadd	s24, s0, s24, s29
	fmul	s24, s1, s24
	str	s24, [x9, #124]
	fmul	s29, s28, s28
	fmul	s28, s28, s29
	fadd	s24, s25, s24
	fsub	s24, s24, s28
	ldr	s25, [x9, #136]
	fmadd	s24, s0, s24, s25
	fmul	s24, s1, s24
	str	s24, [x9, #132]
	fmul	s25, s27, s27
	fmul	s25, s27, s25
	fadd	s24, s28, s24
	fsub	s24, s24, s25
	ldr	s27, [x9, #144]
	fmadd	s24, s0, s24, s27
	fmul	s24, s1, s24
	str	s24, [x9, #140]
	fadd	s24, s25, s24
	fmul	s25, s26, s26
	fmsub	s24, s26, s25, s24
	ldr	s25, [x9, #152]
	fmadd	s24, s0, s24, s25
	fmul	s24, s1, s24
	str	s24, [x9, #148]
	fmsub	s24, s21, s24, s26
	str	s24, [x12, x8]
	ldr	w2, [x0, #20]
	str	w2, [x0, #24]
	ldr	s31, [x0, #44]
	str	s31, [x0, #48]
	ldr	s24, [x0, #52]
	str	s24, [x0, #56]
	ldr	s30, [x0, #64]
	str	s30, [x0, #68]
	ldr	s25, [x0, #72]
	str	s25, [x0, #76]
	ldr	w1, [x0, #84]
	add	w1, w1, #1
	str	w1, [x0, #84]
	ldr	s29, [x9, #88]
	str	s29, [x9, #92]
	ldr	s28, [x9, #96]
	str	s28, [x9, #100]
	ldr	s27, [x9, #104]
	str	s27, [x9, #108]
	ldr	s26, [x9, #112]
	str	s26, [x9, #116]
	ldr	s8, [x9, #124]
	str	s8, [x9, #128]
	ldr	s8, [x9, #132]
	str	s8, [x9, #136]
	ldr	s8, [x9, #140]
	str	s8, [x9, #144]
	ldr	s8, [x9, #148]
	str	s8, [x9, #152]
	add	x8, x8, #4
	cmp	x8, #256
	b.ne	LBB0_1
	;MEMBARRIER
	ldp	d9, d8, [sp, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Mojo double
;;
_inspect_compute:
	.cfi_startproc
	sub	sp, sp, #32
	stp	d9, d8, [sp, #16]
	.cfi_def_cfa_offset 32
	.cfi_offset b8, -8
	.cfi_offset b9, -16
	mov	x8, #0
	add	x9, x0, #16, lsl #12
	add	x10, x0, #152
	mov	w11, #32920
	add	x11, x0, x11
	str	x1, [sp, #8]
	add	x12, sp, #8
	; InlineAsm Start
	; InlineAsm End
	str	x2, [sp, #8]
	; InlineAsm Start
	; InlineAsm End
	ldr	x12, [x2]
	ldr	s0, [x0, #24]
	fcvt	d3, s0
	ldr	d4, [x0, #16]
	fmul	d0, d4, d3
	fmov	d20, #1.00000000
	fadd	d1, d0, d20
	fdiv	d1, d20, d1
	ldr	s2, [x0, #36]
	fcvt	d2, s2
	fmul	d3, d3, d2
	fmul	d3, d4, d3
	ldr	s4, [x0, #48]
	fcvt	d6, s4
	mov	x13, #47479
	movk	x13, #24011, lsl #16
	movk	x13, #29422, lsl #32
	movk	x13, #16439, lsl #48
	fmov	d7, x13
	fmaxnm	d22, d6, d7
	fdiv	d4, d20, d22
	ldr	d16, [x0, #56]
	fmul	d5, d16, d22
	ldr	s17, [x0, #96]
	fcvt	d17, s17
	fadd	d6, d6, d17
	fmaxnm	d17, d6, d7
	fdiv	d6, d20, d17
	fmul	d7, d16, d17
	ldp	d24, d18, [x0, #128]
	fdiv	d16, d18, d17
	mov	x13, #277076930199552
	movk	x13, #16543, lsl #48
	fmov	d19, x13
	fminnm	d16, d16, d19
	movi.2d	v21, #0000000000000000
	fmaxnm	d23, d16, d21
	fcvtzs	w13, d23
	scvtf	d25, w13
	fsub	d16, d23, d25
	ldr	d8, [x0, #40]
	fdiv	d17, d8, d17
	fdiv	d18, d18, d22
	fminnm	d18, d18, d19
	fmaxnm	d19, d18, d21
	fcvtzs	w14, d19
	scvtf	d21, w14
	mvn	w15, w13
	fsub	d18, d20, d19
	fadd	d18, d18, d21
	fsub	d19, d19, d21
	mvn	w16, w14
	fsub	d20, d20, d23
	fadd	d20, d20, d25
	ldr	s21, [x9, #216]
	fcvt	d21, s21
	mov	x17, #6148914691236517205
	movk	x17, #16341, lsl #48
	fmov	d23, x17
	fmul	d21, d21, d23
	ldr	w2, [x0, #32]
	ldr	d31, [x0, #72]
	ldr	d30, [x0, #88]
	ldr	d29, [x0, #112]
	ldr	w1, [x0, #144]
	ldr	d28, [x9, #160]
	ldr	d27, [x9, #176]
	ldr	d26, [x9, #192]
	ldr	d25, [x9, #208]
	mov	w17, #1
	fdiv	d22, d8, d22
	fmov	d23, #-1.00000000
LBB0_1:
	str	w17, [x0, #28]
	scvtf	d8, w2
	fadd	d9, d5, d31
	frintm	d9, d9
	fsub	d31, d31, d9
	fadd	d31, d5, d31
	str	d31, [x0, #64]
	fadd	d31, d31, d31
	fadd	d31, d31, d23
	fmul	d31, d31, d31
	str	d31, [x0, #80]
	fsub	d30, d31, d30
	fadd	d31, d7, d29
	frintm	d31, d31
	fsub	d29, d29, d31
	fadd	d29, d7, d29
	str	d29, [x0, #104]
	fadd	d29, d29, d29
	fadd	d29, d29, d23
	fmul	d29, d29, d29
	str	d29, [x0, #120]
	fsub	d24, d29, d24
	fmul	d29, d24, d8
	fmul	d29, d17, d29
	and	w2, w1, #0xfff
	str	d29, [x10, w2, uxtw #3]
	fmul	d29, d30, d8
	fmul	d29, d22, d29
	str	d29, [x11, w2, uxtw #3]
	fmul	d24, d6, d24
	fmadd	d24, d4, d30, d24
	fmul	d24, d24, d8
	ldr	d29, [x0, #40]
	add	w2, w1, w15
	and	w2, w2, #0xfff
	ldr	d30, [x10, w2, uxtw #3]
	sub	w2, w1, w14
	and	w2, w2, #0xfff
	ldr	d31, [x11, w2, uxtw #3]
	add	w2, w1, w16
	and	w2, w2, #0xfff
	ldr	d8, [x11, w2, uxtw #3]
	fmul	d8, d19, d8
	fmadd	d31, d18, d31, d8
	sub	w1, w1, w13
	and	w1, w1, #0xfff
	ldr	d8, [x10, w1, uxtw #3]
	fmadd	d31, d20, d8, d31
	fmadd	d30, d16, d30, d31
	fnmsub	d24, d29, d24, d30
	fmadd	d28, d3, d24, d28
	fmul	d28, d1, d28
	str	d28, [x9, #152]
	fmadd	d27, d0, d28, d27
	fmul	d27, d1, d27
	str	d27, [x9, #168]
	fmadd	d26, d0, d27, d26
	fmul	d26, d1, d26
	str	d26, [x9, #184]
	fmadd	d25, d0, d26, d25
	fmul	d25, d1, d25
	str	d25, [x9, #200]
	fmul	d29, d28, d28
	fmul	d28, d28, d29
	fmul	d24, d24, d2
	fmul	d29, d24, d24
	fnmsub	d24, d24, d29, d28
	ldr	d29, [x9, #232]
	fmadd	d24, d0, d24, d29
	fmul	d24, d1, d24
	str	d24, [x9, #224]
	fmul	d29, d27, d27
	fmul	d27, d27, d29
	fadd	d24, d28, d24
	fsub	d24, d24, d27
	ldr	d28, [x9, #248]
	fmadd	d24, d0, d24, d28
	fmul	d24, d1, d24
	str	d24, [x9, #240]
	fmul	d28, d26, d26
	fmul	d26, d26, d28
	fadd	d24, d27, d24
	fsub	d24, d24, d26
	ldr	d27, [x9, #264]
	fmadd	d24, d0, d24, d27
	fmul	d24, d1, d24
	str	d24, [x9, #256]
	fadd	d24, d26, d24
	fmul	d26, d25, d25
	fmsub	d24, d25, d26, d24
	ldr	d26, [x9, #280]
	fmadd	d24, d0, d24, d26
	fmul	d24, d1, d24
	str	d24, [x9, #272]
	fmsub	d24, d21, d24, d25
	fcvt	s24, d24
	str	s24, [x12, x8]
	ldr	w2, [x0, #28]
	str	w2, [x0, #32]
	ldr	d31, [x0, #64]
	str	d31, [x0, #72]
	ldr	d30, [x0, #80]
	str	d30, [x0, #88]
	ldr	d29, [x0, #104]
	str	d29, [x0, #112]
	ldr	d24, [x0, #120]
	str	d24, [x0, #128]
	ldr	w1, [x0, #144]
	add	w1, w1, #1
	str	w1, [x0, #144]
	ldr	d28, [x9, #152]
	str	d28, [x9, #160]
	ldr	d27, [x9, #168]
	str	d27, [x9, #176]
	ldr	d26, [x9, #184]
	str	d26, [x9, #192]
	ldr	d25, [x9, #200]
	str	d25, [x9, #208]
	ldr	d8, [x9, #224]
	str	d8, [x9, #232]
	ldr	d8, [x9, #240]
	str	d8, [x9, #248]
	ldr	d8, [x9, #256]
	str	d8, [x9, #264]
	ldr	d8, [x9, #272]
	str	d8, [x9, #280]
	add	x8, x8, #4
	cmp	x8, #256
	b.ne	LBB0_1
	;MEMBARRIER
	ldp	d9, d8, [sp, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
