;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Mojo double
;;
_inspect_compute:
	.cfi_startproc
	stp	d15, d14, [sp, #-160]!
	stp	d13, d12, [sp, #16]
	stp	d11, d10, [sp, #32]
	stp	d9, d8, [sp, #48]
	stp	x28, x27, [sp, #64]
	stp	x26, x25, [sp, #80]
	stp	x24, x23, [sp, #96]
	stp	x22, x21, [sp, #112]
	stp	x20, x19, [sp, #128]
	stp	x29, x30, [sp, #144]
	sub	sp, sp, #9, lsl #12
	sub	sp, sp, #1712
	.cfi_def_cfa_offset 38736
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	.cfi_offset b10, -120
	.cfi_offset b11, -128
	.cfi_offset b12, -136
	.cfi_offset b13, -144
	.cfi_offset b14, -152
	.cfi_offset b15, -160
	mov	x19, x0
	add	x9, sp, #8, lsl #12
	add	x9, x9, #3248
	str	x1, [x9, #2016]
	add	x8, sp, #9, lsl #12
	add	x8, x8, #1168
	; InlineAsm Start
	; InlineAsm End
	str	x2, [x9, #2016]
	add	x8, sp, #9, lsl #12
	add	x8, x8, #1168
	; InlineAsm Start
	; InlineAsm End
	mov	x8, #-7378697629483820647
	movk	x8, #39322
	movk	x8, #16297, lsl #48
	fmov	d0, x8
	ldp	x9, x8, [x2]
	str	x9, [sp, #2168]
	str	x8, [sp, #2160]
	ldr	s10, [x0, #4]
	ldr	s1, [x0, #40]
	fcvt	d1, s1
	fmul	d1, d1, d0
	mov	w21, #4720
	mov	w22, #5248
	mov	w23, #5776
	mov	w24, #6304
	mov	w25, #6832
	mov	w26, #7360
	mov	w27, #7632
	mov	w28, #4272
	mov	x20, #43520
	movk	x20, #54001, lsl #16
	movk	x20, #25165, lsl #32
	movk	x20, #16208, lsl #48
	fmov	d0, #10.00000000
	bl	"_std::math::math::pow[::Powable]($0,$0),T=[typevalue<#kgen.instref<\"std::builtin::simd::SIMD,dtype=f64,size=1\">>, scalar<f64>]"
	mov.16b	v8, v0
	ldr	s0, [x19, #80]
	movi.2d	v11, #0000000000000000
	fcmp	s0, #0.0
	movi.2d	v12, #0000000000000000
	b.le	LBB0_2
	fcvt	d0, s0
	ldr	d1, [x19, #96]
	fneg	d1, d1
	fdiv	d0, d1, d0
	mov	x8, #8913
	movk	x8, #63963, lsl #16
	movk	x8, #11134, lsl #32
	movk	x8, #16518, lsl #48
	fmov	d1, x8
	fminnm	d0, d0, d1
	mov	x8, #22293
	movk	x8, #13978, lsl #16
	movk	x8, #11133, lsl #32
	movk	x8, #49286, lsl #48
	fmov	d1, x8
	fmaxnm	d0, d0, d1
	mov	x8, #33534
	movk	x8, #25899, lsl #16
	movk	x8, #5447, lsl #32
	movk	x8, #16375, lsl #48
	fmov	d1, x8
	fmov	d2, #0.50000000
	fmadd	d1, d0, d1, d2
	frintm	d3, d1
	mov	x8, #12288
	movk	x8, #65274, lsl #16
	movk	x8, #11842, lsl #32
	movk	x8, #49126, lsl #48
	fmov	d4, x8
	fmadd	d3, d3, d4, d0
	mov	x8, #17636
	movk	x8, #26613, lsl #16
	movk	x8, #58949, lsl #32
	movk	x8, #15962, lsl #48
	fmov	d4, x8
	mov	x8, #55448
	movk	x8, #61432, lsl #16
	movk	x8, #61144, lsl #32
	movk	x8, #15905, lsl #48
	fmov	d5, x8
	fmadd	d4, d3, d5, d4
	mov	x8, #40796
	movk	x8, #46968, lsl #16
	movk	x8, #32335, lsl #32
	movk	x8, #16018, lsl #48
	fmov	d5, x8
	fmadd	d4, d4, d3, d5
	mov	x8, #50996
	movk	x8, #42326, lsl #16
	movk	x8, #7651, lsl #32
	movk	x8, #16071, lsl #48
	fmov	d5, x8
	fmadd	d4, d4, d3, d5
	mov	x8, #40986
	movk	x8, #6657, lsl #16
	movk	x8, #416, lsl #32
	movk	x8, #16122, lsl #48
	fmov	d5, x8
	fmadd	d4, d4, d3, d5
	mov	x8, #40986
	movk	x8, #6657, lsl #16
	movk	x8, #416, lsl #32
	movk	x8, #16170, lsl #48
	fmov	d5, x8
	fmadd	d4, d4, d3, d5
	mov	x8, #27671
	movk	x8, #5825, lsl #16
	movk	x8, #49516, lsl #32
	movk	x8, #16214, lsl #48
	fmov	d5, x8
	fmadd	d4, d4, d3, d5
	mov	x8, #1229782938247303441
	movk	x8, #16257, lsl #48
	fmov	d5, x8
	fmadd	d4, d4, d3, d5
	mov	x8, #6148914691236517205
	movk	x8, #16293, lsl #48
	fmov	d5, x8
	fmadd	d4, d4, d3, d5
	mov	x8, #6148914691236517205
	movk	x8, #16325, lsl #48
	fmov	d5, x8
	fmadd	d4, d4, d3, d5
	fmadd	d2, d4, d3, d2
	fmov	d4, #1.00000000
	fmadd	d2, d2, d3, d4
	fcvtms	x8, d1
	fmadd	d1, d2, d3, d4
	mov	x9, #4607182418800017408
	add	x8, x9, x8, lsl #52
	fmov	d2, x8
	fmul	d1, d1, d2
	fmaxnm	d12, d1, d0
LBB0_2:
	fmov	d9, x20
	mov	x8, #140737488355328
	movk	x8, #49224, lsl #48
	fmov	d0, x8
	mov	x8, #6148914691236517205
	movk	x8, #16309, lsl #48
	fmov	d1, x8
	ldr	s2, [x19, #104]
	fcvt	d2, s2
	fadd	d0, d2, d0
	mov	w8, #5096
	add	x8, x19, x8
	str	x8, [sp, #2464]
	mov	w8, #4384
	add	x8, x19, x8
	str	x8, [sp, #2136]
	mov	w8, #4464
	add	x8, x19, x8
	str	x8, [sp, #2128]
	mov	w8, #4536
	add	x8, x19, x8
	str	x8, [sp, #2120]
	mov	w8, #4912
	add	x8, x19, x8
	str	x8, [sp, #2112]
	mov	w8, #4992
	add	x8, x19, x8
	str	x8, [sp, #2104]
	mov	w8, #5064
	add	x8, x19, x8
	str	x8, [sp, #2096]
	mov	w8, #5440
	add	x8, x19, x8
	str	x8, [sp, #2088]
	mov	w8, #5520
	add	x8, x19, x8
	str	x8, [sp, #2080]
	mov	w8, #5592
	add	x8, x19, x8
	str	x8, [sp, #2072]
	mov	w8, #5968
	add	x8, x19, x8
	str	x8, [sp, #2064]
	mov	w8, #6048
	add	x8, x19, x8
	str	x8, [sp, #2056]
	mov	w8, #6120
	add	x8, x19, x8
	str	x8, [sp, #2048]
	mov	w8, #6496
	add	x8, x19, x8
	str	x8, [sp, #2040]
	mov	w8, #6576
	add	x8, x19, x8
	str	x8, [sp, #2032]
	mov	w8, #6648
	add	x8, x19, x8
	str	x8, [sp, #2024]
	mov	w8, #7024
	add	x8, x19, x8
	str	x8, [sp, #2016]
	mov	w8, #7104
	add	x8, x19, x8
	str	x8, [sp, #2008]
	mov	w8, #7176
	add	x8, x19, x8
	str	x8, [sp, #2000]
	mov	w8, #4112
	add	x8, x19, x8
	str	x8, [sp, #1992]
	mov	w8, #4640
	add	x8, x19, x8
	str	x8, [sp, #1984]
	mov	w8, #5168
	add	x8, x19, x8
	str	x8, [sp, #1976]
	mov	w8, #5696
	add	x8, x19, x8
	str	x8, [sp, #1968]
	mov	w8, #6224
	add	x8, x19, x8
	str	x8, [sp, #1960]
	mov	w8, #6752
	add	x8, x19, x8
	str	x8, [sp, #1952]
	mov	w8, #7280
	add	x8, x19, x8
	str	x8, [sp, #1944]
	mov	w8, #7552
	add	x8, x19, x8
	str	x8, [sp, #1936]
	mov	w8, #4192
	add	x8, x19, x8
	str	x8, [sp, #1928]
	add	x8, x19, x21
	str	x8, [sp, #1920]
	add	x8, x19, x22
	str	x8, [sp, #1912]
	add	x8, x19, x23
	str	x8, [sp, #1904]
	add	x8, x19, x24
	str	x8, [sp, #1896]
	add	x8, x19, x25
	str	x8, [sp, #1888]
	add	x8, x19, x26
	str	x8, [sp, #1880]
	add	x8, x19, x27
	str	x8, [sp, #1872]
	add	x8, x19, x28
	str	x8, [sp, #1864]
	mov	w8, #4800
	add	x8, x19, x8
	str	x8, [sp, #1856]
	mov	w8, #5328
	add	x8, x19, x8
	str	x8, [sp, #1848]
	mov	w8, #5856
	add	x8, x19, x8
	str	x8, [sp, #1840]
	mov	w8, #6384
	add	x8, x19, x8
	str	x8, [sp, #1832]
	mov	w8, #6912
	add	x8, x19, x8
	str	x8, [sp, #1824]
	mov	w8, #7440
	add	x8, x19, x8
	str	x8, [sp, #1816]
	mov	w8, #7704
	add	x8, x19, x8
	str	x8, [sp, #1808]
	mov	w8, #4328
	add	x8, x19, x8
	str	x8, [sp, #1800]
	mov	w8, #4856
	add	x8, x19, x8
	str	x8, [sp, #1792]
	mov	w8, #5384
	add	x8, x19, x8
	str	x8, [sp, #1784]
	mov	w8, #5912
	add	x8, x19, x8
	str	x8, [sp, #1776]
	mov	w8, #6440
	add	x8, x19, x8
	str	x8, [sp, #1768]
	mov	w8, #6968
	add	x8, x19, x8
	str	x8, [sp, #1760]
	mov	w8, #7496
	add	x8, x19, x8
	str	x8, [sp, #1752]
	mov	w8, #7752
	add	x8, x19, x8
	str	x8, [sp, #1744]
	fcvt	d10, s10
	fmul	d1, d0, d1
	add	x8, sp, #1, lsl #12
	add	x8, x8, #1840
	add	x8, x8, #32
	str	x8, [sp, #2184]
	add	x20, sp, #1, lsl #12
	add	x20, x20, #2384
	add	x21, sp, #1, lsl #12
	add	x21, x21, #2960
	add	x22, sp, #1, lsl #12
	add	x22, x22, #3248
	add	x23, sp, #1, lsl #12
	add	x23, x23, #3536
	add	x24, sp, #1, lsl #12
	add	x24, x24, #3824
	add	x25, sp, #2, lsl #12
	add	x25, x25, #16
	add	x26, sp, #2, lsl #12
	add	x26, x26, #560
	add	x27, sp, #2, lsl #12
	add	x27, x27, #848
	add	x28, sp, #2, lsl #12
	add	x28, x28, #1136
	fmov	d0, #2.00000000
	bl	"_std::math::math::pow[::Powable]($0,$0),T=[typevalue<#kgen.instref<\"std::builtin::simd::SIMD,dtype=f64,size=1\">>, scalar<f64>]"
	mov	x8, #140737488355328
	movk	x8, #16507, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	fmov	d13, #1.00000000
	fsub	d1, d13, d12
	ldr	s2, [x19, #232]
	fcvt	d2, s2
	mov	x8, #43520
	movk	x8, #54001, lsl #16
	movk	x8, #25165, lsl #32
	movk	x8, #16208, lsl #48
	fmov	d3, x8
	ldr	s4, [x19, #272]
	fcvtzs	w8, s4
	str	w8, [sp, #2180]
	ldr	s4, [x19, #592]
	fcvt	d4, s4
	mov	x8, #43516
	movk	x8, #54001, lsl #16
	movk	x8, #25165, lsl #32
	movk	x8, #16208, lsl #48
	fmov	d5, x8
	fmul	d5, d4, d5
	fcmp	d5, #0.0
	b.le	LBB0_4
	ldr	d5, [x19, #600]
	fneg	d5, d5
	fdiv	d4, d5, d4
	mov	x8, #8913
	movk	x8, #63963, lsl #16
	movk	x8, #11134, lsl #32
	movk	x8, #16518, lsl #48
	fmov	d5, x8
	fminnm	d4, d4, d5
	mov	x8, #22293
	movk	x8, #13978, lsl #16
	movk	x8, #11133, lsl #32
	movk	x8, #49286, lsl #48
	fmov	d5, x8
	fmaxnm	d4, d4, d5
	mov	x8, #33534
	movk	x8, #25899, lsl #16
	movk	x8, #5447, lsl #32
	movk	x8, #16375, lsl #48
	fmov	d5, x8
	fmov	d6, #0.50000000
	fmadd	d5, d4, d5, d6
	frintm	d7, d5
	mov	x8, #12288
	movk	x8, #65274, lsl #16
	movk	x8, #11842, lsl #32
	movk	x8, #49126, lsl #48
	fmov	d16, x8
	fmadd	d7, d7, d16, d4
	mov	x8, #17636
	movk	x8, #26613, lsl #16
	movk	x8, #58949, lsl #32
	movk	x8, #15962, lsl #48
	fmov	d16, x8
	mov	x8, #55448
	movk	x8, #61432, lsl #16
	movk	x8, #61144, lsl #32
	movk	x8, #15905, lsl #48
	fmov	d17, x8
	fmadd	d16, d7, d17, d16
	mov	x8, #40796
	movk	x8, #46968, lsl #16
	movk	x8, #32335, lsl #32
	movk	x8, #16018, lsl #48
	fmov	d17, x8
	fmadd	d16, d16, d7, d17
	mov	x8, #50996
	movk	x8, #42326, lsl #16
	movk	x8, #7651, lsl #32
	movk	x8, #16071, lsl #48
	fmov	d17, x8
	fmadd	d16, d16, d7, d17
	mov	x8, #40986
	movk	x8, #6657, lsl #16
	movk	x8, #416, lsl #32
	movk	x8, #16122, lsl #48
	fmov	d17, x8
	fmadd	d16, d16, d7, d17
	mov	x8, #40986
	movk	x8, #6657, lsl #16
	movk	x8, #416, lsl #32
	movk	x8, #16170, lsl #48
	fmov	d17, x8
	fmadd	d16, d16, d7, d17
	mov	x8, #27671
	movk	x8, #5825, lsl #16
	movk	x8, #49516, lsl #32
	movk	x8, #16214, lsl #48
	fmov	d17, x8
	fmadd	d16, d16, d7, d17
	mov	x8, #1229782938247303441
	movk	x8, #16257, lsl #48
	fmov	d17, x8
	fmadd	d16, d16, d7, d17
	mov	x8, #6148914691236517205
	movk	x8, #16293, lsl #48
	fmov	d17, x8
	fmadd	d16, d16, d7, d17
	mov	x8, #6148914691236517205
	movk	x8, #16325, lsl #48
	fmov	d17, x8
	fmadd	d16, d16, d7, d17
	fmadd	d6, d16, d7, d6
	fmadd	d6, d6, d7, d13
	fcvtms	x8, d5
	fmadd	d5, d6, d7, d13
	mov	x9, #4607182418800017408
	add	x8, x9, x8, lsl #52
	fmov	d6, x8
	fmul	d5, d5, d6
	fmaxnm	d11, d5, d4
LBB0_4:
	add	x12, x20, #32
	str	xzr, [sp, #2368]
	mov	x8, #34603
	movk	x8, #55574, lsl #16
	movk	x8, #63438, lsl #32
	movk	x8, #16367, lsl #48
	fmov	d14, x8
	mov	x8, #24099
	movk	x8, #48044, lsl #16
	movk	x8, #27569, lsl #32
	movk	x8, #16386, lsl #48
	fmov	d15, x8
	mov	x8, #8913
	movk	x8, #63963, lsl #16
	movk	x8, #11134, lsl #32
	movk	x8, #16518, lsl #48
	str	x8, [sp, #1720]
	mov	x8, #22293
	movk	x8, #13978, lsl #16
	movk	x8, #11133, lsl #32
	movk	x8, #49286, lsl #48
	str	x8, [sp, #1712]
	mov	x8, #33534
	movk	x8, #25899, lsl #16
	movk	x8, #5447, lsl #32
	movk	x8, #16375, lsl #48
	str	x8, [sp, #1704]
	mov	x8, #12288
	movk	x8, #65274, lsl #16
	movk	x8, #11842, lsl #32
	movk	x8, #49126, lsl #48
	fmov	d4, x8
	mov	x8, #17636
	movk	x8, #26613, lsl #16
	movk	x8, #58949, lsl #32
	movk	x8, #15962, lsl #48
	fmov	d5, x8
	mov	x8, #55448
	movk	x8, #61432, lsl #16
	movk	x8, #61144, lsl #32
	movk	x8, #15905, lsl #48
	fmov	d6, x8
	mov	x8, #40796
	movk	x8, #46968, lsl #16
	movk	x8, #32335, lsl #32
	movk	x8, #16018, lsl #48
	fmov	d7, x8
	mov	x8, #50996
	movk	x8, #42326, lsl #16
	movk	x8, #7651, lsl #32
	movk	x8, #16071, lsl #48
	fmov	d16, x8
	mov	x8, #40986
	movk	x8, #6657, lsl #16
	movk	x8, #416, lsl #32
	movk	x8, #16122, lsl #48
	fmov	d17, x8
	mov	x8, #40986
	movk	x8, #6657, lsl #16
	movk	x8, #416, lsl #32
	movk	x8, #16170, lsl #48
	fmov	d18, x8
	mov	x8, #27671
	movk	x8, #5825, lsl #16
	movk	x8, #49516, lsl #32
	movk	x8, #16214, lsl #48
	fmov	d19, x8
	mov	x8, #1229782938247303441
	movk	x8, #16257, lsl #48
	fmov	d20, x8
	add	x8, sp, #1, lsl #12
	add	x8, x8, #2672
	add	x8, x8, #32
	str	x8, [sp, #1624]
	add	x8, x21, #32
	str	x8, [sp, #1616]
	add	x8, x22, #32
	str	x8, [sp, #1608]
	add	x13, x23, #32
	add	x14, x24, #32
	add	x15, x25, #32
	add	x8, x26, #32
	str	x8, [sp, #1576]
	add	x16, x27, #32
	add	x8, x28, #32
	str	x8, [sp, #1560]
	add	x8, sp, #2, lsl #12
	add	x8, x8, #1424
	add	x8, x8, #32
	str	x8, [sp, #1552]
	add	x8, sp, #2, lsl #12
	add	x8, x8, #1712
	add	x17, x8, #32
	add	x8, sp, #2, lsl #12
	add	x8, x8, #2000
	add	x0, x8, #32
	add	x8, sp, #2, lsl #12
	add	x8, x8, #2288
	add	x8, x8, #32
	str	x8, [sp, #1528]
	add	x8, sp, #2, lsl #12
	add	x8, x8, #2832
	add	x8, x8, #32
	str	x8, [sp, #1520]
	add	x8, sp, #2, lsl #12
	add	x8, x8, #3120
	add	x8, x8, #32
	str	x8, [sp, #1512]
	add	x8, sp, #2, lsl #12
	add	x8, x8, #3408
	add	x8, x8, #32
	str	x8, [sp, #1504]
	add	x8, sp, #2, lsl #12
	add	x8, x8, #3696
	add	x8, x8, #32
	str	x8, [sp, #1496]
	add	x8, sp, #2, lsl #12
	add	x8, x8, #3984
	add	x8, x8, #32
	str	x8, [sp, #1488]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #176
	add	x1, x8, #32
	add	x8, sp, #3, lsl #12
	add	x8, x8, #464
	add	x8, x8, #32
	str	x8, [sp, #1472]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #1008
	add	x8, x8, #32
	str	x8, [sp, #1464]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #1296
	add	x8, x8, #32
	str	x8, [sp, #1456]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #1584
	add	x8, x8, #32
	str	x8, [sp, #1448]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #1872
	add	x8, x8, #32
	str	x8, [sp, #1440]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #2160
	add	x8, x8, #32
	str	x8, [sp, #1432]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #2448
	add	x2, x8, #32
	add	x8, sp, #3, lsl #12
	add	x8, x8, #2736
	add	x8, x8, #32
	str	x8, [sp, #1416]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #3280
	add	x8, x8, #32
	str	x8, [sp, #1408]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #3568
	add	x8, x8, #32
	str	x8, [sp, #1400]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #3856
	add	x8, x8, #32
	str	x8, [sp, #1392]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #48
	add	x8, x8, #32
	str	x8, [sp, #1384]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #336
	add	x8, x8, #32
	str	x8, [sp, #1376]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #624
	add	x3, x8, #32
	add	x8, sp, #4, lsl #12
	add	x8, x8, #912
	add	x8, x8, #32
	str	x8, [sp, #1360]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #1456
	add	x8, x8, #32
	str	x8, [sp, #1352]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #1744
	add	x8, x8, #32
	str	x8, [sp, #1344]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #2032
	add	x8, x8, #32
	str	x8, [sp, #1336]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #2320
	add	x8, x8, #32
	str	x8, [sp, #1328]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #2608
	add	x8, x8, #32
	str	x8, [sp, #1320]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #2896
	add	x4, x8, #32
	add	x8, sp, #4, lsl #12
	add	x8, x8, #3184
	add	x8, x8, #32
	str	x8, [sp, #1304]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #3728
	add	x8, x8, #32
	str	x8, [sp, #1296]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #4016
	add	x8, x8, #32
	str	x8, [sp, #1288]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #208
	add	x8, x8, #32
	str	x8, [sp, #1280]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #496
	add	x8, x8, #32
	str	x8, [sp, #1272]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #784
	add	x8, x8, #32
	str	x8, [sp, #1264]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #1072
	add	x5, x8, #32
	add	x8, sp, #5, lsl #12
	add	x8, x8, #1360
	add	x8, x8, #32
	str	x8, [sp, #1248]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #1904
	add	x8, x8, #32
	str	x8, [sp, #1240]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #2192
	add	x8, x8, #32
	str	x8, [sp, #1232]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #2480
	add	x8, x8, #32
	str	x8, [sp, #1224]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #2768
	add	x8, x8, #32
	str	x8, [sp, #1216]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #3056
	add	x8, x8, #32
	str	x8, [sp, #1208]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #3344
	add	x6, x8, #32
	add	x8, sp, #5, lsl #12
	add	x8, x8, #3632
	add	x8, x8, #32
	str	x8, [sp, #1192]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #80
	add	x8, x8, #32
	str	x8, [sp, #1184]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #368
	add	x8, x8, #32
	str	x8, [sp, #1176]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #656
	add	x8, x8, #32
	str	x8, [sp, #1168]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #944
	add	x8, x8, #32
	str	x8, [sp, #1160]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #1232
	add	x8, x8, #32
	str	x8, [sp, #1152]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #1520
	add	x7, x8, #32
	add	x8, sp, #6, lsl #12
	add	x8, x8, #1808
	add	x8, x8, #32
	str	x8, [sp, #1136]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #2352
	add	x8, x8, #32
	str	x8, [sp, #1128]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #2640
	add	x8, x8, #32
	str	x8, [sp, #1120]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #2928
	add	x8, x8, #32
	str	x8, [sp, #1112]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #3216
	add	x8, x8, #32
	str	x8, [sp, #1104]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #3504
	add	x8, x8, #32
	str	x8, [sp, #1096]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #3792
	add	x30, x8, #32
	add	x8, sp, #6, lsl #12
	add	x8, x8, #4080
	add	x8, x8, #32
	str	x8, [sp, #1080]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #528
	add	x8, x8, #32
	str	x8, [sp, #1072]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #816
	add	x8, x8, #32
	str	x8, [sp, #1064]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #1104
	add	x8, x8, #32
	str	x8, [sp, #1056]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #1392
	add	x8, x8, #32
	str	x8, [sp, #1048]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #1680
	add	x8, x8, #32
	str	x8, [sp, #1040]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #1968
	add	x8, x8, #32
	str	x8, [sp, #2416]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #2256
	add	x8, x8, #32
	str	x8, [sp, #1032]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #2800
	add	x8, x8, #32
	str	x8, [sp, #1024]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #3088
	add	x8, x8, #32
	str	x8, [sp, #1016]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #3376
	add	x8, x8, #32
	str	x8, [sp, #1008]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #3664
	add	x8, x8, #32
	str	x8, [sp, #1000]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #3952
	add	x8, x8, #32
	str	x8, [sp, #992]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #144
	add	x8, x8, #32
	str	x8, [sp, #2408]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #432
	add	x8, x8, #32
	str	x8, [sp, #2488]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #976
	add	x8, x8, #32
	str	x8, [sp, #2400]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #1264
	add	x8, x8, #32
	str	x8, [sp, #984]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #1552
	add	x8, x8, #32
	str	x8, [sp, #976]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #1840
	add	x8, x8, #32
	str	x8, [sp, #968]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #2128
	add	x8, x8, #32
	str	x8, [sp, #960]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #2416
	add	x26, x8, #32
	add	x8, sp, #8, lsl #12
	add	x8, x8, #2704
	add	x8, x8, #32
	str	x8, [sp, #952]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #3536
	add	x21, x8, #32
	add	x8, sp, #8, lsl #12
	add	x8, x8, #3824
	add	x22, x8, #32
	add	x8, sp, #9, lsl #12
	add	x8, x8, #16
	add	x8, x8, #32
	str	x8, [sp, #944]
	add	x8, sp, #9, lsl #12
	add	x8, x8, #304
	add	x8, x8, #32
	str	x8, [sp, #2392]
	add	x8, sp, #9, lsl #12
	add	x8, x8, #592
	add	x25, x8, #32
	add	x8, sp, #9, lsl #12
	add	x8, x8, #880
	add	x24, x8, #32
	add	x8, sp, #9, lsl #12
	add	x8, x8, #1168
	add	x20, x8, #32
	fmul	d21, d10, d9
	str	d21, [sp, #928]
	fmul	d21, d8, d9
	str	d21, [sp, #920]
	fmul	d21, d1, d0
	fmul	d1, d2, d3
	fsub	d0, d13, d11
	str	d0, [sp, #896]
	ldr	s0, [x19, #7784]
	fcvt	d0, s0
	ldr	w8, [sp, #2180]
	cmp	w8, #0
	str	q0, [sp, #2448]
	dup.2d	v0, v0[0]
	str	q0, [sp, #2432]
	add	x8, sp, #1, lsl #12
	add	x8, x8, #320
	add	x8, x8, #12
	str	x8, [sp, #888]
	add	x8, sp, #2496
	add	x8, x8, #32
	str	x8, [sp, #2472]
	add	x8, sp, #2784
	add	x8, x8, #32
	str	x8, [sp, #2384]
	add	x8, sp, #3072
	add	x10, x8, #32
	add	x8, sp, #1, lsl #12
	add	x8, x8, #32
	add	x8, x8, #32
	str	x8, [sp, #2376]
	add	x8, sp, #1, lsl #12
	add	x8, x8, #320
	add	x8, x8, #16
	str	x8, [sp, #880]
	add	x8, sp, #1, lsl #12
	add	x8, x8, #464
	add	x11, x8, #32
	add	x8, sp, #1, lsl #12
	add	x8, x8, #752
	add	x8, x8, #32
	str	x8, [sp, #864]
	add	x8, sp, #1, lsl #12
	add	x8, x8, #1552
	add	x8, x8, #32
	str	x8, [sp, #856]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #3248
	add	x8, x8, #32
	str	x8, [sp, #848]
	add	x9, sp, #1, lsl #12
	add	x9, x9, #1040
	ldr	x8, [sp, #2184]
	csel	x8, x8, x9, eq
	str	x8, [sp, #840]
	add	x8, sp, #1, lsl #12
	add	x8, x8, #3536
	add	x8, x8, #256
	str	x8, [sp, #832]
	add	x8, sp, #1, lsl #12
	add	x8, x8, #3824
	add	x8, x8, #256
	str	x8, [sp, #824]
	add	x8, sp, #2, lsl #12
	add	x8, x8, #16
	add	x8, x8, #256
	str	x8, [sp, #816]
	add	x8, sp, #2, lsl #12
	add	x8, x8, #1712
	add	x8, x8, #256
	str	x8, [sp, #808]
	add	x8, sp, #2, lsl #12
	add	x8, x8, #2000
	add	x8, x8, #256
	str	x8, [sp, #800]
	add	x8, sp, #2, lsl #12
	add	x8, x8, #2288
	add	x8, x8, #256
	str	x8, [sp, #792]
	add	x8, sp, #2, lsl #12
	add	x8, x8, #3984
	add	x8, x8, #256
	str	x8, [sp, #784]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #176
	add	x8, x8, #256
	str	x8, [sp, #776]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #464
	add	x8, x8, #256
	str	x8, [sp, #768]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #2160
	add	x8, x8, #256
	str	x8, [sp, #760]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #2448
	add	x8, x8, #256
	str	x8, [sp, #752]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #2736
	add	x8, x8, #256
	str	x8, [sp, #744]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #336
	add	x8, x8, #256
	str	x8, [sp, #736]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #624
	add	x8, x8, #256
	str	x8, [sp, #728]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #912
	add	x8, x8, #256
	str	x8, [sp, #720]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #2608
	add	x8, x8, #256
	str	x8, [sp, #712]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #2896
	add	x8, x8, #256
	str	x8, [sp, #704]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #3184
	add	x8, x8, #256
	str	x8, [sp, #696]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #784
	add	x8, x8, #256
	str	x8, [sp, #688]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #1072
	add	x8, x8, #256
	str	x8, [sp, #680]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #1360
	add	x8, x8, #256
	str	x8, [sp, #672]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #3056
	add	x8, x8, #256
	str	x8, [sp, #664]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #3344
	add	x8, x8, #256
	str	x8, [sp, #656]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #3632
	add	x8, x8, #256
	str	x8, [sp, #648]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #1232
	add	x8, x8, #256
	str	x8, [sp, #640]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #1520
	add	x8, x8, #256
	str	x8, [sp, #632]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #1808
	add	x8, x8, #256
	str	x8, [sp, #624]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #3504
	add	x8, x8, #256
	str	x8, [sp, #616]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #3792
	add	x8, x8, #256
	str	x8, [sp, #608]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #4080
	add	x8, x8, #256
	str	x8, [sp, #600]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #1680
	add	x8, x8, #256
	str	x8, [sp, #592]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #1968
	add	x8, x8, #256
	str	x8, [sp, #584]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #2256
	add	x8, x8, #256
	str	x8, [sp, #576]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #3952
	add	x8, x8, #256
	str	x8, [sp, #568]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #144
	add	x8, x8, #256
	str	x8, [sp, #560]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #432
	add	x8, x8, #256
	str	x8, [sp, #552]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #2128
	add	x8, x8, #256
	str	x8, [sp, #544]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #2416
	add	x8, x8, #256
	str	x8, [sp, #536]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #2704
	add	x8, x8, #256
	str	x8, [sp, #528]
	add	x8, sp, #1, lsl #12
	add	x8, x8, #2384
	add	x8, x8, #256
	str	x8, [sp, #520]
	add	x8, sp, #2, lsl #12
	add	x8, x8, #560
	add	x9, x8, #256
	add	x8, sp, #2, lsl #12
	add	x8, x8, #2832
	add	x8, x8, #256
	stp	x8, x9, [sp, #504]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #1008
	add	x9, x8, #256
	add	x8, sp, #3, lsl #12
	add	x8, x8, #3280
	add	x8, x8, #256
	stp	x8, x9, [sp, #488]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #1456
	add	x9, x8, #256
	add	x8, sp, #4, lsl #12
	add	x8, x8, #3728
	add	x8, x8, #256
	stp	x8, x9, [sp, #472]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #1904
	add	x9, x8, #256
	add	x8, sp, #6, lsl #12
	add	x8, x8, #80
	add	x8, x8, #256
	stp	x8, x9, [sp, #456]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #2352
	add	x9, x8, #256
	add	x8, sp, #7, lsl #12
	add	x8, x8, #528
	add	x8, x8, #256
	stp	x8, x9, [sp, #440]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #2800
	add	x9, x8, #256
	add	x8, sp, #8, lsl #12
	add	x8, x8, #976
	add	x8, x8, #256
	stp	x8, x9, [sp, #424]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #3248
	add	x9, x8, #256
	add	x8, sp, #9, lsl #12
	add	x8, x8, #304
	add	x8, x8, #256
	stp	x8, x9, [sp, #408]
	add	x8, sp, #1, lsl #12
	add	x8, x8, #2672
	add	x9, x8, #256
	add	x8, sp, #2, lsl #12
	add	x8, x8, #848
	add	x8, x8, #256
	stp	x8, x9, [sp, #392]
	add	x8, sp, #2, lsl #12
	add	x8, x8, #3120
	add	x9, x8, #256
	add	x8, sp, #3, lsl #12
	add	x8, x8, #1296
	add	x8, x8, #256
	stp	x8, x9, [sp, #376]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #3568
	add	x9, x8, #256
	add	x8, sp, #4, lsl #12
	add	x8, x8, #1744
	add	x8, x8, #256
	stp	x8, x9, [sp, #360]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #4016
	add	x9, x8, #256
	add	x8, sp, #5, lsl #12
	add	x8, x8, #2192
	add	x8, x8, #256
	stp	x8, x9, [sp, #344]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #368
	add	x9, x8, #256
	add	x8, sp, #6, lsl #12
	add	x8, x8, #2640
	add	x8, x8, #256
	stp	x8, x9, [sp, #328]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #816
	add	x9, x8, #256
	add	x8, sp, #7, lsl #12
	add	x8, x8, #3088
	add	x8, x8, #256
	stp	x8, x9, [sp, #312]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #1264
	add	x9, x8, #256
	add	x8, sp, #8, lsl #12
	add	x8, x8, #3536
	add	x8, x8, #256
	stp	x8, x9, [sp, #296]
	add	x8, sp, #9, lsl #12
	add	x8, x8, #592
	add	x9, x8, #256
	add	x8, sp, #1, lsl #12
	add	x8, x8, #2960
	add	x8, x8, #256
	stp	x8, x9, [sp, #280]
	add	x8, sp, #2, lsl #12
	add	x8, x8, #1136
	add	x9, x8, #256
	add	x8, sp, #2, lsl #12
	add	x8, x8, #3408
	add	x8, x8, #256
	stp	x8, x9, [sp, #264]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #1584
	add	x9, x8, #256
	add	x8, sp, #3, lsl #12
	add	x8, x8, #3856
	add	x8, x8, #256
	stp	x8, x9, [sp, #248]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #2032
	add	x9, x8, #256
	add	x8, sp, #5, lsl #12
	add	x8, x8, #208
	add	x8, x8, #256
	stp	x8, x9, [sp, #232]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #2480
	add	x9, x8, #256
	add	x8, sp, #6, lsl #12
	add	x8, x8, #656
	add	x8, x8, #256
	stp	x8, x9, [sp, #216]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #2928
	add	x9, x8, #256
	add	x8, sp, #7, lsl #12
	add	x8, x8, #1104
	add	x8, x8, #256
	stp	x8, x9, [sp, #200]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #3376
	add	x9, x8, #256
	add	x8, sp, #8, lsl #12
	add	x8, x8, #1552
	add	x8, x8, #256
	stp	x8, x9, [sp, #184]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #3824
	add	x9, x8, #256
	add	x8, sp, #9, lsl #12
	add	x8, x8, #880
	add	x8, x8, #256
	stp	x8, x9, [sp, #168]
	add	x8, sp, #1, lsl #12
	add	x8, x8, #3248
	add	x9, x8, #256
	add	x8, sp, #2, lsl #12
	add	x8, x8, #1424
	add	x8, x8, #256
	stp	x8, x9, [sp, #152]
	add	x8, sp, #2, lsl #12
	add	x8, x8, #3696
	add	x9, x8, #256
	add	x8, sp, #3, lsl #12
	add	x8, x8, #1872
	add	x8, x8, #256
	stp	x8, x9, [sp, #136]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #48
	add	x9, x8, #256
	add	x8, sp, #4, lsl #12
	add	x8, x8, #2320
	add	x8, x8, #256
	stp	x8, x9, [sp, #120]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #496
	add	x9, x8, #256
	add	x8, sp, #5, lsl #12
	add	x8, x8, #2768
	add	x8, x8, #256
	stp	x8, x9, [sp, #104]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #944
	add	x9, x8, #256
	add	x8, sp, #6, lsl #12
	add	x8, x8, #3216
	add	x8, x8, #256
	stp	x8, x9, [sp, #88]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #1392
	add	x9, x8, #256
	add	x8, sp, #7, lsl #12
	add	x8, x8, #3664
	add	x8, x8, #256
	stp	x8, x9, [sp, #72]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #1840
	add	x9, x8, #256
	add	x8, sp, #9, lsl #12
	add	x8, x8, #16
	add	x8, x8, #256
	stp	x8, x9, [sp, #56]
	add	x8, sp, #9, lsl #12
	add	x8, x8, #1168
	add	x8, x8, #256
	str	x8, [sp, #48]
	mov	x27, #-4294967296
	mov	x28, #4294967296
	mov	x23, #-8589934592
	mov	w9, #1
	str	d11, [sp, #2152]
	str	d12, [sp, #2144]
	str	x12, [sp, #2424]
	str	d14, [sp, #1736]
	str	d15, [sp, #1728]
	str	d4, [sp, #1696]
	str	d5, [sp, #1688]
	str	d6, [sp, #1680]
	str	d7, [sp, #1672]
	str	d16, [sp, #1664]
	str	d17, [sp, #1656]
	str	d18, [sp, #1648]
	str	d19, [sp, #1640]
	str	d20, [sp, #1632]
	str	x13, [sp, #1600]
	str	x14, [sp, #1592]
	str	x15, [sp, #1584]
	str	x16, [sp, #1568]
	str	x17, [sp, #1544]
	str	x0, [sp, #1536]
	str	x1, [sp, #1480]
	str	x2, [sp, #1424]
	str	x3, [sp, #1368]
	str	x4, [sp, #1312]
	str	x5, [sp, #1256]
	str	x6, [sp, #1200]
	str	x7, [sp, #1144]
	str	x30, [sp, #1088]
	str	x20, [sp, #936]
	str	d21, [sp, #912]
	str	d1, [sp, #904]
	str	x10, [sp, #2480]
	str	x11, [sp, #872]
	stp	x21, x26, [sp, #32]
	stp	x25, x22, [sp, #16]
LBB0_5:
	mov	x8, #0
	str	w9, [sp, #2364]
	ldp	q0, q1, [x19, #112]
	str	q0, [sp, #3072]
	str	q1, [sp, #3088]
LBB0_6:
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	x11, [sp, #2480]
	ldr	d0, [x11, x10]
	ldr	x10, [sp, #2480]
	fmadd	d0, d12, d0, d21
	str	d0, [x10, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_6
	mov	x8, #0
	add	x9, sp, #3072
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x19, #112]
	ldr	d0, [x19, #144]
	ldr	d8, [sp, #1720]
	ldr	d9, [sp, #1712]
	ldr	d10, [sp, #1704]
	add	x9, sp, #3360
LBB0_8:
	ldr	d1, [x10, x8]
	fmul	d1, d0, d1
	str	d1, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #256
	b.ne	LBB0_8
	mov	x20, #0
	add	x21, sp, #3616
LBB0_10:
	ldr	d0, [x9, x20]
	bl	_sin
	add	x9, sp, #3360
	str	d0, [x21, x20]
	add	x20, x20, #8
	cmp	x20, #256
	b.ne	LBB0_10
	mov	x20, #0
	add	x21, sp, #3360
	add	x25, sp, #3872
LBB0_12:
	ldr	d0, [x21, x20]
	bl	_cos
	str	d0, [x25, x20]
	add	x20, x20, #8
	cmp	x20, #256
	b.ne	LBB0_12
	mov	x8, #0
	ldur	q0, [x19, #184]
	str	q0, [sp, #4416]
	ldr	x9, [sp, #880]
	mov	w10, #1
LBB0_14:
	str	w10, [x9, x8, lsl #2]
	add	w8, w8, #1
	sxtw	x8, w8
	cmp	x8, #32
	b.lt	LBB0_14
	mov	x8, #0
	add	x9, sp, #1, lsl #12
	add	x9, x9, #320
	ldur	q0, [x9, #128]
	stur	q0, [x19, #184]
	ldp	q0, q1, [x19, #48]
	str	q0, [sp, #2784]
	str	q1, [sp, #2800]
	ldr	x13, [sp, #2128]
	ldr	x11, [sp, #2184]
	ldr	w14, [sp, #2180]
	ldr	d1, [sp, #920]
	ldr	x12, [sp, #888]
	ldr	x15, [sp, #2384]
	ldr	x21, [sp, #32]
LBB0_16:
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d0, [x15, x10]
	fmadd	d0, d0, d14, d1
	str	d0, [x15, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_16
	mov	x8, #0
	add	x9, sp, #2784
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x19, #48]
	ldur	q0, [x19, #168]
	ldur	q1, [x19, #152]
	str	q0, [sp, #4144]
	str	q1, [sp, #4128]
	ldur	q0, [x19, #216]
	ldur	q1, [x19, #200]
	str	q0, [sp, #4576]
	str	q1, [sp, #4560]
	ldr	x9, [sp, #2368]
	lsl	x9, x9, #2
	ldr	x10, [sp, #2168]
	add	x10, x10, x9
	str	x10, [sp, #2352]
	ldr	x10, [sp, #2160]
	add	x9, x10, x9
	str	x9, [sp, #2368]
	ldr	d0, [sp, #4584]
	ldr	d1, [sp, #4152]
	ldr	d6, [sp, #1688]
	ldr	d7, [sp, #1680]
	ldr	d16, [sp, #1672]
	ldr	d17, [sp, #1664]
	ldr	d18, [sp, #1656]
	ldr	d19, [sp, #1648]
	ldr	d20, [sp, #1640]
	ldr	d21, [sp, #1632]
	ldr	x15, [sp, #1600]
	ldr	x16, [sp, #1592]
	ldr	x17, [sp, #1544]
	ldr	x0, [sp, #1536]
	ldr	x1, [sp, #1480]
	ldr	x2, [sp, #1424]
	ldr	x3, [sp, #1368]
	ldr	x4, [sp, #1312]
	ldr	x5, [sp, #1256]
	ldr	x6, [sp, #1200]
	ldr	x7, [sp, #1144]
	ldr	x30, [sp, #1088]
	movi.2d	v22, #0000000000000000
	fmov	d23, #-1.00000000
	fmov	d24, #0.50000000
	ldr	x10, [sp, #2376]
	ldr	x20, [sp, #872]
	mov	w26, #1
	add	x22, sp, #3616
	add	x25, sp, #3872
LBB0_18:
	ldr	d2, [x22, x8, lsl #3]
	ldr	d3, [x25, x8, lsl #3]
	fmul	d4, d1, d3
	fmadd	d4, d0, d2, d4
	str	d4, [x10, x8, lsl #3]
	ldr	w9, [x12, x8, lsl #2]
	sub	w9, w26, w9
	scvtf	d5, w9
	fmadd	d0, d0, d3, d5
	fmsub	d0, d2, d1, d0
	str	d0, [x20, x8, lsl #3]
	add	x8, x8, #1
	mov.16b	v1, v4
	cmp	x8, #32
	b.ne	LBB0_18
	mov	x8, #0
	add	x9, sp, #1, lsl #12
	add	x9, x9, #32
	ldp	q0, q1, [x9, #256]
	stur	q0, [x19, #152]
	stur	q1, [x19, #168]
	add	x9, sp, #1, lsl #12
	add	x9, x9, #464
	ldp	q0, q1, [x9, #256]
	stur	q0, [x19, #200]
	stur	q1, [x19, #216]
	ldur	q0, [x19, #8]
	ldur	q1, [x19, #24]
	str	q0, [sp, #2496]
	str	q1, [sp, #2512]
	ldr	d1, [sp, #928]
	ldr	x12, [sp, #2472]
LBB0_20:
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d0, [x12, x10]
	fmadd	d0, d0, d14, d1
	str	d0, [x12, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_20
	mov	x8, #0
	add	x9, sp, #2496
	ldp	q0, q1, [x9, #256]
	stur	q0, [x19, #8]
	stur	q1, [x19, #24]
	ldp	q0, q1, [x19, #240]
	str	q0, [sp, #4848]
	str	q1, [sp, #4864]
	ldr	d5, [sp, #1696]
	ldr	d1, [sp, #904]
	add	x22, x19, #872
	ldr	x20, [sp, #864]
	ldr	x25, [sp, #16]
LBB0_22:
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d0, [x20, x10]
	fmadd	d0, d0, d14, d1
	str	d0, [x20, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_22
	mov	x8, #0
	add	x9, sp, #1, lsl #12
	add	x9, x9, #752
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x19, #240]
	ldr	x9, [sp, #2384]
	ldr	x10, [sp, #2376]
	add	x12, sp, #1, lsl #12
	add	x12, x12, #1040
LBB0_24:
	ldr	d0, [x9, x8]
	ldr	d1, [x10, x8]
	fmul	d0, d0, d1
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #256
	b.ne	LBB0_24
	mov	x8, #0
	add	x9, sp, #1, lsl #12
	add	x9, x9, #1040
	mov	w12, #1075
	b	LBB0_28
LBB0_26:
	fmul	d1, d1, d15
	fminnm	d1, d1, d8
	fmaxnm	d1, d1, d9
	fmadd	d2, d1, d10, d24
	frintm	d3, d2
	fcvtms	x9, d2
	fmadd	d2, d3, d5, d1
	fmadd	d3, d2, d7, d6
	fmadd	d3, d3, d2, d16
	fmadd	d3, d3, d2, d17
	fmadd	d3, d3, d2, d18
	fmadd	d3, d3, d2, d19
	fmadd	d3, d3, d2, d20
	fmadd	d3, d3, d2, d21
	mov	x10, #6148914691236517205
	movk	x10, #16293, lsl #48
	fmov	d4, x10
	fmadd	d3, d3, d2, d4
	mov	x10, #6148914691236517205
	movk	x10, #16325, lsl #48
	fmov	d4, x10
	fmadd	d3, d3, d2, d4
	fmadd	d3, d3, d2, d24
	fmadd	d3, d3, d2, d13
	fmadd	d2, d3, d2, d13
	mov	x10, #4607182418800017408
	add	x9, x10, x9, lsl #52
	fmov	d3, x9
	fmul	d2, d2, d3
	fmaxnm	d1, d2, d1
	mov	x24, x21
LBB0_27:
	mov	x21, x26
	ldr	x9, [sp, #2472]
	ldr	d2, [x9, x8, lsl #3]
	fmadd	d0, d0, d1, d2
	fminnm	d0, d0, d13
	fmaxnm	d0, d0, d23
	add	x9, sp, #1, lsl #12
	add	x9, x9, #1296
	str	d0, [x9, x8, lsl #3]
	add	x8, x8, #1
	cmp	x8, #32
	add	x9, sp, #1, lsl #12
	add	x9, x9, #1040
	b.eq	LBB0_38
LBB0_28:
	mov	x26, x21
	mov	x21, x24
	movi.2d	v0, #0000000000000000
	cbnz	w14, LBB0_30
	ldr	d0, [x9, x8, lsl #3]
LBB0_30:
	ldr	d1, [x20, x8, lsl #3]
	fadd	d1, d1, d1
	fmov	x9, d1
	ubfx	x10, x9, #52, #11
	subs	x10, x12, x10
	mov	x24, #-1
	lsl	x10, x24, x10
	csinv	x10, x10, xzr, hi
	and	x9, x10, x9
	fmov	d2, x9
	fcmp	d1, #0.0
	fcsel	d3, d1, d22, eq
	.p2align	6, , 4
	fcmp	d1, d13
	fcsel	d2, d2, d3, pl
	fneg	d3, d1
	fmov	x9, d3
	subs	x10, x12, x9, lsr #52
	lsl	x10, x24, x10
	mov	x24, #9223372036854775807
	csel	x10, x10, x24, hi
	and	x9, x10, x9
	fmov	d3, x9
	.p2align	6, , 4
	fcmp	d1, d23
	fcsel	d3, d22, d3, gt
	fneg	d3, d3
	fcmp	d1, #0.0
	fcsel	d2, d2, d3, pl
	fcmp	d2, d1
	b.ne	LBB0_26
	fcvtzs	w9, d2
	cmp	w9, #0
	cneg	w10, w9, mi
	cmp	w10, #1
	b.lt	LBB0_36
	fmov	d2, #10.00000000
	fmov	d1, #1.00000000
	mov	x24, x21
LBB0_35:
	fmul	d3, d1, d2
	tst	w10, #0x1
	fcsel	d1, d1, d3, eq
	fmul	d2, d2, d2
	lsr	w10, w10, #1
	cbnz	w10, LBB0_35
	b	LBB0_37
LBB0_36:
	fmov	d1, #1.00000000
	mov	x24, x21
LBB0_37:
	fdiv	d2, d13, d1
	cmp	w9, #0
	fcsel	d1, d2, d1, mi
	b	LBB0_27
LBB0_38:
	mov	x8, #0
	add	x9, x19, #280
	ldp	q0, q1, [x9]
	str	q0, [sp, #5648]
	str	q1, [sp, #5664]
	ldr	x20, [sp, #856]
	add	x9, sp, #1, lsl #12
	add	x9, x9, #1296
	mov	x10, #6148914691236517205
	movk	x10, #49109, lsl #48
LBB0_39:
	ldr	d0, [x9, x8]
	fmul	d1, d0, d0
	fmov	d2, x10
	fmadd	d1, d1, d2, d13
	fmul	d0, d0, d1
	str	d0, [x20, x8]
	add	x8, x8, #8
	cmp	x8, #256
	b.ne	LBB0_39
	mov	x8, #0
	add	x9, sp, #1, lsl #12
	add	x9, x9, #1552
	ldp	q0, q1, [x9, #256]
	add	x9, x19, #280
	stp	q0, q1, [x9]
	add	x9, x19, #312
	ldp	q0, q1, [x9]
	str	q0, [sp, #5936]
	str	q1, [sp, #5952]
	ldr	x14, [sp, #1616]
	mov	x12, #41943
	movk	x12, #15728, lsl #16
	movk	x12, #55050, lsl #32
	movk	x12, #16367, lsl #48
LBB0_41:
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d0, [x11, x10]
	fmov	d1, x12
	ldr	d2, [x20, x8, lsl #3]
	fmadd	d0, d0, d1, d2
	ldr	d1, [x20, x10]
	fsub	d0, d0, d1
	str	d0, [x11, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_41
	mov	x8, #0
	add	x9, sp, #1, lsl #12
	add	x9, x9, #1840
	ldp	q0, q1, [x9, #256]
	add	x9, x19, #312
	stp	q0, q1, [x9]
	ldr	x9, [sp, #840]
	ldp	q0, q1, [x9, #192]
	str	q0, [sp, #6416]
	str	q1, [sp, #6432]
	ldp	q0, q1, [x9, #224]
	str	q0, [sp, #6448]
	str	q1, [sp, #6464]
	ldp	q0, q1, [x9, #128]
	str	q0, [sp, #6352]
	str	q1, [sp, #6368]
	ldp	q0, q1, [x9, #160]
	str	q0, [sp, #6384]
	str	q1, [sp, #6400]
	ldp	q0, q1, [x9, #64]
	str	q0, [sp, #6288]
	str	q1, [sp, #6304]
	ldp	q0, q1, [x9, #96]
	str	q0, [sp, #6320]
	str	q1, [sp, #6336]
	ldp	q0, q1, [x9]
	str	q0, [sp, #6224]
	str	q1, [sp, #6240]
	ldp	q0, q1, [x9, #32]
	str	q0, [sp, #6256]
	str	q1, [sp, #6272]
	add	x11, x19, #688
	add	x9, sp, #1, lsl #12
	add	x9, x9, #3536
LBB0_43:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_43
	ldr	d0, [x19, #664]
	ldr	d1, [x19, #680]
	ldr	d2, [x19, #672]
	add	x8, sp, #1, lsl #12
	add	x8, x8, #2128
	mov	x9, x15
	mov	w10, #32
	ldr	d3, [sp, #7656]
	ldr	x26, [sp, #40]
LBB0_45:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_45
	mov	x8, #0
	ldr	x9, [sp, #832]
LBB0_47:
	ldr	d1, [x9, x8]
	str	d1, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_47
	mov	x8, #0
	add	x9, x19, #768
	add	x10, sp, #1, lsl #12
	add	x10, x10, #3824
LBB0_49:
	ldr	d1, [x9, x8]
	str	d1, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_49
	mov	x8, #0
	ldr	d2, [x19, #728]
	ldr	d3, [x19, #736]
	ldr	d4, [x19, #752]
	ldr	d5, [x19, #760]
	ldr	d1, [x19, #744]
LBB0_51:
	ldr	d6, [x15, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x15, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x15, x11]
	ldr	d16, [x16, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x16, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d1, d7
	fnmsub	d6, d0, d6, d7
	str	d6, [x16, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_51
	mov	x8, #0
	add	x9, x19, #768
	ldr	x10, [sp, #824]
LBB0_53:
	ldr	d0, [x10, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_53
	mov	x8, #0
	ldr	x15, [sp, #1584]
	add	x9, x19, #840
	add	x10, sp, #2, lsl #12
	add	x10, x10, #16
LBB0_55:
	ldr	d0, [x9, x8]
	str	d0, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_55
	mov	x8, #0
	ldr	d2, [x19, #800]
	ldr	d3, [x19, #808]
	ldr	d4, [x19, #824]
	ldr	d5, [x19, #832]
	ldr	d0, [x19, #816]
LBB0_57:
	ldr	d6, [x16, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x16, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x16, x11]
	ldr	d16, [x15, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x15, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d0, d7
	fnmsub	d6, d1, d6, d7
	str	d6, [x15, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_57
	mov	x8, #0
	add	x9, x19, #840
	ldr	x10, [sp, #816]
LBB0_59:
	ldr	d1, [x10, x8]
	str	d1, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_59
	mov	x8, #0
	ldr	q1, [x22]
	mov	x9, x15
	ldr	x16, [sp, #1568]
	add	x11, x19, #1216
	add	x10, sp, #2, lsl #12
	add	x10, x10, #304
LBB0_61:
	ldr	d2, [x9]
	ldur	q3, [x9, #-16]
	fmul.2d	v3, v1, v3
	mov	d4, v3[1]
	fmadd	d2, d1, d2, d4
	fadd	d2, d2, d3
	fmul	d2, d0, d2
	str	d2, [x10, x8, lsl #3]
	add	x8, x8, #1
	add	x9, x9, #8
	cmp	x8, #32
	b.ne	LBB0_61
	mov	x8, #0
	ldr	x15, [sp, #1576]
	add	x9, sp, #2, lsl #12
	add	x9, x9, #1712
LBB0_63:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_63
	ldr	d0, [x19, #1192]
	ldr	d1, [x19, #1208]
	ldr	d2, [x19, #1200]
	add	x8, sp, #2, lsl #12
	add	x8, x8, #304
	mov	x9, x17
	mov	w10, #32
	ldr	d3, [sp, #9928]
LBB0_65:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_65
	mov	x8, #0
	ldr	x9, [sp, #808]
LBB0_67:
	ldr	d1, [x9, x8]
	str	d1, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_67
	mov	x8, #0
	add	x9, x19, #1296
	add	x10, sp, #2, lsl #12
	add	x10, x10, #2000
LBB0_69:
	ldr	d1, [x9, x8]
	str	d1, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_69
	mov	x8, #0
	ldr	d2, [x19, #1256]
	ldr	d3, [x19, #1264]
	ldr	d4, [x19, #1280]
	ldr	d5, [x19, #1288]
	ldr	d1, [x19, #1272]
LBB0_71:
	ldr	d6, [x17, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x17, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x17, x11]
	ldr	d16, [x0, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x0, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d1, d7
	fnmsub	d6, d0, d6, d7
	str	d6, [x0, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_71
	mov	x8, #0
	add	x9, x19, #1296
	ldr	x10, [sp, #800]
LBB0_73:
	ldr	d0, [x10, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_73
	mov	x8, #0
	ldr	x17, [sp, #1528]
	add	x9, x19, #1368
	add	x10, sp, #2, lsl #12
	add	x10, x10, #2288
LBB0_75:
	ldr	d0, [x9, x8]
	str	d0, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_75
	mov	x8, #0
	ldr	d2, [x19, #1328]
	ldr	d3, [x19, #1336]
	ldr	d4, [x19, #1352]
	ldr	d5, [x19, #1360]
	ldr	d0, [x19, #1344]
LBB0_77:
	ldr	d6, [x0, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x0, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x0, x11]
	ldr	d16, [x17, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x17, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d0, d7
	fnmsub	d6, d1, d6, d7
	str	d6, [x17, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_77
	mov	x8, #0
	add	x9, x19, #1368
	ldr	x10, [sp, #792]
LBB0_79:
	ldr	d1, [x10, x8]
	str	d1, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_79
	mov	x8, #0
	ldr	q1, [x22, #528]
	mov	x9, x17
	ldr	x0, [sp, #1488]
	add	x11, x19, #1744
	add	x10, sp, #2, lsl #12
	add	x10, x10, #2576
LBB0_81:
	ldr	d2, [x9]
	ldur	q3, [x9, #-16]
	fmul.2d	v3, v1, v3
	mov	d4, v3[1]
	fmadd	d2, d1, d2, d4
	fadd	d2, d2, d3
	fmul	d2, d0, d2
	str	d2, [x10, x8, lsl #3]
	add	x8, x8, #1
	add	x9, x9, #8
	cmp	x8, #32
	b.ne	LBB0_81
	mov	x8, #0
	ldr	x17, [sp, #1520]
	add	x9, sp, #2, lsl #12
	add	x9, x9, #3984
LBB0_83:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_83
	ldr	d0, [x19, #1720]
	ldr	d1, [x19, #1736]
	ldr	d2, [x19, #1728]
	add	x8, sp, #2, lsl #12
	add	x8, x8, #2576
	mov	x9, x0
	mov	w10, #32
	ldr	d3, [sp, #12200]
LBB0_85:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_85
	mov	x8, #0
	ldr	x9, [sp, #784]
LBB0_87:
	ldr	d1, [x9, x8]
	str	d1, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_87
	mov	x8, #0
	add	x9, x19, #1824
	add	x10, sp, #3, lsl #12
	add	x10, x10, #176
LBB0_89:
	ldr	d1, [x9, x8]
	str	d1, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_89
	mov	x8, #0
	ldr	d2, [x19, #1784]
	ldr	d3, [x19, #1792]
	ldr	d4, [x19, #1808]
	ldr	d5, [x19, #1816]
	ldr	d1, [x19, #1800]
LBB0_91:
	ldr	d6, [x0, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x0, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x0, x11]
	ldr	d16, [x1, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x1, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d1, d7
	fnmsub	d6, d0, d6, d7
	str	d6, [x1, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_91
	mov	x8, #0
	add	x9, x19, #1824
	ldr	x10, [sp, #776]
LBB0_93:
	ldr	d0, [x10, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_93
	mov	x8, #0
	ldr	x0, [sp, #1472]
	add	x9, x19, #1896
	add	x10, sp, #3, lsl #12
	add	x10, x10, #464
LBB0_95:
	ldr	d0, [x9, x8]
	str	d0, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_95
	mov	x8, #0
	ldr	d2, [x19, #1856]
	ldr	d3, [x19, #1864]
	ldr	d4, [x19, #1880]
	ldr	d5, [x19, #1888]
	ldr	d0, [x19, #1872]
LBB0_97:
	ldr	d6, [x1, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x1, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x1, x11]
	ldr	d16, [x0, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x0, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d0, d7
	fnmsub	d6, d1, d6, d7
	str	d6, [x0, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_97
	mov	x8, #0
	add	x9, x19, #1896
	ldr	x10, [sp, #768]
LBB0_99:
	ldr	d1, [x10, x8]
	str	d1, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_99
	mov	x8, #0
	ldr	q1, [x22, #1056]
	mov	x9, x0
	ldr	x1, [sp, #1432]
	add	x11, x19, #2272
	add	x10, sp, #3, lsl #12
	add	x10, x10, #752
LBB0_101:
	ldr	d2, [x9]
	ldur	q3, [x9, #-16]
	fmul.2d	v3, v1, v3
	mov	d4, v3[1]
	fmadd	d2, d1, d2, d4
	fadd	d2, d2, d3
	fmul	d2, d0, d2
	str	d2, [x10, x8, lsl #3]
	add	x8, x8, #1
	add	x9, x9, #8
	cmp	x8, #32
	b.ne	LBB0_101
	mov	x8, #0
	ldr	x0, [sp, #1464]
	add	x9, sp, #3, lsl #12
	add	x9, x9, #2160
LBB0_103:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_103
	ldr	d0, [x19, #2248]
	ldr	d1, [x19, #2264]
	ldr	d2, [x19, #2256]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #752
	mov	x9, x1
	mov	w10, #32
	ldr	d3, [sp, #14472]
LBB0_105:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_105
	mov	x8, #0
	ldr	x9, [sp, #760]
LBB0_107:
	ldr	d1, [x9, x8]
	str	d1, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_107
	mov	x8, #0
	add	x9, x19, #2352
	add	x10, sp, #3, lsl #12
	add	x10, x10, #2448
LBB0_109:
	ldr	d1, [x9, x8]
	str	d1, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_109
	mov	x8, #0
	ldr	d2, [x19, #2312]
	ldr	d3, [x19, #2320]
	ldr	d4, [x19, #2336]
	ldr	d5, [x19, #2344]
	ldr	d1, [x19, #2328]
LBB0_111:
	ldr	d6, [x1, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x1, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x1, x11]
	ldr	d16, [x2, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x2, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d1, d7
	fnmsub	d6, d0, d6, d7
	str	d6, [x2, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_111
	mov	x8, #0
	add	x9, x19, #2352
	ldr	x10, [sp, #752]
LBB0_113:
	ldr	d0, [x10, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_113
	mov	x8, #0
	ldr	x1, [sp, #1416]
	add	x9, x19, #2424
	add	x10, sp, #3, lsl #12
	add	x10, x10, #2736
LBB0_115:
	ldr	d0, [x9, x8]
	str	d0, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_115
	mov	x8, #0
	ldr	d2, [x19, #2384]
	ldr	d3, [x19, #2392]
	ldr	d4, [x19, #2408]
	ldr	d5, [x19, #2416]
	ldr	d0, [x19, #2400]
LBB0_117:
	ldr	d6, [x2, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x2, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x2, x11]
	ldr	d16, [x1, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x1, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d0, d7
	fnmsub	d6, d1, d6, d7
	str	d6, [x1, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_117
	mov	x8, #0
	add	x9, x19, #2424
	ldr	x10, [sp, #744]
LBB0_119:
	ldr	d1, [x10, x8]
	str	d1, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_119
	mov	x8, #0
	ldr	q1, [x22, #1584]
	mov	x9, x1
	ldr	x2, [sp, #1376]
	add	x11, x19, #2800
	add	x10, sp, #3, lsl #12
	add	x10, x10, #3024
LBB0_121:
	ldr	d2, [x9]
	ldur	q3, [x9, #-16]
	fmul.2d	v3, v1, v3
	mov	d4, v3[1]
	fmadd	d2, d1, d2, d4
	fadd	d2, d2, d3
	fmul	d2, d0, d2
	str	d2, [x10, x8, lsl #3]
	add	x8, x8, #1
	add	x9, x9, #8
	cmp	x8, #32
	b.ne	LBB0_121
	mov	x8, #0
	ldr	x1, [sp, #1408]
	add	x9, sp, #4, lsl #12
	add	x9, x9, #336
LBB0_123:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_123
	ldr	d0, [x19, #2776]
	ldr	d1, [x19, #2792]
	ldr	d2, [x19, #2784]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #3024
	mov	x9, x2
	mov	w10, #32
	ldr	d3, [sp, #16744]
LBB0_125:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_125
	mov	x8, #0
	ldr	x9, [sp, #736]
LBB0_127:
	ldr	d1, [x9, x8]
	str	d1, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_127
	mov	x8, #0
	add	x9, x19, #2880
	add	x10, sp, #4, lsl #12
	add	x10, x10, #624
LBB0_129:
	ldr	d1, [x9, x8]
	str	d1, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_129
	mov	x8, #0
	ldr	d2, [x19, #2840]
	ldr	d3, [x19, #2848]
	ldr	d4, [x19, #2864]
	ldr	d5, [x19, #2872]
	ldr	d1, [x19, #2856]
LBB0_131:
	ldr	d6, [x2, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x2, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x2, x11]
	ldr	d16, [x3, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x3, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d1, d7
	fnmsub	d6, d0, d6, d7
	str	d6, [x3, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_131
	mov	x8, #0
	add	x9, x19, #2880
	ldr	x10, [sp, #728]
LBB0_133:
	ldr	d0, [x10, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_133
	mov	x8, #0
	ldr	x2, [sp, #1360]
	add	x9, x19, #2952
	add	x10, sp, #4, lsl #12
	add	x10, x10, #912
LBB0_135:
	ldr	d0, [x9, x8]
	str	d0, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_135
	mov	x8, #0
	ldr	d2, [x19, #2912]
	ldr	d3, [x19, #2920]
	ldr	d4, [x19, #2936]
	ldr	d5, [x19, #2944]
	ldr	d0, [x19, #2928]
LBB0_137:
	ldr	d6, [x3, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x3, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x3, x11]
	ldr	d16, [x2, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x2, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d0, d7
	fnmsub	d6, d1, d6, d7
	str	d6, [x2, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_137
	mov	x8, #0
	add	x9, x19, #2952
	ldr	x10, [sp, #720]
LBB0_139:
	ldr	d1, [x10, x8]
	str	d1, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_139
	mov	x8, #0
	ldr	q1, [x22, #2112]
	mov	x9, x2
	ldr	x3, [sp, #1320]
	add	x11, x19, #3328
	add	x10, sp, #4, lsl #12
	add	x10, x10, #1200
LBB0_141:
	ldr	d2, [x9]
	ldur	q3, [x9, #-16]
	fmul.2d	v3, v1, v3
	mov	d4, v3[1]
	fmadd	d2, d1, d2, d4
	fadd	d2, d2, d3
	fmul	d2, d0, d2
	str	d2, [x10, x8, lsl #3]
	add	x8, x8, #1
	add	x9, x9, #8
	cmp	x8, #32
	b.ne	LBB0_141
	mov	x8, #0
	ldr	x2, [sp, #1352]
	add	x9, sp, #4, lsl #12
	add	x9, x9, #2608
LBB0_143:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_143
	ldr	d0, [x19, #3304]
	ldr	d1, [x19, #3320]
	ldr	d2, [x19, #3312]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #1200
	mov	x9, x3
	mov	w10, #32
	ldr	d3, [sp, #19016]
LBB0_145:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_145
	mov	x8, #0
	ldr	x9, [sp, #712]
LBB0_147:
	ldr	d1, [x9, x8]
	str	d1, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_147
	mov	x8, #0
	add	x9, x19, #3408
	add	x10, sp, #4, lsl #12
	add	x10, x10, #2896
LBB0_149:
	ldr	d1, [x9, x8]
	str	d1, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_149
	mov	x8, #0
	ldr	d2, [x19, #3368]
	ldr	d3, [x19, #3376]
	ldr	d4, [x19, #3392]
	ldr	d5, [x19, #3400]
	ldr	d1, [x19, #3384]
LBB0_151:
	ldr	d6, [x3, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x3, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x3, x11]
	ldr	d16, [x4, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x4, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d1, d7
	fnmsub	d6, d0, d6, d7
	str	d6, [x4, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_151
	mov	x8, #0
	add	x9, x19, #3408
	ldr	x10, [sp, #704]
LBB0_153:
	ldr	d0, [x10, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_153
	mov	x8, #0
	ldr	x3, [sp, #1304]
	add	x9, x19, #3480
	add	x10, sp, #4, lsl #12
	add	x10, x10, #3184
LBB0_155:
	ldr	d0, [x9, x8]
	str	d0, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_155
	mov	x8, #0
	ldr	d2, [x19, #3440]
	ldr	d3, [x19, #3448]
	ldr	d4, [x19, #3464]
	ldr	d5, [x19, #3472]
	ldr	d0, [x19, #3456]
LBB0_157:
	ldr	d6, [x4, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x4, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x4, x11]
	ldr	d16, [x3, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x3, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d0, d7
	fnmsub	d6, d1, d6, d7
	str	d6, [x3, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_157
	mov	x8, #0
	add	x9, x19, #3480
	ldr	x10, [sp, #696]
LBB0_159:
	ldr	d1, [x10, x8]
	str	d1, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_159
	mov	x8, #0
	ldr	q1, [x22, #2640]
	mov	x9, x3
	ldr	x4, [sp, #1264]
	add	x11, x19, #3856
	add	x10, sp, #4, lsl #12
	add	x10, x10, #3472
LBB0_161:
	ldr	d2, [x9]
	ldur	q3, [x9, #-16]
	fmul.2d	v3, v1, v3
	mov	d4, v3[1]
	fmadd	d2, d1, d2, d4
	fadd	d2, d2, d3
	fmul	d2, d0, d2
	str	d2, [x10, x8, lsl #3]
	add	x8, x8, #1
	add	x9, x9, #8
	cmp	x8, #32
	b.ne	LBB0_161
	mov	x8, #0
	ldr	x3, [sp, #1296]
	add	x9, sp, #5, lsl #12
	add	x9, x9, #784
LBB0_163:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_163
	ldr	d0, [x19, #3832]
	ldr	d1, [x19, #3848]
	ldr	d2, [x19, #3840]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #3472
	mov	x9, x4
	mov	w10, #32
	ldr	d3, [sp, #21288]
LBB0_165:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_165
	mov	x8, #0
	ldr	x9, [sp, #688]
LBB0_167:
	ldr	d1, [x9, x8]
	str	d1, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_167
	mov	x8, #0
	add	x9, x19, #3936
	add	x10, sp, #5, lsl #12
	add	x10, x10, #1072
LBB0_169:
	ldr	d1, [x9, x8]
	str	d1, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_169
	mov	x8, #0
	ldr	d2, [x19, #3896]
	ldr	d3, [x19, #3904]
	ldr	d4, [x19, #3920]
	ldr	d5, [x19, #3928]
	ldr	d1, [x19, #3912]
LBB0_171:
	ldr	d6, [x4, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x4, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x4, x11]
	ldr	d16, [x5, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x5, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d1, d7
	fnmsub	d6, d0, d6, d7
	str	d6, [x5, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_171
	mov	x8, #0
	add	x9, x19, #3936
	ldr	x10, [sp, #680]
LBB0_173:
	ldr	d0, [x10, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_173
	mov	x8, #0
	ldr	x4, [sp, #1248]
	add	x9, x19, #4008
	add	x10, sp, #5, lsl #12
	add	x10, x10, #1360
LBB0_175:
	ldr	d0, [x9, x8]
	str	d0, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_175
	mov	x8, #0
	ldr	d2, [x19, #3968]
	ldr	d3, [x19, #3976]
	ldr	d4, [x19, #3992]
	ldr	d5, [x19, #4000]
	ldr	d0, [x19, #3984]
LBB0_177:
	ldr	d6, [x5, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x5, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x5, x11]
	ldr	d16, [x4, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x4, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d0, d7
	fnmsub	d6, d1, d6, d7
	str	d6, [x4, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_177
	mov	x8, #0
	add	x9, x19, #4008
	ldr	x10, [sp, #672]
LBB0_179:
	ldr	d1, [x10, x8]
	str	d1, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_179
	mov	x8, #0
	ldr	q1, [x22, #3168]
	mov	x9, x4
	ldr	x11, [sp, #2136]
	ldr	x5, [sp, #1208]
	add	x10, sp, #5, lsl #12
	add	x10, x10, #1648
LBB0_181:
	ldr	d2, [x9]
	ldur	q3, [x9, #-16]
	fmul.2d	v3, v1, v3
	mov	d4, v3[1]
	fmadd	d2, d1, d2, d4
	fadd	d2, d2, d3
	fmul	d2, d0, d2
	str	d2, [x10, x8, lsl #3]
	add	x8, x8, #1
	add	x9, x9, #8
	cmp	x8, #32
	b.ne	LBB0_181
	mov	x8, #0
	ldr	x4, [sp, #1240]
	add	x9, sp, #5, lsl #12
	add	x9, x9, #3056
LBB0_183:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_183
	ldr	d0, [x19, #4360]
	ldr	d1, [x19, #4376]
	ldr	d2, [x19, #4368]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #1648
	mov	x9, x5
	mov	w10, #32
	ldr	d3, [sp, #23560]
LBB0_185:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_185
	mov	x8, #0
	ldr	x9, [sp, #664]
LBB0_187:
	ldr	d1, [x9, x8]
	str	d1, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_187
	mov	x8, #0
	add	x9, sp, #5, lsl #12
	add	x9, x9, #3344
LBB0_189:
	ldr	d1, [x13, x8]
	str	d1, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_189
	mov	x8, #0
	ldr	d2, [x19, #4424]
	ldr	d3, [x19, #4432]
	ldr	d4, [x19, #4448]
	ldr	d5, [x19, #4456]
	ldr	d1, [x19, #4440]
LBB0_191:
	ldr	d6, [x5, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x5, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x5, x11]
	ldr	d16, [x6, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x6, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d1, d7
	fnmsub	d6, d0, d6, d7
	str	d6, [x6, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_191
	mov	x8, #0
	ldr	x9, [sp, #656]
LBB0_193:
	ldr	d0, [x9, x8]
	str	d0, [x13, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_193
	mov	x8, #0
	ldr	x13, [sp, #2120]
	ldr	x5, [sp, #1192]
	add	x9, sp, #5, lsl #12
	add	x9, x9, #3632
LBB0_195:
	ldr	d0, [x13, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_195
	mov	x8, #0
	ldr	d2, [x19, #4496]
	ldr	d3, [x19, #4504]
	ldr	d4, [x19, #4520]
	ldr	d5, [x19, #4528]
	ldr	d0, [x19, #4512]
LBB0_197:
	ldr	d6, [x6, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x6, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x6, x11]
	ldr	d16, [x5, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x5, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d0, d7
	fnmsub	d6, d1, d6, d7
	str	d6, [x5, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_197
	mov	x8, #0
	ldr	x9, [sp, #648]
LBB0_199:
	ldr	d1, [x9, x8]
	str	d1, [x13, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_199
	mov	x8, #0
	ldr	q1, [x22, #3696]
	mov	x9, x5
	ldr	x11, [sp, #2112]
	ldr	x6, [sp, #1152]
	add	x10, sp, #5, lsl #12
	add	x10, x10, #3920
LBB0_201:
	ldr	d2, [x9]
	ldur	q3, [x9, #-16]
	fmul.2d	v3, v1, v3
	mov	d4, v3[1]
	fmadd	d2, d1, d2, d4
	fadd	d2, d2, d3
	fmul	d2, d0, d2
	str	d2, [x10, x8, lsl #3]
	add	x8, x8, #1
	add	x9, x9, #8
	cmp	x8, #32
	b.ne	LBB0_201
	mov	x8, #0
	ldr	x13, [sp, #2104]
	ldr	x5, [sp, #1184]
	add	x9, sp, #6, lsl #12
	add	x9, x9, #1232
LBB0_203:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_203
	ldr	d0, [x19, #4888]
	ldr	d1, [x19, #4904]
	ldr	d2, [x19, #4896]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #3920
	mov	x9, x6
	mov	w10, #32
	ldr	d3, [sp, #25832]
LBB0_205:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_205
	mov	x8, #0
	ldr	x9, [sp, #640]
LBB0_207:
	ldr	d1, [x9, x8]
	str	d1, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_207
	mov	x8, #0
	add	x9, sp, #6, lsl #12
	add	x9, x9, #1520
LBB0_209:
	ldr	d1, [x13, x8]
	str	d1, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_209
	mov	x8, #0
	ldr	d2, [x19, #4952]
	ldr	d3, [x19, #4960]
	ldr	d4, [x19, #4976]
	ldr	d5, [x19, #4984]
	ldr	d1, [x19, #4968]
LBB0_211:
	ldr	d6, [x6, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x6, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x6, x11]
	ldr	d16, [x7, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x7, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d1, d7
	fnmsub	d6, d0, d6, d7
	str	d6, [x7, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_211
	mov	x8, #0
	ldr	x9, [sp, #632]
LBB0_213:
	ldr	d0, [x9, x8]
	str	d0, [x13, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_213
	mov	x8, #0
	ldr	x13, [sp, #2096]
	ldr	x6, [sp, #1136]
	add	x9, sp, #6, lsl #12
	add	x9, x9, #1808
LBB0_215:
	ldr	d0, [x13, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_215
	mov	x8, #0
	ldr	d2, [x19, #5024]
	ldr	d3, [x19, #5032]
	ldr	d4, [x19, #5048]
	ldr	d5, [x19, #5056]
	ldr	d0, [x19, #5040]
LBB0_217:
	ldr	d6, [x7, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x7, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x7, x11]
	ldr	d16, [x6, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x6, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d0, d7
	fnmsub	d6, d1, d6, d7
	str	d6, [x6, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_217
	mov	x8, #0
	ldr	x9, [sp, #624]
LBB0_219:
	ldr	d1, [x9, x8]
	str	d1, [x13, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_219
	mov	x8, #0
	ldr	x9, [sp, #2464]
	ldr	q1, [x9]
	mov	x9, x6
	ldr	x11, [sp, #2088]
	ldr	x7, [sp, #1096]
	add	x10, sp, #6, lsl #12
	add	x10, x10, #2096
LBB0_221:
	ldr	d2, [x9]
	ldur	q3, [x9, #-16]
	fmul.2d	v3, v1, v3
	mov	d4, v3[1]
	fmadd	d2, d1, d2, d4
	fadd	d2, d2, d3
	fmul	d2, d0, d2
	str	d2, [x10, x8, lsl #3]
	add	x8, x8, #1
	add	x9, x9, #8
	cmp	x8, #32
	b.ne	LBB0_221
	mov	x8, #0
	ldr	x13, [sp, #2080]
	ldr	x6, [sp, #1128]
	add	x9, sp, #6, lsl #12
	add	x9, x9, #3504
LBB0_223:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_223
	ldr	d0, [x19, #5416]
	ldr	d1, [x19, #5432]
	ldr	d2, [x19, #5424]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #2096
	mov	x9, x7
	mov	w10, #32
	ldr	d3, [sp, #28104]
LBB0_225:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_225
	mov	x8, #0
	ldr	x9, [sp, #616]
LBB0_227:
	ldr	d1, [x9, x8]
	str	d1, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_227
	mov	x8, #0
	add	x9, sp, #6, lsl #12
	add	x9, x9, #3792
LBB0_229:
	ldr	d1, [x13, x8]
	str	d1, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_229
	mov	x8, #0
	ldr	d2, [x19, #5480]
	ldr	d3, [x19, #5488]
	ldr	d4, [x19, #5504]
	ldr	d5, [x19, #5512]
	ldr	d1, [x19, #5496]
LBB0_231:
	ldr	d6, [x7, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x7, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x7, x11]
	ldr	d16, [x30, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x30, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d1, d7
	fnmsub	d6, d0, d6, d7
	str	d6, [x30, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_231
	mov	x8, #0
	ldr	x9, [sp, #608]
LBB0_233:
	ldr	d0, [x9, x8]
	str	d0, [x13, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_233
	mov	x8, #0
	ldr	x13, [sp, #2072]
	ldr	x7, [sp, #1080]
	add	x9, sp, #6, lsl #12
	add	x9, x9, #4080
LBB0_235:
	ldr	d0, [x13, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_235
	mov	x8, #0
	ldr	d2, [x19, #5552]
	ldr	d3, [x19, #5560]
	ldr	d4, [x19, #5576]
	ldr	d5, [x19, #5584]
	ldr	d0, [x19, #5568]
LBB0_237:
	ldr	d6, [x30, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x30, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x30, x11]
	ldr	d16, [x7, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x7, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d0, d7
	fnmsub	d6, d1, d6, d7
	str	d6, [x7, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_237
	mov	x8, #0
	ldr	x9, [sp, #600]
LBB0_239:
	ldr	d1, [x9, x8]
	str	d1, [x13, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_239
	mov	x8, #0
	ldr	x9, [sp, #2464]
	ldr	q1, [x9, #528]
	mov	x9, x7
	ldr	x11, [sp, #2064]
	ldr	x30, [sp, #1040]
	add	x10, sp, #7, lsl #12
	add	x10, x10, #272
LBB0_241:
	ldr	d2, [x9]
	ldur	q3, [x9, #-16]
	fmul.2d	v3, v1, v3
	mov	d4, v3[1]
	fmadd	d2, d1, d2, d4
	fadd	d2, d2, d3
	fmul	d2, d0, d2
	str	d2, [x10, x8, lsl #3]
	add	x8, x8, #1
	add	x9, x9, #8
	cmp	x8, #32
	b.ne	LBB0_241
	mov	x8, #0
	ldr	x13, [sp, #2056]
	ldr	x7, [sp, #1072]
	add	x9, sp, #7, lsl #12
	add	x9, x9, #1680
LBB0_243:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_243
	ldr	d0, [x19, #5944]
	ldr	d1, [x19, #5960]
	ldr	d2, [x19, #5952]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #272
	mov	x9, x30
	mov	w10, #32
	ldr	d3, [sp, #30376]
LBB0_245:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_245
	mov	x8, #0
	ldr	x9, [sp, #592]
LBB0_247:
	ldr	d1, [x9, x8]
	str	d1, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_247
	mov	x8, #0
	add	x9, sp, #7, lsl #12
	add	x9, x9, #1968
LBB0_249:
	ldr	d1, [x13, x8]
	str	d1, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_249
	mov	x8, #0
	ldr	d2, [x19, #6008]
	ldr	d3, [x19, #6016]
	ldr	d4, [x19, #6032]
	ldr	d5, [x19, #6040]
	ldr	d1, [x19, #6024]
	ldr	x12, [sp, #2416]
LBB0_251:
	ldr	d6, [x30, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x30, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x30, x11]
	ldr	d16, [x12, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x12, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d1, d7
	fnmsub	d6, d0, d6, d7
	str	d6, [x12, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_251
	mov	x8, #0
	ldr	x9, [sp, #584]
LBB0_253:
	ldr	d0, [x9, x8]
	str	d0, [x13, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_253
	mov	x8, #0
	ldr	x13, [sp, #2048]
	ldr	x30, [sp, #2416]
	ldr	x12, [sp, #1032]
	add	x9, sp, #7, lsl #12
	add	x9, x9, #2256
LBB0_255:
	ldr	d0, [x13, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_255
	mov	x8, #0
	ldr	d2, [x19, #6080]
	ldr	d3, [x19, #6088]
	ldr	d4, [x19, #6104]
	ldr	d5, [x19, #6112]
	ldr	d0, [x19, #6096]
LBB0_257:
	ldr	d6, [x30, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x30, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x30, x11]
	ldr	d16, [x12, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x12, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d0, d7
	fnmsub	d6, d1, d6, d7
	str	d6, [x12, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_257
	mov	x8, #0
	ldr	x9, [sp, #576]
LBB0_259:
	ldr	d1, [x9, x8]
	str	d1, [x13, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_259
	mov	x8, #0
	ldr	x9, [sp, #2464]
	ldr	q1, [x9, #1056]
	mov	x9, x12
	ldr	x11, [sp, #2040]
	ldr	x30, [sp, #1024]
	add	x10, sp, #7, lsl #12
	add	x10, x10, #2544
LBB0_261:
	ldr	d2, [x9]
	ldur	q3, [x9, #-16]
	fmul.2d	v3, v1, v3
	mov	d4, v3[1]
	fmadd	d2, d1, d2, d4
	fadd	d2, d2, d3
	fmul	d2, d0, d2
	str	d2, [x10, x8, lsl #3]
	add	x8, x8, #1
	add	x9, x9, #8
	cmp	x8, #32
	b.ne	LBB0_261
	mov	x8, #0
	ldr	x13, [sp, #2032]
	ldr	x12, [sp, #992]
	add	x9, sp, #7, lsl #12
	add	x9, x9, #3952
LBB0_263:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_263
	ldr	d0, [x19, #6472]
	ldr	d1, [x19, #6488]
	ldr	d2, [x19, #6480]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #2544
	mov	x9, x12
	mov	w10, #32
	ldr	d3, [sp, #32648]
LBB0_265:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_265
	mov	x8, #0
	ldr	x9, [sp, #568]
LBB0_267:
	ldr	d1, [x9, x8]
	str	d1, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_267
	mov	x8, #0
	add	x9, sp, #8, lsl #12
	add	x9, x9, #144
LBB0_269:
	ldr	d1, [x13, x8]
	str	d1, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_269
	mov	x8, #0
	ldr	d2, [x19, #6536]
	ldr	d3, [x19, #6544]
	ldr	d4, [x19, #6560]
	ldr	d5, [x19, #6568]
	ldr	d1, [x19, #6552]
	ldr	x20, [sp, #2408]
LBB0_271:
	ldr	d6, [x12, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x12, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x12, x11]
	ldr	d16, [x20, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x20, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d1, d7
	fnmsub	d6, d0, d6, d7
	str	d6, [x20, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_271
	mov	x8, #0
	ldr	x9, [sp, #560]
LBB0_273:
	ldr	d0, [x9, x8]
	str	d0, [x13, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_273
	mov	x8, #0
	ldr	x13, [sp, #2024]
	ldr	x12, [sp, #2408]
	add	x9, sp, #8, lsl #12
	add	x9, x9, #432
LBB0_275:
	ldr	d0, [x13, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_275
	mov	x8, #0
	ldr	d2, [x19, #6608]
	ldr	d3, [x19, #6616]
	ldr	d4, [x19, #6632]
	ldr	d5, [x19, #6640]
	ldr	d0, [x19, #6624]
LBB0_277:
	ldr	d6, [x12, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x12, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x12, x11]
	ldr	x20, [sp, #2488]
	ldr	d16, [x20, x11]
	ldr	x11, [sp, #2488]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x11, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d0, d7
	fnmsub	d6, d1, d6, d7
	str	d6, [x11, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_277
	mov	x8, #0
	ldr	x9, [sp, #552]
LBB0_279:
	ldr	d1, [x9, x8]
	str	d1, [x13, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_279
	mov	x8, #0
	ldr	x9, [sp, #2464]
	ldr	q1, [x9, #1584]
	mov	x9, x11
	ldr	x11, [sp, #2016]
	ldr	x20, [sp, #2400]
	ldr	x12, [sp, #960]
	add	x22, x19, #480
	add	x10, sp, #8, lsl #12
	add	x10, x10, #720
LBB0_281:
	ldr	d2, [x9]
	ldur	q3, [x9, #-16]
	fmul.2d	v3, v1, v3
	mov	d4, v3[1]
	fmadd	d2, d1, d2, d4
	fadd	d2, d2, d3
	fmul	d2, d0, d2
	str	d2, [x10, x8, lsl #3]
	add	x8, x8, #1
	add	x9, x9, #8
	cmp	x8, #32
	b.ne	LBB0_281
	mov	x8, #0
	ldr	x13, [sp, #2008]
	add	x9, sp, #8, lsl #12
	add	x9, x9, #2128
LBB0_283:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_283
	ldr	d0, [x19, #7000]
	ldr	d1, [x19, #7016]
	ldr	d2, [x19, #7008]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #720
	mov	x9, x12
	mov	w10, #32
	str	x11, [sp]
	add	x11, sp, #2160
	ldr	d3, [x11, #32760]
	ldr	x11, [sp]
LBB0_285:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_285
	mov	x8, #0
	ldr	x9, [sp, #544]
LBB0_287:
	ldr	d1, [x9, x8]
	str	d1, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_287
	mov	x8, #0
	add	x9, sp, #8, lsl #12
	add	x9, x9, #2416
LBB0_289:
	ldr	d1, [x13, x8]
	str	d1, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_289
	mov	x8, #0
	ldr	d2, [x19, #7064]
	ldr	d3, [x19, #7072]
	ldr	d4, [x19, #7088]
	ldr	d5, [x19, #7096]
	ldr	d1, [x19, #7080]
LBB0_291:
	ldr	d6, [x12, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x12, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x12, x11]
	ldr	d16, [x26, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x26, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d1, d7
	fnmsub	d6, d0, d6, d7
	str	d6, [x26, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_291
	mov	x8, #0
	ldr	x9, [sp, #536]
LBB0_293:
	ldr	d0, [x9, x8]
	str	d0, [x13, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_293
	mov	x8, #0
	ldr	x13, [sp, #2000]
	ldr	x12, [sp, #952]
	add	x9, sp, #8, lsl #12
	add	x9, x9, #2704
LBB0_295:
	ldr	d0, [x13, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_295
	mov	x8, #0
	ldr	d2, [x19, #7136]
	ldr	d3, [x19, #7144]
	ldr	d4, [x19, #7160]
	ldr	d5, [x19, #7168]
	ldr	d0, [x19, #7152]
LBB0_297:
	ldr	d6, [x26, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x26, x10]
	fmul	d7, d3, d7
	fmadd	d6, d2, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x26, x11]
	ldr	d16, [x12, x11]
	fmadd	d6, d2, d7, d6
	ldr	d7, [x12, x10]
	fmul	d7, d5, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d0, d7
	fnmsub	d6, d1, d6, d7
	str	d6, [x12, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_297
	mov	x8, #0
	ldr	x9, [sp, #528]
LBB0_299:
	ldr	d1, [x9, x8]
	str	d1, [x13, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_299
	mov	x8, #0
	ldr	x9, [sp, #2464]
	ldr	q1, [x9, #2112]
	mov	x9, x12
	ldr	x11, [sp, #1992]
	add	x10, sp, #8, lsl #12
	add	x10, x10, #2992
LBB0_301:
	ldr	d2, [x9]
	ldur	q3, [x9, #-16]
	fmul.2d	v3, v1, v3
	mov	d4, v3[1]
	fmadd	d2, d1, d2, d4
	fadd	d2, d2, d3
	fmul	d2, d0, d2
	str	d2, [x10, x8, lsl #3]
	add	x8, x8, #1
	add	x9, x9, #8
	cmp	x8, #32
	b.ne	LBB0_301
	mov	x8, #0
	ldr	x13, [sp, #1944]
	add	x12, x19, #400
	add	x9, sp, #1, lsl #12
	add	x9, x9, #2384
LBB0_303:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_303
	ldr	d0, [x19, #392]
	ldp	d1, d2, [x19, #360]
	add	x8, sp, #1, lsl #12
	add	x8, x8, #2128
	ldr	x9, [sp, #2424]
	mov	w10, #32
	ldr	d3, [sp, #6504]
LBB0_305:
	ldur	d4, [x9, #-16]
	fmul	d3, d0, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d1, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_305
	mov	x8, #0
	ldr	x9, [sp, #520]
LBB0_307:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_307
	mov	x8, #0
	add	x12, x19, #944
	add	x9, sp, #2, lsl #12
	add	x9, x9, #560
LBB0_309:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_309
	ldr	d0, [x19, #904]
	ldr	d1, [x19, #936]
	ldr	d2, [x19, #912]
	add	x8, sp, #2, lsl #12
	add	x8, x8, #304
	mov	x9, x15
	mov	w10, #32
	ldr	d3, [sp, #8776]
LBB0_311:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_311
	mov	x8, #0
	ldr	x9, [sp, #512]
LBB0_313:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_313
	mov	x8, #0
	add	x12, x19, #1472
	add	x9, sp, #2, lsl #12
	add	x9, x9, #2832
LBB0_315:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_315
	ldr	d0, [x19, #1432]
	ldr	d1, [x19, #1464]
	ldr	d2, [x19, #1440]
	add	x8, sp, #2, lsl #12
	add	x8, x8, #2576
	mov	x9, x17
	mov	w10, #32
	ldr	d3, [sp, #11048]
LBB0_317:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_317
	mov	x8, #0
	ldr	x9, [sp, #504]
LBB0_319:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_319
	mov	x8, #0
	add	x12, x19, #2000
	add	x9, sp, #3, lsl #12
	add	x9, x9, #1008
LBB0_321:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_321
	ldr	d0, [x19, #1960]
	ldr	d1, [x19, #1992]
	ldr	d2, [x19, #1968]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #752
	mov	x9, x0
	mov	w10, #32
	ldr	d3, [sp, #13320]
LBB0_323:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_323
	mov	x8, #0
	ldr	x9, [sp, #496]
LBB0_325:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_325
	mov	x8, #0
	add	x12, x19, #2528
	add	x9, sp, #3, lsl #12
	add	x9, x9, #3280
LBB0_327:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_327
	ldr	d0, [x19, #2488]
	ldr	d1, [x19, #2520]
	ldr	d2, [x19, #2496]
	add	x8, sp, #3, lsl #12
	add	x8, x8, #3024
	mov	x9, x1
	mov	w10, #32
	ldr	d3, [sp, #15592]
LBB0_329:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_329
	mov	x8, #0
	ldr	x9, [sp, #488]
LBB0_331:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_331
	mov	x8, #0
	add	x12, x19, #3056
	add	x9, sp, #4, lsl #12
	add	x9, x9, #1456
LBB0_333:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_333
	ldr	d0, [x19, #3016]
	ldr	d1, [x19, #3048]
	ldr	d2, [x19, #3024]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #1200
	mov	x9, x2
	mov	w10, #32
	ldr	d3, [sp, #17864]
LBB0_335:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_335
	mov	x8, #0
	ldr	x9, [sp, #480]
LBB0_337:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_337
	mov	x8, #0
	add	x12, x19, #3584
	add	x9, sp, #4, lsl #12
	add	x9, x9, #3728
LBB0_339:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_339
	ldr	d0, [x19, #3544]
	ldr	d1, [x19, #3576]
	ldr	d2, [x19, #3552]
	add	x8, sp, #4, lsl #12
	add	x8, x8, #3472
	mov	x9, x3
	mov	w10, #32
	ldr	d3, [sp, #20136]
LBB0_341:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_341
	mov	x8, #0
	ldr	x9, [sp, #472]
LBB0_343:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_343
	mov	x8, #0
	add	x9, sp, #5, lsl #12
	add	x9, x9, #1904
LBB0_345:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_345
	ldr	d0, [x19, #4072]
	ldr	d1, [x19, #4104]
	ldr	d2, [x19, #4080]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #1648
	mov	x9, x4
	mov	w10, #32
	ldr	d3, [sp, #22408]
LBB0_347:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_347
	mov	x8, #0
	ldr	x9, [sp, #464]
LBB0_349:
	ldr	d0, [x9, x8]
	str	d0, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_349
	mov	x8, #0
	ldr	x11, [sp, #1984]
	add	x9, sp, #6, lsl #12
	add	x9, x9, #80
LBB0_351:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_351
	ldr	d0, [x19, #4600]
	ldr	d1, [x19, #4632]
	ldr	d2, [x19, #4608]
	add	x8, sp, #5, lsl #12
	add	x8, x8, #3920
	mov	x9, x5
	mov	w10, #32
	ldr	d3, [sp, #24680]
LBB0_353:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_353
	mov	x8, #0
	ldr	x9, [sp, #456]
LBB0_355:
	ldr	d0, [x9, x8]
	str	d0, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_355
	mov	x8, #0
	ldr	x11, [sp, #1976]
	add	x9, sp, #6, lsl #12
	add	x9, x9, #2352
LBB0_357:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_357
	ldr	d0, [x19, #5128]
	ldr	d1, [x19, #5160]
	ldr	d2, [x19, #5136]
	add	x8, sp, #6, lsl #12
	add	x8, x8, #2096
	mov	x9, x6
	mov	w10, #32
	ldr	d3, [sp, #26952]
LBB0_359:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_359
	mov	x8, #0
	ldr	x9, [sp, #448]
LBB0_361:
	ldr	d0, [x9, x8]
	str	d0, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_361
	mov	x8, #0
	ldr	x11, [sp, #1968]
	add	x9, sp, #7, lsl #12
	add	x9, x9, #528
LBB0_363:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_363
	ldr	d0, [x19, #5656]
	ldr	d1, [x19, #5688]
	ldr	d2, [x19, #5664]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #272
	mov	x9, x7
	mov	w10, #32
	ldr	d3, [sp, #29224]
LBB0_365:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_365
	mov	x8, #0
	ldr	x9, [sp, #440]
LBB0_367:
	ldr	d0, [x9, x8]
	str	d0, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_367
	mov	x8, #0
	ldr	x11, [sp, #1960]
	add	x9, sp, #7, lsl #12
	add	x9, x9, #2800
LBB0_369:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_369
	ldr	d0, [x19, #6184]
	ldr	d1, [x19, #6216]
	ldr	d2, [x19, #6192]
	add	x8, sp, #7, lsl #12
	add	x8, x8, #2544
	mov	x9, x30
	mov	w10, #32
	ldr	d3, [sp, #31496]
LBB0_371:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_371
	mov	x8, #0
	ldr	x9, [sp, #432]
LBB0_373:
	ldr	d0, [x9, x8]
	str	d0, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_373
	mov	x8, #0
	ldr	x11, [sp, #1952]
	add	x9, sp, #8, lsl #12
	add	x9, x9, #976
LBB0_375:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_375
	ldr	d0, [x19, #6712]
	ldr	d1, [x19, #6744]
	ldr	d2, [x19, #6720]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #720
	mov	x9, x20
	mov	w10, #32
	add	x12, sp, #1008
	ldr	d3, [x12, #32760]
LBB0_377:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_377
	mov	x8, #0
	ldr	x9, [sp, #424]
LBB0_379:
	ldr	d0, [x9, x8]
	str	d0, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_379
	mov	x8, #0
	add	x9, sp, #8, lsl #12
	add	x9, x9, #3248
LBB0_381:
	ldr	d0, [x13, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_381
	ldr	d0, [x19, #7240]
	ldr	d1, [x19, #7272]
	ldr	d2, [x19, #7248]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #2992
	add	x12, sp, #8, lsl #12
	add	x12, x12, #3248
	add	x9, x12, #32
	mov	w10, #32
	add	x11, sp, #8, lsl #12
	add	x11, x11, #3248
	ldr	d3, [x12, #24]
LBB0_383:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_383
	mov	x8, #0
	ldr	x12, [sp, #1936]
	ldr	x9, [sp, #416]
LBB0_385:
	ldr	d0, [x9, x8]
	str	d0, [x13, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_385
	mov	x8, #0
	ldr	x9, [sp, #2392]
	add	x10, sp, #9, lsl #12
	add	x10, x10, #304
LBB0_387:
	ldr	d0, [x12, x8]
	str	d0, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_387
	ldr	d0, [x19, #7528]
	ldr	d1, [x19, #7544]
	ldr	d2, [x19, #7536]
	add	x8, sp, #8, lsl #12
	add	x8, x8, #2992
	mov	w10, #32
	ldr	d3, [x11, #1176]
	ldr	x13, [sp, #1624]
LBB0_389:
	ldur	d4, [x9, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d2, d4, d3
	ldr	d4, [x8], #8
	fmsub	d3, d0, d3, d4
	str	d3, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB0_389
	mov	x8, #0
	ldr	x9, [sp, #408]
LBB0_391:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_391
	mov	x8, #0
	add	x9, sp, #1, lsl #12
	add	x9, x9, #2672
LBB0_393:
	ldr	d0, [x22, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_393
	mov	x8, #0
	ldp	d0, d1, [x19, #440]
	ldr	d2, [x19, #360]
	ldp	d4, d3, [x19, #464]
	ldr	d5, [x19, #456]
	ldr	x12, [sp, #1928]
	ldr	x20, [sp, #2424]
LBB0_395:
	ldr	d6, [x20, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x20, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x20, x11]
	ldr	d16, [x13, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x13, x10]
	fmul	d7, d3, d7
	fmadd	d7, d4, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x13, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_395
	mov	x8, #0
	ldr	x9, [sp, #400]
LBB0_397:
	ldr	d0, [x9, x8]
	str	d0, [x22, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_397
	mov	x8, #0
	add	x20, x19, #1024
	add	x9, sp, #2, lsl #12
	add	x9, x9, #848
LBB0_399:
	ldr	d0, [x20, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_399
	mov	x8, #0
	ldr	d0, [x19, #984]
	ldr	d1, [x19, #992]
	ldr	d2, [x19, #904]
	ldr	d3, [x19, #1008]
	ldr	d4, [x19, #1016]
	ldr	d5, [x19, #1000]
LBB0_401:
	ldr	d6, [x15, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x15, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x15, x11]
	ldr	d16, [x16, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x16, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x16, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_401
	mov	x8, #0
	ldr	x9, [sp, #392]
LBB0_403:
	ldr	d0, [x9, x8]
	str	d0, [x20, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_403
	mov	x8, #0
	ldr	x15, [sp, #1512]
	add	x20, x19, #1552
	add	x9, sp, #2, lsl #12
	add	x9, x9, #3120
LBB0_405:
	ldr	d0, [x20, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_405
	mov	x8, #0
	ldr	d0, [x19, #1512]
	ldr	d1, [x19, #1520]
	ldr	d2, [x19, #1432]
	ldr	d3, [x19, #1536]
	ldr	d4, [x19, #1544]
	ldr	d5, [x19, #1528]
LBB0_407:
	ldr	d6, [x17, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x17, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x17, x11]
	ldr	d16, [x15, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x15, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x15, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_407
	mov	x8, #0
	ldr	x9, [sp, #384]
LBB0_409:
	ldr	d0, [x9, x8]
	str	d0, [x20, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_409
	mov	x8, #0
	ldr	x17, [sp, #1456]
	add	x20, x19, #2080
	add	x9, sp, #3, lsl #12
	add	x9, x9, #1296
LBB0_411:
	ldr	d0, [x20, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_411
	mov	x8, #0
	ldr	d0, [x19, #2040]
	ldr	d1, [x19, #2048]
	ldr	d2, [x19, #1960]
	ldr	d3, [x19, #2064]
	ldr	d4, [x19, #2072]
	ldr	d5, [x19, #2056]
LBB0_413:
	ldr	d6, [x0, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x0, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x0, x11]
	ldr	d16, [x17, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x17, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x17, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_413
	mov	x8, #0
	ldr	x9, [sp, #376]
LBB0_415:
	ldr	d0, [x9, x8]
	str	d0, [x20, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_415
	mov	x8, #0
	ldr	x0, [sp, #1400]
	add	x20, x19, #2608
	add	x9, sp, #3, lsl #12
	add	x9, x9, #3568
LBB0_417:
	ldr	d0, [x20, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_417
	mov	x8, #0
	ldr	d0, [x19, #2568]
	ldr	d1, [x19, #2576]
	ldr	d2, [x19, #2488]
	ldr	d3, [x19, #2592]
	ldr	d4, [x19, #2600]
	ldr	d5, [x19, #2584]
LBB0_419:
	ldr	d6, [x1, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x1, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x1, x11]
	ldr	d16, [x0, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x0, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x0, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_419
	mov	x8, #0
	ldr	x9, [sp, #368]
LBB0_421:
	ldr	d0, [x9, x8]
	str	d0, [x20, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_421
	mov	x8, #0
	ldr	x1, [sp, #1344]
	add	x20, x19, #3136
	add	x9, sp, #4, lsl #12
	add	x9, x9, #1744
LBB0_423:
	ldr	d0, [x20, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_423
	mov	x8, #0
	ldr	d0, [x19, #3096]
	ldr	d1, [x19, #3104]
	ldr	d2, [x19, #3016]
	ldr	d3, [x19, #3120]
	ldr	d4, [x19, #3128]
	ldr	d5, [x19, #3112]
LBB0_425:
	ldr	d6, [x2, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x2, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x2, x11]
	ldr	d16, [x1, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x1, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x1, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_425
	mov	x8, #0
	ldr	x9, [sp, #360]
LBB0_427:
	ldr	d0, [x9, x8]
	str	d0, [x20, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_427
	mov	x8, #0
	ldr	x2, [sp, #1288]
	add	x20, x19, #3664
	add	x9, sp, #4, lsl #12
	add	x9, x9, #4016
LBB0_429:
	ldr	d0, [x20, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_429
	mov	x8, #0
	ldr	d0, [x19, #3624]
	ldr	d1, [x19, #3632]
	ldr	d2, [x19, #3544]
	ldr	d3, [x19, #3648]
	ldr	d4, [x19, #3656]
	ldr	d5, [x19, #3640]
LBB0_431:
	ldr	d6, [x3, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x3, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x3, x11]
	ldr	d16, [x2, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x2, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x2, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_431
	mov	x8, #0
	ldr	x9, [sp, #352]
LBB0_433:
	ldr	d0, [x9, x8]
	str	d0, [x20, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_433
	mov	x8, #0
	ldr	x3, [sp, #1232]
	add	x9, sp, #5, lsl #12
	add	x9, x9, #2192
LBB0_435:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_435
	mov	x8, #0
	ldr	d0, [x19, #4152]
	ldr	d1, [x19, #4160]
	ldr	d2, [x19, #4072]
	ldr	d3, [x19, #4176]
	ldr	d4, [x19, #4184]
	ldr	d5, [x19, #4168]
	ldr	x20, [sp, #848]
LBB0_437:
	ldr	d6, [x4, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x4, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x4, x11]
	ldr	d16, [x3, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x3, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x3, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_437
	mov	x8, #0
	ldr	x9, [sp, #344]
LBB0_439:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_439
	mov	x8, #0
	ldr	x12, [sp, #1920]
	ldr	x4, [sp, #1176]
	add	x9, sp, #6, lsl #12
	add	x9, x9, #368
LBB0_441:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_441
	mov	x8, #0
	ldr	d0, [x19, #4680]
	ldr	d1, [x19, #4688]
	ldr	d2, [x19, #4600]
	ldr	d3, [x19, #4704]
	ldr	d4, [x19, #4712]
	ldr	d5, [x19, #4696]
LBB0_443:
	ldr	d6, [x5, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x5, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x5, x11]
	ldr	d16, [x4, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x4, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x4, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_443
	mov	x8, #0
	ldr	x9, [sp, #336]
LBB0_445:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_445
	mov	x8, #0
	ldr	x12, [sp, #1912]
	ldr	x5, [sp, #1120]
	add	x9, sp, #6, lsl #12
	add	x9, x9, #2640
LBB0_447:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_447
	mov	x8, #0
	ldr	d0, [x19, #5208]
	ldr	d1, [x19, #5216]
	ldr	d2, [x19, #5128]
	ldr	d3, [x19, #5232]
	ldr	d4, [x19, #5240]
	ldr	d5, [x19, #5224]
LBB0_449:
	ldr	d6, [x6, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x6, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x6, x11]
	ldr	d16, [x5, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x5, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x5, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_449
	mov	x8, #0
	ldr	x9, [sp, #328]
LBB0_451:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_451
	mov	x8, #0
	ldr	x12, [sp, #1904]
	ldr	x6, [sp, #1064]
	add	x9, sp, #7, lsl #12
	add	x9, x9, #816
LBB0_453:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_453
	mov	x8, #0
	ldr	d0, [x19, #5736]
	ldr	d1, [x19, #5744]
	ldr	d2, [x19, #5656]
	ldr	d3, [x19, #5760]
	ldr	d4, [x19, #5768]
	ldr	d5, [x19, #5752]
LBB0_455:
	ldr	d6, [x7, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x7, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x7, x11]
	ldr	d16, [x6, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x6, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x6, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_455
	mov	x8, #0
	ldr	x9, [sp, #320]
LBB0_457:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_457
	mov	x8, #0
	ldr	x12, [sp, #1896]
	ldr	x7, [sp, #1016]
	add	x9, sp, #7, lsl #12
	add	x9, x9, #3088
LBB0_459:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_459
	mov	x8, #0
	ldr	d0, [x19, #6264]
	ldr	d1, [x19, #6272]
	ldr	d2, [x19, #6184]
	ldr	d3, [x19, #6288]
	ldr	d4, [x19, #6296]
	ldr	d5, [x19, #6280]
LBB0_461:
	ldr	d6, [x30, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x30, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x30, x11]
	ldr	d16, [x7, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x7, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x7, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_461
	mov	x8, #0
	ldr	x9, [sp, #312]
LBB0_463:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_463
	mov	x8, #0
	ldr	x12, [sp, #1888]
	ldr	x30, [sp, #984]
	add	x9, sp, #8, lsl #12
	add	x9, x9, #1264
LBB0_465:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_465
	mov	x8, #0
	ldr	d0, [x19, #6792]
	ldr	d1, [x19, #6800]
	ldr	d2, [x19, #6712]
	ldr	d3, [x19, #6816]
	ldr	d4, [x19, #6824]
	ldr	d5, [x19, #6808]
	ldr	x22, [sp, #2400]
LBB0_467:
	ldr	d6, [x22, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x22, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x22, x11]
	ldr	d16, [x30, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x30, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x30, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_467
	mov	x8, #0
	ldr	x9, [sp, #304]
LBB0_469:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_469
	mov	x8, #0
	ldr	x12, [sp, #1880]
	add	x9, sp, #8, lsl #12
	add	x9, x9, #3536
	ldr	x22, [sp, #24]
LBB0_471:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_471
	mov	x8, #0
	ldr	d0, [x19, #7320]
	ldr	d1, [x19, #7328]
	ldr	d2, [x19, #7240]
	ldr	d3, [x19, #7344]
	ldr	d4, [x19, #7352]
	ldr	d5, [x19, #7336]
LBB0_473:
	ldr	d6, [x20, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x20, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x20, x11]
	ldr	d16, [x21, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x21, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x21, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_473
	mov	x8, #0
	ldr	x9, [sp, #296]
LBB0_475:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_475
	mov	x8, #0
	ldr	x12, [sp, #1872]
	add	x9, sp, #9, lsl #12
	add	x9, x9, #592
LBB0_477:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_477
	mov	x8, #0
	ldr	d0, [x19, #7592]
	ldr	d1, [x19, #7600]
	ldr	d2, [x19, #7528]
	ldr	d3, [x19, #7616]
	ldr	d4, [x19, #7624]
	ldr	d5, [x19, #7608]
	ldr	x20, [sp, #2392]
LBB0_479:
	ldr	d6, [x20, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x20, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x20, x11]
	ldr	d16, [x25, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x25, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x25, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_479
	mov	x8, #0
	ldr	x9, [sp, #288]
LBB0_481:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_481
	mov	x8, #0
	ldr	x20, [sp, #936]
	add	x9, x19, #560
	add	x10, sp, #1, lsl #12
	add	x10, x10, #2960
LBB0_483:
	ldr	d0, [x9, x8]
	str	d0, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_483
	mov	x8, #0
	ldr	d0, [x19, #520]
	ldr	d1, [x19, #528]
	ldr	d2, [x19, #456]
	ldr	d3, [x19, #544]
	ldr	d4, [x19, #552]
	ldr	d5, [x19, #536]
	ldr	x12, [sp, #1864]
LBB0_485:
	ldr	d6, [x13, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x13, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x13, x11]
	ldr	d16, [x14, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x14, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x14, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_485
	mov	x8, #0
	add	x9, x19, #560
	ldr	x10, [sp, #280]
LBB0_487:
	ldr	d0, [x10, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_487
	mov	x8, #0
	ldr	x13, [sp, #1560]
	add	x9, x19, #1104
	add	x10, sp, #2, lsl #12
	add	x10, x10, #1136
LBB0_489:
	ldr	d0, [x9, x8]
	str	d0, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_489
	mov	x8, #0
	ldr	d0, [x19, #1064]
	ldr	d1, [x19, #1072]
	ldr	d2, [x19, #1000]
	ldr	d3, [x19, #1088]
	ldr	d4, [x19, #1096]
	ldr	d5, [x19, #1080]
LBB0_491:
	ldr	d6, [x16, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x16, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x16, x11]
	ldr	d16, [x13, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x13, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x13, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_491
	mov	x8, #0
	add	x9, x19, #1104
	ldr	x10, [sp, #272]
LBB0_493:
	ldr	d0, [x10, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_493
	mov	x8, #0
	ldr	x16, [sp, #1504]
	add	x9, x19, #1632
	add	x10, sp, #2, lsl #12
	add	x10, x10, #3408
LBB0_495:
	ldr	d0, [x9, x8]
	str	d0, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_495
	mov	x8, #0
	ldr	d0, [x19, #1592]
	ldr	d1, [x19, #1600]
	ldr	d2, [x19, #1528]
	ldr	d3, [x19, #1616]
	ldr	d4, [x19, #1624]
	ldr	d5, [x19, #1608]
LBB0_497:
	ldr	d6, [x15, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x15, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x15, x11]
	ldr	d16, [x16, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x16, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x16, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_497
	mov	x8, #0
	add	x9, x19, #1632
	ldr	x10, [sp, #264]
LBB0_499:
	ldr	d0, [x10, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_499
	mov	x8, #0
	ldr	x15, [sp, #1448]
	add	x9, x19, #2160
	add	x10, sp, #3, lsl #12
	add	x10, x10, #1584
LBB0_501:
	ldr	d0, [x9, x8]
	str	d0, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_501
	mov	x8, #0
	ldr	d0, [x19, #2120]
	ldr	d1, [x19, #2128]
	ldr	d2, [x19, #2056]
	ldr	d3, [x19, #2144]
	ldr	d4, [x19, #2152]
	ldr	d5, [x19, #2136]
LBB0_503:
	ldr	d6, [x17, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x17, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x17, x11]
	ldr	d16, [x15, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x15, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x15, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_503
	mov	x8, #0
	add	x9, x19, #2160
	ldr	x10, [sp, #256]
LBB0_505:
	ldr	d0, [x10, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_505
	mov	x8, #0
	ldr	x17, [sp, #1392]
	add	x9, x19, #2688
	add	x10, sp, #3, lsl #12
	add	x10, x10, #3856
LBB0_507:
	ldr	d0, [x9, x8]
	str	d0, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_507
	mov	x8, #0
	ldr	d0, [x19, #2648]
	ldr	d1, [x19, #2656]
	ldr	d2, [x19, #2584]
	ldr	d3, [x19, #2672]
	ldr	d4, [x19, #2680]
	ldr	d5, [x19, #2664]
LBB0_509:
	ldr	d6, [x0, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x0, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x0, x11]
	ldr	d16, [x17, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x17, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x17, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_509
	mov	x8, #0
	add	x9, x19, #2688
	ldr	x10, [sp, #248]
LBB0_511:
	ldr	d0, [x10, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_511
	mov	x8, #0
	ldr	x0, [sp, #1336]
	add	x9, x19, #3216
	add	x10, sp, #4, lsl #12
	add	x10, x10, #2032
LBB0_513:
	ldr	d0, [x9, x8]
	str	d0, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_513
	mov	x8, #0
	ldr	d0, [x19, #3176]
	ldr	d1, [x19, #3184]
	ldr	d2, [x19, #3112]
	ldr	d3, [x19, #3200]
	ldr	d4, [x19, #3208]
	ldr	d5, [x19, #3192]
LBB0_515:
	ldr	d6, [x1, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x1, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x1, x11]
	ldr	d16, [x0, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x0, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x0, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_515
	mov	x8, #0
	add	x9, x19, #3216
	ldr	x10, [sp, #240]
LBB0_517:
	ldr	d0, [x10, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_517
	mov	x8, #0
	ldr	x1, [sp, #1280]
	add	x9, x19, #3744
	add	x10, sp, #5, lsl #12
	add	x10, x10, #208
LBB0_519:
	ldr	d0, [x9, x8]
	str	d0, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_519
	mov	x8, #0
	ldr	d0, [x19, #3704]
	ldr	d1, [x19, #3712]
	ldr	d2, [x19, #3640]
	ldr	d3, [x19, #3728]
	ldr	d4, [x19, #3736]
	ldr	d5, [x19, #3720]
LBB0_521:
	ldr	d6, [x2, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x2, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x2, x11]
	ldr	d16, [x1, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x1, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x1, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_521
	mov	x8, #0
	add	x9, x19, #3744
	ldr	x10, [sp, #232]
LBB0_523:
	ldr	d0, [x10, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_523
	mov	x8, #0
	ldr	x2, [sp, #1224]
	add	x9, sp, #5, lsl #12
	add	x9, x9, #2480
LBB0_525:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_525
	mov	x8, #0
	ldr	d0, [x19, #4232]
	ldr	d1, [x19, #4240]
	ldr	d2, [x19, #4168]
	ldr	d3, [x19, #4256]
	ldr	d4, [x19, #4264]
	ldr	d5, [x19, #4248]
LBB0_527:
	ldr	d6, [x3, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x3, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x3, x11]
	ldr	d16, [x2, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x2, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x2, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_527
	mov	x8, #0
	ldr	x9, [sp, #224]
LBB0_529:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_529
	mov	x8, #0
	ldr	x12, [sp, #1856]
	ldr	x3, [sp, #1168]
	add	x9, sp, #6, lsl #12
	add	x9, x9, #656
LBB0_531:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_531
	mov	x8, #0
	ldr	d0, [x19, #4760]
	ldr	d1, [x19, #4768]
	ldr	d2, [x19, #4696]
	ldr	d3, [x19, #4784]
	ldr	d4, [x19, #4792]
	ldr	d5, [x19, #4776]
LBB0_533:
	ldr	d6, [x4, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x4, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x4, x11]
	ldr	d16, [x3, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x3, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x3, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_533
	mov	x8, #0
	ldr	x9, [sp, #216]
LBB0_535:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_535
	mov	x8, #0
	ldr	x12, [sp, #1848]
	ldr	x4, [sp, #1112]
	add	x9, sp, #6, lsl #12
	add	x9, x9, #2928
LBB0_537:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_537
	mov	x8, #0
	ldr	d0, [x19, #5288]
	ldr	d1, [x19, #5296]
	ldr	d2, [x19, #5224]
	ldr	d3, [x19, #5312]
	ldr	d4, [x19, #5320]
	ldr	d5, [x19, #5304]
LBB0_539:
	ldr	d6, [x5, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x5, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x5, x11]
	ldr	d16, [x4, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x4, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x4, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_539
	mov	x8, #0
	ldr	x9, [sp, #208]
LBB0_541:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_541
	mov	x8, #0
	ldr	x12, [sp, #1840]
	ldr	x5, [sp, #1056]
	add	x9, sp, #7, lsl #12
	add	x9, x9, #1104
LBB0_543:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_543
	mov	x8, #0
	ldr	d0, [x19, #5816]
	ldr	d1, [x19, #5824]
	ldr	d2, [x19, #5752]
	ldr	d3, [x19, #5840]
	ldr	d4, [x19, #5848]
	ldr	d5, [x19, #5832]
LBB0_545:
	ldr	d6, [x6, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x6, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x6, x11]
	ldr	d16, [x5, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x5, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x5, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_545
	mov	x8, #0
	ldr	x9, [sp, #200]
LBB0_547:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_547
	mov	x8, #0
	ldr	x12, [sp, #1832]
	ldr	x6, [sp, #1008]
	add	x9, sp, #7, lsl #12
	add	x9, x9, #3376
LBB0_549:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_549
	mov	x8, #0
	ldr	d0, [x19, #6344]
	ldr	d1, [x19, #6352]
	ldr	d2, [x19, #6280]
	ldr	d3, [x19, #6368]
	ldr	d4, [x19, #6376]
	ldr	d5, [x19, #6360]
LBB0_551:
	ldr	d6, [x7, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x7, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x7, x11]
	ldr	d16, [x6, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x6, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x6, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_551
	mov	x8, #0
	ldr	x9, [sp, #192]
LBB0_553:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_553
	mov	x8, #0
	ldr	x12, [sp, #1824]
	ldr	x7, [sp, #976]
	add	x9, sp, #8, lsl #12
	add	x9, x9, #1552
LBB0_555:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_555
	mov	x8, #0
	ldr	d0, [x19, #6872]
	ldr	d1, [x19, #6880]
	ldr	d2, [x19, #6808]
	ldr	d3, [x19, #6896]
	ldr	d4, [x19, #6904]
	ldr	d5, [x19, #6888]
LBB0_557:
	ldr	d6, [x30, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x30, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x30, x11]
	ldr	d16, [x7, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x7, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x7, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_557
	mov	x8, #0
	ldr	x9, [sp, #184]
LBB0_559:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_559
	mov	x8, #0
	ldr	x12, [sp, #1816]
	add	x30, x19, #632
	add	x9, sp, #8, lsl #12
	add	x9, x9, #3824
LBB0_561:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_561
	mov	x8, #0
	ldr	d0, [x19, #7400]
	ldr	d1, [x19, #7408]
	ldr	d2, [x19, #7336]
	ldr	d3, [x19, #7424]
	ldr	d4, [x19, #7432]
	ldr	d5, [x19, #7416]
LBB0_563:
	ldr	d6, [x21, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x21, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x21, x11]
	ldr	d16, [x22, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x22, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x22, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_563
	mov	x8, #0
	ldr	x9, [sp, #176]
LBB0_565:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_565
	mov	x8, #0
	ldr	x12, [sp, #1808]
	add	x9, sp, #9, lsl #12
	add	x9, x9, #880
LBB0_567:
	ldr	d0, [x12, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_567
	mov	x8, #0
	ldr	d0, [x19, #7664]
	ldr	d1, [x19, #7672]
	ldr	d2, [x19, #7608]
	ldr	d3, [x19, #7688]
	ldr	d4, [x19, #7696]
	ldr	d5, [x19, #7680]
LBB0_569:
	ldr	d6, [x25, x8, lsl #3]
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d7, [x25, x10]
	fmul	d7, d1, d7
	fmadd	d6, d0, d6, d7
	add	x11, x9, x23
	asr	x11, x11, #29
	ldr	d7, [x25, x11]
	ldr	d16, [x24, x11]
	fmadd	d6, d0, d7, d6
	ldr	d7, [x24, x10]
	fmul	d7, d4, d7
	fmadd	d7, d3, d16, d7
	fmul	d7, d5, d7
	fnmsub	d6, d2, d6, d7
	str	d6, [x24, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_569
	mov	x8, #0
	ldr	x9, [sp, #168]
LBB0_571:
	ldr	d0, [x9, x8]
	str	d0, [x12, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_571
	mov	x8, #0
	ldr	x11, [sp, #1800]
	ldr	d6, [sp, #896]
	add	x9, sp, #1, lsl #12
	add	x9, x9, #3248
LBB0_573:
	ldr	d0, [x30, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_573
	mov	x8, #0
	ldr	d0, [x19, #616]
	ldr	d1, [x19, #624]
	ldr	d2, [x19, #536]
	ldr	x12, [sp, #1608]
LBB0_575:
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d3, [x12, x10]
	ldr	d4, [x14, x8, lsl #3]
	ldr	d5, [x14, x10]
	fmul	d5, d1, d5
	fmadd	d4, d0, d4, d5
	add	x10, x9, x23
	asr	x10, x10, #29
	ldr	d5, [x14, x10]
	fmadd	d4, d0, d5, d4
	fmul	d4, d2, d4
	fabs	d4, d4
	fmul	d4, d6, d4
	fmadd	d3, d11, d3, d4
	str	d3, [x12, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_575
	mov	x8, #0
	ldr	x9, [sp, #160]
LBB0_577:
	ldr	d0, [x9, x8]
	str	d0, [x30, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_577
	mov	x8, #0
	ldr	x14, [sp, #1552]
	add	x30, x19, #1160
	add	x9, sp, #2, lsl #12
	add	x9, x9, #1424
LBB0_579:
	ldr	d0, [x30, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_579
	mov	x8, #0
	ldr	d0, [x19, #1144]
	ldr	d1, [x19, #1152]
	ldr	d2, [x19, #1080]
LBB0_581:
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d3, [x14, x10]
	ldr	d4, [x13, x8, lsl #3]
	ldr	d5, [x13, x10]
	fmul	d5, d1, d5
	fmadd	d4, d0, d4, d5
	add	x10, x9, x23
	asr	x10, x10, #29
	ldr	d5, [x13, x10]
	fmadd	d4, d0, d5, d4
	fmul	d4, d2, d4
	fabs	d4, d4
	fmul	d4, d6, d4
	fmadd	d3, d11, d3, d4
	str	d3, [x14, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_581
	mov	x8, #0
	ldr	x9, [sp, #152]
LBB0_583:
	ldr	d0, [x9, x8]
	str	d0, [x30, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_583
	mov	x8, #0
	ldr	x13, [sp, #1496]
	add	x30, x19, #1688
	add	x9, sp, #2, lsl #12
	add	x9, x9, #3696
LBB0_585:
	ldr	d0, [x30, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_585
	mov	x8, #0
	ldr	d0, [x19, #1672]
	ldr	d1, [x19, #1680]
	ldr	d2, [x19, #1608]
LBB0_587:
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d3, [x13, x10]
	ldr	d4, [x16, x8, lsl #3]
	ldr	d5, [x16, x10]
	fmul	d5, d1, d5
	fmadd	d4, d0, d4, d5
	add	x10, x9, x23
	asr	x10, x10, #29
	ldr	d5, [x16, x10]
	fmadd	d4, d0, d5, d4
	fmul	d4, d2, d4
	fabs	d4, d4
	fmul	d4, d6, d4
	fmadd	d3, d11, d3, d4
	str	d3, [x13, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_587
	mov	x8, #0
	ldr	x9, [sp, #144]
LBB0_589:
	ldr	d0, [x9, x8]
	str	d0, [x30, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_589
	mov	x8, #0
	ldr	x16, [sp, #1440]
	add	x30, x19, #2216
	add	x9, sp, #3, lsl #12
	add	x9, x9, #1872
LBB0_591:
	ldr	d0, [x30, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_591
	mov	x8, #0
	ldr	d0, [x19, #2200]
	ldr	d1, [x19, #2208]
	ldr	d2, [x19, #2136]
LBB0_593:
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d3, [x16, x10]
	ldr	d4, [x15, x8, lsl #3]
	ldr	d5, [x15, x10]
	fmul	d5, d1, d5
	fmadd	d4, d0, d4, d5
	add	x10, x9, x23
	asr	x10, x10, #29
	ldr	d5, [x15, x10]
	fmadd	d4, d0, d5, d4
	fmul	d4, d2, d4
	fabs	d4, d4
	fmul	d4, d6, d4
	fmadd	d3, d11, d3, d4
	str	d3, [x16, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_593
	mov	x8, #0
	ldr	x9, [sp, #136]
LBB0_595:
	ldr	d0, [x9, x8]
	str	d0, [x30, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_595
	mov	x8, #0
	ldr	x15, [sp, #1384]
	add	x30, x19, #2744
	add	x9, sp, #4, lsl #12
	add	x9, x9, #48
LBB0_597:
	ldr	d0, [x30, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_597
	mov	x8, #0
	ldr	d0, [x19, #2728]
	ldr	d1, [x19, #2736]
	ldr	d2, [x19, #2664]
LBB0_599:
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d3, [x15, x10]
	ldr	d4, [x17, x8, lsl #3]
	ldr	d5, [x17, x10]
	fmul	d5, d1, d5
	fmadd	d4, d0, d4, d5
	add	x10, x9, x23
	asr	x10, x10, #29
	ldr	d5, [x17, x10]
	fmadd	d4, d0, d5, d4
	fmul	d4, d2, d4
	fabs	d4, d4
	fmul	d4, d6, d4
	fmadd	d3, d11, d3, d4
	str	d3, [x15, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_599
	mov	x8, #0
	ldr	x9, [sp, #128]
LBB0_601:
	ldr	d0, [x9, x8]
	str	d0, [x30, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_601
	mov	x8, #0
	ldr	x17, [sp, #1328]
	add	x30, x19, #3272
	add	x9, sp, #4, lsl #12
	add	x9, x9, #2320
LBB0_603:
	ldr	d0, [x30, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_603
	mov	x8, #0
	ldr	d0, [x19, #3256]
	ldr	d1, [x19, #3264]
	ldr	d2, [x19, #3192]
LBB0_605:
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d3, [x17, x10]
	ldr	d4, [x0, x8, lsl #3]
	ldr	d5, [x0, x10]
	fmul	d5, d1, d5
	fmadd	d4, d0, d4, d5
	add	x10, x9, x23
	asr	x10, x10, #29
	ldr	d5, [x0, x10]
	fmadd	d4, d0, d5, d4
	fmul	d4, d2, d4
	fabs	d4, d4
	fmul	d4, d6, d4
	fmadd	d3, d11, d3, d4
	str	d3, [x17, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_605
	mov	x8, #0
	ldr	x9, [sp, #120]
LBB0_607:
	ldr	d0, [x9, x8]
	str	d0, [x30, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_607
	mov	x8, #0
	ldr	x0, [sp, #1272]
	add	x30, x19, #3800
	add	x9, sp, #5, lsl #12
	add	x9, x9, #496
LBB0_609:
	ldr	d0, [x30, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_609
	mov	x8, #0
	ldr	d0, [x19, #3784]
	ldr	d1, [x19, #3792]
	ldr	d2, [x19, #3720]
LBB0_611:
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d3, [x0, x10]
	ldr	d4, [x1, x8, lsl #3]
	ldr	d5, [x1, x10]
	fmul	d5, d1, d5
	fmadd	d4, d0, d4, d5
	add	x10, x9, x23
	asr	x10, x10, #29
	ldr	d5, [x1, x10]
	fmadd	d4, d0, d5, d4
	fmul	d4, d2, d4
	fabs	d4, d4
	fmul	d4, d6, d4
	fmadd	d3, d11, d3, d4
	str	d3, [x0, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_611
	mov	x8, #0
	ldr	x9, [sp, #112]
LBB0_613:
	ldr	d0, [x9, x8]
	str	d0, [x30, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_613
	mov	x8, #0
	ldr	x1, [sp, #1216]
	add	x9, sp, #5, lsl #12
	add	x9, x9, #2768
LBB0_615:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_615
	mov	x8, #0
	ldr	d0, [x19, #4312]
	ldr	d1, [x19, #4320]
	ldr	d2, [x19, #4248]
LBB0_617:
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d3, [x1, x10]
	ldr	d4, [x2, x8, lsl #3]
	ldr	d5, [x2, x10]
	fmul	d5, d1, d5
	fmadd	d4, d0, d4, d5
	add	x10, x9, x23
	asr	x10, x10, #29
	ldr	d5, [x2, x10]
	fmadd	d4, d0, d5, d4
	fmul	d4, d2, d4
	fabs	d4, d4
	fmul	d4, d6, d4
	fmadd	d3, d11, d3, d4
	str	d3, [x1, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_617
	mov	x8, #0
	ldr	x9, [sp, #104]
LBB0_619:
	ldr	d0, [x9, x8]
	str	d0, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_619
	mov	x8, #0
	ldr	x11, [sp, #1792]
	ldr	x2, [sp, #1160]
	add	x9, sp, #6, lsl #12
	add	x9, x9, #944
LBB0_621:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_621
	mov	x8, #0
	ldr	d0, [x19, #4840]
	ldr	d1, [x19, #4848]
	ldr	d2, [x19, #4776]
LBB0_623:
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d3, [x2, x10]
	ldr	d4, [x3, x8, lsl #3]
	ldr	d5, [x3, x10]
	fmul	d5, d1, d5
	fmadd	d4, d0, d4, d5
	add	x10, x9, x23
	asr	x10, x10, #29
	ldr	d5, [x3, x10]
	fmadd	d4, d0, d5, d4
	fmul	d4, d2, d4
	fabs	d4, d4
	fmul	d4, d6, d4
	fmadd	d3, d11, d3, d4
	str	d3, [x2, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_623
	mov	x8, #0
	ldr	x9, [sp, #96]
LBB0_625:
	ldr	d0, [x9, x8]
	str	d0, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_625
	mov	x8, #0
	ldr	x11, [sp, #1784]
	ldr	x3, [sp, #1104]
	add	x9, sp, #6, lsl #12
	add	x9, x9, #3216
LBB0_627:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_627
	mov	x8, #0
	ldr	d0, [x19, #5368]
	ldr	d1, [x19, #5376]
	ldr	d2, [x19, #5304]
LBB0_629:
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d3, [x3, x10]
	ldr	d4, [x4, x8, lsl #3]
	ldr	d5, [x4, x10]
	fmul	d5, d1, d5
	fmadd	d4, d0, d4, d5
	add	x10, x9, x23
	asr	x10, x10, #29
	ldr	d5, [x4, x10]
	fmadd	d4, d0, d5, d4
	fmul	d4, d2, d4
	fabs	d4, d4
	fmul	d4, d6, d4
	fmadd	d3, d11, d3, d4
	str	d3, [x3, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_629
	mov	x8, #0
	ldr	x9, [sp, #88]
LBB0_631:
	ldr	d0, [x9, x8]
	str	d0, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_631
	mov	x8, #0
	ldr	x11, [sp, #1776]
	ldr	x4, [sp, #1048]
	add	x9, sp, #7, lsl #12
	add	x9, x9, #1392
LBB0_633:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_633
	mov	x8, #0
	ldr	d0, [x19, #5896]
	ldr	d1, [x19, #5904]
	ldr	d2, [x19, #5832]
LBB0_635:
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d3, [x4, x10]
	ldr	d4, [x5, x8, lsl #3]
	ldr	d5, [x5, x10]
	fmul	d5, d1, d5
	fmadd	d4, d0, d4, d5
	add	x10, x9, x23
	asr	x10, x10, #29
	ldr	d5, [x5, x10]
	fmadd	d4, d0, d5, d4
	fmul	d4, d2, d4
	fabs	d4, d4
	fmul	d4, d6, d4
	fmadd	d3, d11, d3, d4
	str	d3, [x4, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_635
	mov	x8, #0
	ldr	x9, [sp, #80]
LBB0_637:
	ldr	d0, [x9, x8]
	str	d0, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_637
	mov	x8, #0
	ldr	x11, [sp, #1768]
	ldr	x5, [sp, #1000]
	add	x9, sp, #7, lsl #12
	add	x9, x9, #3664
LBB0_639:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_639
	mov	x8, #0
	ldr	d0, [x19, #6424]
	ldr	d1, [x19, #6432]
	ldr	d2, [x19, #6360]
LBB0_641:
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d3, [x5, x10]
	ldr	d4, [x6, x8, lsl #3]
	ldr	d5, [x6, x10]
	fmul	d5, d1, d5
	fmadd	d4, d0, d4, d5
	add	x10, x9, x23
	asr	x10, x10, #29
	ldr	d5, [x6, x10]
	fmadd	d4, d0, d5, d4
	fmul	d4, d2, d4
	fabs	d4, d4
	fmul	d4, d6, d4
	fmadd	d3, d11, d3, d4
	str	d3, [x5, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_641
	mov	x8, #0
	ldr	x9, [sp, #72]
LBB0_643:
	ldr	d0, [x9, x8]
	str	d0, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_643
	mov	x8, #0
	ldr	x11, [sp, #1760]
	ldr	x6, [sp, #968]
	add	x9, sp, #8, lsl #12
	add	x9, x9, #1840
LBB0_645:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_645
	mov	x8, #0
	ldr	d0, [x19, #6952]
	ldr	d1, [x19, #6960]
	ldr	d2, [x19, #6888]
LBB0_647:
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d3, [x6, x10]
	ldr	d4, [x7, x8, lsl #3]
	ldr	d5, [x7, x10]
	fmul	d5, d1, d5
	fmadd	d4, d0, d4, d5
	add	x10, x9, x23
	asr	x10, x10, #29
	ldr	d5, [x7, x10]
	fmadd	d4, d0, d5, d4
	fmul	d4, d2, d4
	fabs	d4, d4
	fmul	d4, d6, d4
	fmadd	d3, d11, d3, d4
	str	d3, [x6, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_647
	mov	x8, #0
	ldr	x9, [sp, #64]
LBB0_649:
	ldr	d0, [x9, x8]
	str	d0, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_649
	mov	x8, #0
	ldr	x11, [sp, #1752]
	ldr	x7, [sp, #944]
	add	x9, sp, #9, lsl #12
	add	x9, x9, #16
LBB0_651:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_651
	mov	x8, #0
	ldr	d0, [x19, #7480]
	ldr	d1, [x19, #7488]
	ldr	d2, [x19, #7416]
LBB0_653:
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d3, [x7, x10]
	ldr	d4, [x22, x8, lsl #3]
	ldr	d5, [x22, x10]
	fmul	d5, d1, d5
	fmadd	d4, d0, d4, d5
	add	x10, x9, x23
	asr	x10, x10, #29
	ldr	d5, [x22, x10]
	fmadd	d4, d0, d5, d4
	fmul	d4, d2, d4
	fabs	d4, d4
	fmul	d4, d6, d4
	fmadd	d3, d11, d3, d4
	str	d3, [x7, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_653
	mov	x8, #0
	ldr	x9, [sp, #56]
LBB0_655:
	ldr	d0, [x9, x8]
	str	d0, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_655
	mov	x8, #0
	ldr	x11, [sp, #1744]
	add	x9, sp, #9, lsl #12
	add	x9, x9, #1168
LBB0_657:
	ldr	d0, [x11, x8]
	str	d0, [x9, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_657
	mov	x8, #0
	ldr	d0, [x19, #7736]
	ldr	d1, [x19, #7744]
	ldr	d2, [x19, #7680]
LBB0_659:
	lsl	x9, x8, #32
	add	x10, x9, x27
	asr	x10, x10, #29
	ldr	d3, [x20, x10]
	ldr	d4, [x24, x8, lsl #3]
	ldr	d5, [x24, x10]
	fmul	d5, d1, d5
	fmadd	d4, d0, d4, d5
	add	x10, x9, x23
	asr	x10, x10, #29
	ldr	d5, [x24, x10]
	fmadd	d4, d0, d5, d4
	fmul	d4, d2, d4
	fabs	d4, d4
	fmul	d4, d6, d4
	fmadd	d3, d11, d3, d4
	str	d3, [x20, x8, lsl #3]
	add	x8, x9, x28
	asr	x8, x8, #32
	cmp	x8, #32
	b.lt	LBB0_659
	mov	x8, #0
	ldr	x9, [sp, #48]
LBB0_661:
	ldr	d0, [x9, x8]
	str	d0, [x11, x8]
	add	x8, x8, #8
	cmp	x8, #32
	b.ne	LBB0_661
	mov	x8, #0
	add	x9, sp, #1, lsl #12
	add	x9, x9, #2128
	add	x10, sp, #9, lsl #12
	add	x10, x10, #1456
LBB0_663:
	ldr	d8, [x12, x8]
	ldr	d9, [x14, x8]
	ldr	d10, [x13, x8]
	ldr	d11, [x16, x8]
	ldr	d6, [x15, x8]
	ldr	d7, [x17, x8]
	ldr	d14, [x0, x8]
	ldr	d15, [x1, x8]
	ldr	d2, [x2, x8]
	ldr	d3, [x3, x8]
	ldr	d4, [x4, x8]
	ldr	d5, [x5, x8]
	ldr	d0, [x6, x8]
	ldr	d13, [x7, x8]
	ldr	d12, [x20, x8]
	ldr	d1, [x9, x8]
	str	d1, [x10, x8]
	add	x8, x8, #8
	cmp	x8, #256
	b.ne	LBB0_663
	str	d2, [sp, #2336]
	str	d3, [sp, #2320]
	str	d4, [sp, #2304]
	str	d5, [sp, #2288]
	str	d6, [sp, #2280]
	str	d7, [sp, #2256]
	bl	_log10
	fmov	d1, #20.00000000
	ldr	q2, [sp, #2448]
	fmadd	d0, d0, d1, d2
	fcvt	s0, d0
	str	s0, [sp, #2348]
	mov.16b	v0, v13
	bl	_log10
	fmov	d13, #20.00000000
	ldr	q1, [sp, #2448]
	fmadd	d0, d0, d13, d1
	fcvt	s0, d0
	str	s0, [sp, #2220]
	mov.16b	v0, v12
	bl	_log10
	ldr	q1, [sp, #2448]
	fmadd	d0, d0, d13, d1
	fcvt	s12, d0
	mov.16b	v0, v11
	bl	_log10
	str	q0, [sp, #2240]
	mov.16b	v0, v10
	bl	_log10
	str	q0, [sp, #2192]
	mov.16b	v0, v9
	bl	_log10
	str	q0, [sp, #2224]
	mov.16b	v0, v8
	bl	_log10
	ldr	q2, [sp, #2192]
	ldr	q1, [sp, #2240]
	mov.d	v2[1], v1[0]
	ldr	q1, [sp, #2224]
	mov.d	v0[1], v1[0]
	ldr	q4, [sp, #2432]
	mov.16b	v1, v4
	fmov.2d	v3, #20.00000000
	fmla.2d	v1, v2, v3
	mov.16b	v2, v4
	fmla.2d	v2, v0, v3
	fcvtn	v0.2s, v2.2d
	fcvtn2	v0.4s, v1.2d
	mov	w8, #7788
	str	q0, [x19, x8]
	mov.16b	v0, v15
	bl	_log10
	str	q0, [sp, #2240]
	mov.16b	v0, v14
	bl	_log10
	str	q0, [sp, #2224]
	ldr	d0, [sp, #2256]
	bl	_log10
	str	q0, [sp, #2256]
	ldr	d0, [sp, #2280]
	bl	_log10
	ldr	q2, [sp, #2224]
	ldr	q1, [sp, #2240]
	mov.d	v2[1], v1[0]
	ldr	q1, [sp, #2256]
	mov.d	v0[1], v1[0]
	ldr	q3, [sp, #2432]
	mov.16b	v1, v3
	fmov.2d	v4, #20.00000000
	fmla.2d	v1, v2, v4
	mov.16b	v2, v3
	fmla.2d	v2, v0, v4
	fcvtn	v0.2s, v2.2d
	fcvtn2	v0.4s, v1.2d
	mov	w8, #7804
	str	q0, [x19, x8]
	ldr	d0, [sp, #2288]
	bl	_log10
	str	q0, [sp, #2288]
	ldr	d0, [sp, #2304]
	bl	_log10
	str	q0, [sp, #2304]
	ldr	d0, [sp, #2320]
	bl	_log10
	str	q0, [sp, #2320]
	ldr	d0, [sp, #2336]
	bl	_log10
	mov	x8, #0
	ldr	q2, [sp, #2304]
	ldr	q1, [sp, #2288]
	mov.d	v2[1], v1[0]
	ldr	q1, [sp, #2320]
	mov.d	v0[1], v1[0]
	ldr	q4, [sp, #2432]
	mov.16b	v1, v4
	fmov.2d	v3, #20.00000000
	fmla.2d	v1, v2, v3
	mov.16b	v2, v4
	fmla.2d	v2, v0, v3
	fcvtn	v0.2s, v2.2d
	fcvtn2	v0.4s, v1.2d
	mov	w9, #7820
	str	q0, [x19, x9]
	ldr	s0, [sp, #2348]
	str	s0, [x19, #7836]
	ldr	s0, [sp, #2220]
	str	s0, [x19, #7840]
	str	s12, [x19, #7844]
	add	x9, sp, #9, lsl #12
	add	x9, x9, #1456
	ldr	x10, [sp, #2352]
LBB0_665:
	ldr	d0, [x9, x8, lsl #3]
	fcvt	s0, d0
	str	s0, [x10, x8, lsl #2]
	add	x8, x8, #1
	cmp	x8, #32
	b.ne	LBB0_665
	mov	x8, #0
	ldr	d11, [sp, #2152]
	ldr	d12, [sp, #2144]
	fmov	d13, #1.00000000
	ldr	d14, [sp, #1736]
	ldr	d15, [sp, #1728]
	ldr	d21, [sp, #912]
	ldr	x12, [sp, #2368]
LBB0_667:
	ldr	d0, [x9, x8, lsl #3]
	fcvt	s0, d0
	str	s0, [x12, x8, lsl #2]
	add	x8, x8, #1
	cmp	x8, #32
	b.ne	LBB0_667
	mov	w9, #0
	str	x8, [sp, #2368]
	ldr	w8, [sp, #2364]
	tbnz	w8, #0, LBB0_5
	;MEMBARRIER
	add	sp, sp, #9, lsl #12
	add	sp, sp, #1712
	ldp	x29, x30, [sp, #144]
	ldp	x20, x19, [sp, #128]
	ldp	x22, x21, [sp, #112]
	ldp	x24, x23, [sp, #96]
	ldp	x26, x25, [sp, #80]
	ldp	x28, x27, [sp, #64]
	ldp	d9, d8, [sp, #48]
	ldp	d11, d10, [sp, #32]
	ldp	d13, d12, [sp, #16]
	ldp	d15, d14, [sp], #160
	ret
	.cfi_endproc

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; C++ double
;;
	stp	d15, d14, [sp, #-160]!          ; 16-byte Folded Spill
	stp	d13, d12, [sp, #16]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #32]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #64]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	mov	w9, #41104                      ; =0xa090
Lloh276:
	adrp	x16, ___chkstk_darwin@GOTPAGE
Lloh277:
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #10, lsl #12            ; =40960
	sub	sp, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	.cfi_offset b10, -120
	.cfi_offset b11, -128
	.cfi_offset b12, -136
	.cfi_offset b13, -144
	.cfi_offset b14, -152
	.cfi_offset b15, -160
	str	w1, [sp, #12]                   ; 4-byte Folded Spill
	mov	x19, x0
Lloh278:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh279:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh280:
	ldr	x8, [x8]
	stur	x8, [x29, #-168]
	ldp	x10, x8, [x3]
	stp	x10, x8, [sp, #392]             ; 16-byte Folded Spill
	ldr	s8, [x0, #8]
	mov	x20, #43520                     ; =0xaa00
	movk	x20, #54001, lsl #16
	movk	x20, #25165, lsl #32
	movk	x20, #16208, lsl #48
	ldr	s0, [x0, #48]
	fcvt	d0, s0
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #16297, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	bl	___exp10
	fmov	d10, d0
	ldr	s0, [x19, #88]
	movi	d1, #0000000000000000
	str	d1, [sp, #936]                  ; 8-byte Folded Spill
	fcmp	s0, #0.0
	movi	d13, #0000000000000000
	b.le	LBB17_2
; %bb.1:
	fcvt	d0, s0
	ldr	d1, [x19, #104]
	fneg	d1, d1
	fdiv	d0, d1, d0
	bl	_exp
	fmov	d13, d0
LBB17_2:
	fcvt	d9, s8
	fmov	d8, x20
	add	x20, sp, #9, lsl #12            ; =36864
	add	x20, x20, #3920
	ldr	s0, [x19, #112]
	fcvt	d0, s0
	mov	x8, #140737488355328            ; =0x800000000000
	movk	x8, #49224, lsl #48
	fmov	d1, x8
	fadd	d0, d0, d1
	mov	x8, #6148914691236517205        ; =0x5555555555555555
	movk	x8, #16309, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	bl	_exp2
	mov	x8, #140737488355328            ; =0x800000000000
	movk	x8, #16507, lsl #48
	fmov	d1, x8
	fmul	d12, d0, d1
	fmov	d11, #1.00000000
	str	d13, [sp, #872]                 ; 8-byte Folded Spill
	fsub	d14, d11, d13
	add	x21, sp, #9, lsl #12            ; =36864
	add	x21, x21, #2288
	add	x22, sp, #9, lsl #12            ; =36864
	add	x22, x22, #1856
	ldr	s0, [x19, #240]
	fcvt	d13, s0
	mov	x8, #43520                      ; =0xaa00
	movk	x8, #54001, lsl #16
	movk	x8, #25165, lsl #32
	movk	x8, #16208, lsl #48
	fmov	d15, x8
	add	x25, sp, #9, lsl #12            ; =36864
	add	x25, x25, #1568
	ldr	s0, [x19, #280]
	fcvtzs	w8, s0
	str	w8, [sp, #956]                  ; 4-byte Folded Spill
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #4032
	add	x8, x8, #32
	str	x8, [sp, #760]                  ; 8-byte Folded Spill
	add	x26, sp, #8, lsl #12            ; =32768
	add	x26, x26, #3744
	add	x27, sp, #8, lsl #12            ; =32768
	add	x27, x27, #3456
	ldr	s0, [x19, #600]
	fcvt	d0, s0
	mov	x8, #43516                      ; =0xa9fc
	movk	x8, #54001, lsl #16
	movk	x8, #25165, lsl #32
	movk	x8, #16208, lsl #48
	fmov	d1, x8
	fmul	d1, d0, d1
	fcmp	d1, #0.0
	b.le	LBB17_4
; %bb.3:
	ldr	d1, [x19, #608]
	fneg	d1, d1
	fdiv	d0, d1, d0
	bl	_exp
	str	d0, [sp, #936]                  ; 8-byte Folded Spill
LBB17_4:
	add	x24, sp, #9, lsl #12            ; =36864
	add	x24, x24, #768
	add	x8, x20, #32
	str	x8, [sp, #4984]                 ; 8-byte Folded Spill
	fmul	d9, d9, d8
	add	x16, x21, #32
	fmul	d10, d10, d8
	add	x17, x22, #32
	add	x8, x25, #32
	str	x8, [sp, #4976]                 ; 8-byte Folded Spill
	fmul	d3, d14, d12
	add	x8, x26, #32
	str	x8, [sp, #4920]                 ; 8-byte Folded Spill
	add	x8, x27, #32
	str	x8, [sp, #4904]                 ; 8-byte Folded Spill
	fmul	d8, d13, d15
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #2880
	ldr	d12, [sp, #936]                 ; 8-byte Folded Reload
	fsub	d13, d11, d12
	add	x8, x8, #32
	str	x8, [sp, #680]                  ; 8-byte Folded Spill
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #2592
	add	x22, x8, #32
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #2304
	add	x8, x8, #32
	str	x8, [sp, #408]                  ; 8-byte Folded Spill
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #1760
	add	x8, x8, #32
	str	x8, [sp, #792]                  ; 8-byte Folded Spill
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #1472
	add	x8, x8, #32
	str	x8, [sp, #4856]                 ; 8-byte Folded Spill
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #1184
	add	x20, x8, #32
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #608
	add	x8, x8, #32
	str	x8, [sp, #688]                  ; 8-byte Folded Spill
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #320
	add	x28, x8, #32
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #32
	add	x8, x8, #32
	str	x8, [sp, #416]                  ; 8-byte Folded Spill
	add	x8, sp, #7, lsl #12             ; =28672
	add	x8, x8, #3584
	add	x4, x8, #32
	add	x8, sp, #7, lsl #12             ; =28672
	add	x8, x8, #3296
	ldr	s0, [x19, #7792]
	fcvt	d0, s0
	str	d0, [sp, #384]                  ; 8-byte Folded Spill
	fmov.2d	v0, #1.00000000
	str	q0, [sp, #352]                  ; 16-byte Folded Spill
	add	x27, x8, #32
	add	x8, sp, #7, lsl #12             ; =28672
	add	x8, x8, #3008
	add	x8, x8, #32
	str	x8, [sp, #4960]                 ; 8-byte Folded Spill
	add	x8, sp, #7, lsl #12             ; =28672
	add	x8, x8, #2432
	add	x8, x8, #32
	str	x8, [sp, #696]                  ; 8-byte Folded Spill
	add	x8, sp, #7, lsl #12             ; =28672
	add	x8, x8, #2144
	add	x25, x8, #32
	add	x8, sp, #7, lsl #12             ; =28672
	add	x8, x8, #1856
	add	x10, x8, #32
	add	x8, sp, #7, lsl #12             ; =28672
	add	x8, x8, #1312
	add	x7, x8, #32
	add	x8, sp, #7, lsl #12             ; =28672
	add	x8, x8, #1024
	add	x8, x8, #32
	str	x8, [sp, #4848]                 ; 8-byte Folded Spill
	add	x8, sp, #7, lsl #12             ; =28672
	add	x8, x8, #736
	add	x8, x8, #32
	str	x8, [sp, #4896]                 ; 8-byte Folded Spill
	add	x8, sp, #7, lsl #12             ; =28672
	add	x8, x8, #160
	add	x30, x8, #32
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #3968
	add	x8, x8, #32
	str	x8, [sp, #512]                  ; 8-byte Folded Spill
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #3680
	add	x8, x8, #32
	str	x8, [sp, #432]                  ; 8-byte Folded Spill
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #3136
	add	x8, x8, #32
	str	x8, [sp, #784]                  ; 8-byte Folded Spill
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #2848
	add	x8, x8, #32
	str	x8, [sp, #840]                  ; 8-byte Folded Spill
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #2560
	add	x8, x8, #32
	str	x8, [sp, #856]                  ; 8-byte Folded Spill
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #1984
	add	x8, x8, #32
	str	x8, [sp, #704]                  ; 8-byte Folded Spill
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #1696
	add	x8, x8, #32
	str	x8, [sp, #520]                  ; 8-byte Folded Spill
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #1408
	add	x8, x8, #32
	str	x8, [sp, #440]                  ; 8-byte Folded Spill
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #864
	add	x13, x8, #32
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #576
	add	x8, x8, #32
	str	x8, [sp, #4928]                 ; 8-byte Folded Spill
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #288
	add	x26, x8, #32
	add	x8, sp, #5, lsl #12             ; =20480
	add	x8, x8, #3808
	add	x8, x8, #32
	str	x8, [sp, #928]                  ; 8-byte Folded Spill
	add	x8, sp, #5, lsl #12             ; =20480
	add	x8, x8, #3520
	add	x23, x8, #32
	add	x8, sp, #5, lsl #12             ; =20480
	add	x8, x8, #3232
	add	x8, x8, #32
	str	x8, [sp, #448]                  ; 8-byte Folded Spill
	add	x8, sp, #5, lsl #12             ; =20480
	add	x8, x8, #2688
	add	x5, x8, #32
	add	x8, sp, #5, lsl #12             ; =20480
	add	x8, x8, #2400
	add	x8, x8, #32
	str	x8, [sp, #4864]                 ; 8-byte Folded Spill
	add	x8, sp, #5, lsl #12             ; =20480
	add	x8, x8, #2112
	add	x8, x8, #32
	str	x8, [sp, #592]                  ; 8-byte Folded Spill
	add	x8, sp, #5, lsl #12             ; =20480
	add	x8, x8, #1536
	add	x8, x8, #32
	str	x8, [sp, #712]                  ; 8-byte Folded Spill
	add	x8, sp, #5, lsl #12             ; =20480
	add	x8, x8, #1248
	add	x8, x8, #32
	str	x8, [sp, #528]                  ; 8-byte Folded Spill
	add	x8, sp, #5, lsl #12             ; =20480
	add	x8, x8, #960
	add	x8, x8, #32
	str	x8, [sp, #456]                  ; 8-byte Folded Spill
	add	x8, sp, #5, lsl #12             ; =20480
	add	x8, x8, #416
	add	x21, x8, #32
	add	x8, sp, #5, lsl #12             ; =20480
	add	x8, x8, #128
	add	x8, x8, #32
	str	x8, [sp, #4936]                 ; 8-byte Folded Spill
	add	x8, sp, #4, lsl #12             ; =16384
	add	x8, x8, #3936
	add	x15, x8, #32
	add	x8, sp, #4, lsl #12             ; =16384
	add	x8, x8, #3360
	add	x8, x8, #32
	str	x8, [sp, #720]                  ; 8-byte Folded Spill
	add	x8, sp, #4, lsl #12             ; =16384
	add	x8, x8, #3072
	add	x8, x8, #32
	str	x8, [sp, #664]                  ; 8-byte Folded Spill
	add	x8, sp, #4, lsl #12             ; =16384
	add	x8, x8, #2784
	add	x8, x8, #32
	str	x8, [sp, #464]                  ; 8-byte Folded Spill
	add	x8, sp, #4, lsl #12             ; =16384
	add	x8, x8, #2240
	add	x8, x8, #32
	str	x8, [sp, #944]                  ; 8-byte Folded Spill
	add	x8, sp, #4, lsl #12             ; =16384
	add	x8, x8, #1952
	add	x8, x8, #32
	str	x8, [sp, #4872]                 ; 8-byte Folded Spill
	add	x8, sp, #4, lsl #12             ; =16384
	add	x8, x8, #1664
	add	x8, x8, #32
	str	x8, [sp, #600]                  ; 8-byte Folded Spill
	add	x8, sp, #4, lsl #12             ; =16384
	add	x8, x8, #1088
	add	x8, x8, #32
	str	x8, [sp, #728]                  ; 8-byte Folded Spill
	add	x8, sp, #4, lsl #12             ; =16384
	add	x8, x8, #800
	add	x8, x8, #32
	str	x8, [sp, #536]                  ; 8-byte Folded Spill
	add	x8, sp, #4, lsl #12             ; =16384
	add	x8, x8, #512
	add	x8, x8, #32
	str	x8, [sp, #472]                  ; 8-byte Folded Spill
	add	x8, sp, #3, lsl #12             ; =12288
	add	x8, x8, #4064
	add	x11, x8, #32
	add	x8, sp, #3, lsl #12             ; =12288
	add	x8, x8, #3776
	add	x3, x8, #32
	add	x8, sp, #3, lsl #12             ; =12288
	add	x8, x8, #3488
	add	x1, x8, #32
	add	x8, sp, #3, lsl #12             ; =12288
	add	x8, x8, #2912
	add	x8, x8, #32
	str	x8, [sp, #736]                  ; 8-byte Folded Spill
	add	x8, sp, #3, lsl #12             ; =12288
	add	x8, x8, #2624
	add	x8, x8, #32
	str	x8, [sp, #544]                  ; 8-byte Folded Spill
	add	x8, sp, #3, lsl #12             ; =12288
	add	x8, x8, #2336
	add	x8, x8, #32
	str	x8, [sp, #480]                  ; 8-byte Folded Spill
	add	x8, sp, #3, lsl #12             ; =12288
	add	x8, x8, #1792
	add	x0, x8, #32
	add	x8, sp, #3, lsl #12             ; =12288
	add	x8, x8, #1504
	add	x8, x8, #32
	str	x8, [sp, #4880]                 ; 8-byte Folded Spill
	add	x8, sp, #3, lsl #12             ; =12288
	add	x8, x8, #1216
	add	x2, x8, #32
	add	x8, sp, #3, lsl #12             ; =12288
	add	x8, x8, #640
	add	x8, x8, #32
	str	x8, [sp, #744]                  ; 8-byte Folded Spill
	add	x8, sp, #3, lsl #12             ; =12288
	add	x8, x8, #352
	add	x8, x8, #32
	str	x8, [sp, #672]                  ; 8-byte Folded Spill
	add	x8, sp, #3, lsl #12             ; =12288
	add	x8, x8, #64
	add	x8, x8, #32
	str	x8, [sp, #488]                  ; 8-byte Folded Spill
	add	x8, sp, #2, lsl #12             ; =8192
	add	x8, x8, #3616
	add	x9, x8, #32
	add	x8, sp, #2, lsl #12             ; =8192
	add	x8, x8, #3328
	add	x8, x8, #32
	str	x8, [sp, #4944]                 ; 8-byte Folded Spill
	add	x8, sp, #2, lsl #12             ; =8192
	add	x8, x8, #3040
	add	x14, x8, #32
	add	x8, sp, #2, lsl #12             ; =8192
	add	x8, x8, #2464
	add	x6, x8, #32
	add	x8, sp, #2, lsl #12             ; =8192
	add	x8, x8, #2176
	add	x8, x8, #32
	str	x8, [sp, #552]                  ; 8-byte Folded Spill
	add	x8, sp, #2, lsl #12             ; =8192
	add	x8, x8, #1888
	add	x8, x8, #32
	str	x8, [sp, #496]                  ; 8-byte Folded Spill
	add	x8, sp, #2, lsl #12             ; =8192
	add	x8, x8, #1344
	add	x8, x8, #32
	str	x8, [sp, #568]                  ; 8-byte Folded Spill
	add	x8, sp, #2, lsl #12             ; =8192
	add	x8, x8, #1056
	add	x8, x8, #32
	str	x8, [sp, #4888]                 ; 8-byte Folded Spill
	add	x8, sp, #2, lsl #12             ; =8192
	add	x8, x8, #768
	add	x12, x8, #32
	add	x8, sp, #2, lsl #12             ; =8192
	add	x8, x8, #192
	add	x8, x8, #32
	str	x8, [sp, #752]                  ; 8-byte Folded Spill
	add	x8, sp, #1, lsl #12             ; =4096
	add	x8, x8, #4000
	add	x8, x8, #32
	str	x8, [sp, #560]                  ; 8-byte Folded Spill
	add	x8, sp, #1, lsl #12             ; =4096
	add	x8, x8, #3712
	add	x8, x8, #32
	str	x8, [sp, #504]                  ; 8-byte Folded Spill
	add	x8, sp, #1, lsl #12             ; =4096
	add	x8, x8, #3168
	add	x8, x8, #32
	str	x8, [sp, #576]                  ; 8-byte Folded Spill
	add	x8, sp, #1, lsl #12             ; =4096
	add	x8, x8, #2880
	add	x8, x8, #32
	str	x8, [sp, #4952]                 ; 8-byte Folded Spill
	add	x8, sp, #1, lsl #12             ; =4096
	add	x8, x8, #2592
	add	x8, x8, #32
	str	x8, [sp, #632]                  ; 8-byte Folded Spill
	add	x8, sp, #1, lsl #12             ; =4096
	add	x8, x8, #2016
	add	x8, x8, #32
	str	x8, [sp, #584]                  ; 8-byte Folded Spill
	add	x8, sp, #1, lsl #12             ; =4096
	add	x8, x8, #1728
	add	x8, x8, #32
	str	x8, [sp, #848]                  ; 8-byte Folded Spill
	add	x8, sp, #1, lsl #12             ; =4096
	add	x8, x8, #1440
	add	x8, x8, #32
	str	x8, [sp, #640]                  ; 8-byte Folded Spill
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	subs	w8, w8, #32
	str	x8, [sp, #336]                  ; 8-byte Folded Spill
	str	x12, [sp, #624]                 ; 8-byte Folded Spill
	str	x14, [sp, #616]                 ; 8-byte Folded Spill
	str	x2, [sp, #608]                  ; 8-byte Folded Spill
	str	x1, [sp, #864]                  ; 8-byte Folded Spill
	str	x15, [sp, #920]                 ; 8-byte Folded Spill
	str	x3, [sp, #4968]                 ; 8-byte Folded Spill
	str	x27, [sp, #4912]                ; 8-byte Folded Spill
	str	x13, [sp, #800]                 ; 8-byte Folded Spill
	str	x10, [sp, #424]                 ; 8-byte Folded Spill
	str	x16, [sp, #776]                 ; 8-byte Folded Spill
	str	x17, [sp, #768]                 ; 8-byte Folded Spill
	str	x20, [sp, #648]                 ; 8-byte Folded Spill
	str	x9, [sp, #832]                  ; 8-byte Folded Spill
	str	x0, [sp, #904]                  ; 8-byte Folded Spill
	str	x11, [sp, #824]                 ; 8-byte Folded Spill
	str	x21, [sp, #816]                 ; 8-byte Folded Spill
	str	x5, [sp, #896]                  ; 8-byte Folded Spill
	str	x4, [sp, #808]                  ; 8-byte Folded Spill
	str	x7, [sp, #888]                  ; 8-byte Folded Spill
	str	x6, [sp, #880]                  ; 8-byte Folded Spill
	str	x23, [sp, #656]                 ; 8-byte Folded Spill
	str	x30, [sp, #912]                 ; 8-byte Folded Spill
	b.ge	LBB17_6
; %bb.5:
	mov	w10, #0                         ; =0x0
	ldr	d2, [sp, #872]                  ; 8-byte Folded Reload
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	subs	w8, w8, w10
	b.gt	LBB17_157
	b	LBB17_680
LBB17_6:
	str	d13, [sp, #344]                 ; 8-byte Folded Spill
	mov	x10, #0                         ; =0x0
	ldr	w8, [sp, #956]                  ; 4-byte Folded Reload
	cmp	w8, #0
	cset	w8, eq
	mov	w9, #4392                       ; =0x1128
	add	x9, x19, x9
	str	x9, [sp, #296]                  ; 8-byte Folded Spill
	mov	w9, #4472                       ; =0x1178
	add	x9, x19, x9
	str	x9, [sp, #4816]                 ; 8-byte Folded Spill
	mov	w9, #4544                       ; =0x11c0
	add	x9, x19, x9
	str	x9, [sp, #4808]                 ; 8-byte Folded Spill
	mov	w9, #4920                       ; =0x1338
	add	x9, x19, x9
	str	x9, [sp, #288]                  ; 8-byte Folded Spill
	mov	w9, #5000                       ; =0x1388
	add	x9, x19, x9
	str	x9, [sp, #4800]                 ; 8-byte Folded Spill
	mov	w9, #5072                       ; =0x13d0
	add	x9, x19, x9
	str	x9, [sp, #4784]                 ; 8-byte Folded Spill
	mov	w9, #5448                       ; =0x1548
	add	x9, x19, x9
	str	x9, [sp, #280]                  ; 8-byte Folded Spill
	mov	w9, #5528                       ; =0x1598
	add	x9, x19, x9
	str	x9, [sp, #4776]                 ; 8-byte Folded Spill
	mov	w9, #5600                       ; =0x15e0
	add	x9, x19, x9
	str	x9, [sp, #4768]                 ; 8-byte Folded Spill
	mov	w9, #5976                       ; =0x1758
	add	x9, x19, x9
	str	x9, [sp, #272]                  ; 8-byte Folded Spill
	mov	w9, #6056                       ; =0x17a8
	add	x9, x19, x9
	str	x9, [sp, #4760]                 ; 8-byte Folded Spill
	mov	w9, #6128                       ; =0x17f0
	add	x9, x19, x9
	str	x9, [sp, #4752]                 ; 8-byte Folded Spill
	mov	w9, #6504                       ; =0x1968
	add	x9, x19, x9
	str	x9, [sp, #264]                  ; 8-byte Folded Spill
	mov	w9, #6584                       ; =0x19b8
	add	x9, x19, x9
	str	x9, [sp, #4744]                 ; 8-byte Folded Spill
	mov	w9, #6656                       ; =0x1a00
	add	x9, x19, x9
	str	x9, [sp, #4736]                 ; 8-byte Folded Spill
	mov	w9, #7032                       ; =0x1b78
	add	x9, x19, x9
	str	x9, [sp, #256]                  ; 8-byte Folded Spill
	mov	w9, #7112                       ; =0x1bc8
	add	x9, x19, x9
	str	x9, [sp, #4728]                 ; 8-byte Folded Spill
	mov	w9, #7184                       ; =0x1c10
	add	x9, x19, x9
	str	x9, [sp, #4720]                 ; 8-byte Folded Spill
	mov	w9, #4120                       ; =0x1018
	add	x9, x19, x9
	str	x9, [sp, #248]                  ; 8-byte Folded Spill
	mov	w9, #4648                       ; =0x1228
	add	x9, x19, x9
	str	x9, [sp, #240]                  ; 8-byte Folded Spill
	mov	w9, #5176                       ; =0x1438
	add	x9, x19, x9
	str	x9, [sp, #224]                  ; 8-byte Folded Spill
	mov	w9, #5704                       ; =0x1648
	add	x9, x19, x9
	str	x9, [sp, #216]                  ; 8-byte Folded Spill
	mov	w9, #6232                       ; =0x1858
	add	x9, x19, x9
	str	x9, [sp, #200]                  ; 8-byte Folded Spill
	mov	w9, #6760                       ; =0x1a68
	add	x9, x19, x9
	str	x9, [sp, #192]                  ; 8-byte Folded Spill
	mov	w9, #7288                       ; =0x1c78
	add	x9, x19, x9
	str	x9, [sp, #184]                  ; 8-byte Folded Spill
	mov	w9, #7560                       ; =0x1d88
	add	x9, x19, x9
	str	x9, [sp, #176]                  ; 8-byte Folded Spill
	mov	w9, #4200                       ; =0x1068
	add	x21, x19, x9
	mov	w9, #4728                       ; =0x1278
	add	x9, x19, x9
	str	x9, [sp, #4712]                 ; 8-byte Folded Spill
	mov	w9, #5256                       ; =0x1488
	add	x9, x19, x9
	str	x9, [sp, #4704]                 ; 8-byte Folded Spill
	dup.2s	v0, w8
	mov	w8, #5784                       ; =0x1698
	add	x8, x19, x8
	str	x8, [sp, #4696]                 ; 8-byte Folded Spill
	mov	w8, #6312                       ; =0x18a8
	add	x8, x19, x8
	str	x8, [sp, #4688]                 ; 8-byte Folded Spill
	mov	w8, #6840                       ; =0x1ab8
	add	x8, x19, x8
	str	x8, [sp, #4680]                 ; 8-byte Folded Spill
	mov	w8, #7368                       ; =0x1cc8
	add	x8, x19, x8
	str	x8, [sp, #4672]                 ; 8-byte Folded Spill
	mov	w8, #7640                       ; =0x1dd8
	add	x8, x19, x8
	str	x8, [sp, #4664]                 ; 8-byte Folded Spill
	mov	w8, #4280                       ; =0x10b8
	add	x8, x19, x8
	str	x8, [sp, #4656]                 ; 8-byte Folded Spill
	mov	w8, #4808                       ; =0x12c8
	add	x8, x19, x8
	str	x8, [sp, #4648]                 ; 8-byte Folded Spill
	mov	w8, #5336                       ; =0x14d8
	add	x8, x19, x8
	str	x8, [sp, #4640]                 ; 8-byte Folded Spill
	mov	w8, #5864                       ; =0x16e8
	add	x8, x19, x8
	str	x8, [sp, #4632]                 ; 8-byte Folded Spill
	mov	w8, #6392                       ; =0x18f8
	add	x8, x19, x8
	str	x8, [sp, #4624]                 ; 8-byte Folded Spill
	mov	w8, #6920                       ; =0x1b08
	add	x8, x19, x8
	str	x8, [sp, #4616]                 ; 8-byte Folded Spill
	mov	w8, #7448                       ; =0x1d18
	add	x8, x19, x8
	str	x8, [sp, #4608]                 ; 8-byte Folded Spill
	mov	w8, #7712                       ; =0x1e20
	add	x8, x19, x8
	str	x8, [sp, #4600]                 ; 8-byte Folded Spill
	mov	w8, #4336                       ; =0x10f0
	add	x8, x19, x8
	str	x8, [sp, #4592]                 ; 8-byte Folded Spill
	mov	w8, #4864                       ; =0x1300
	add	x8, x19, x8
	str	x8, [sp, #4584]                 ; 8-byte Folded Spill
	mov	w8, #5392                       ; =0x1510
	add	x8, x19, x8
	str	x8, [sp, #4576]                 ; 8-byte Folded Spill
	mov	w8, #5920                       ; =0x1720
	add	x8, x19, x8
	str	x8, [sp, #4568]                 ; 8-byte Folded Spill
	mov	w8, #6448                       ; =0x1930
	add	x8, x19, x8
	str	x8, [sp, #4560]                 ; 8-byte Folded Spill
	mov	w8, #6976                       ; =0x1b40
	add	x8, x19, x8
	str	x8, [sp, #4552]                 ; 8-byte Folded Spill
	mov	w8, #7504                       ; =0x1d50
	add	x8, x19, x8
	str	x8, [sp, #4544]                 ; 8-byte Folded Spill
	mov	w8, #7760                       ; =0x1e50
	add	x8, x19, x8
	str	x8, [sp, #4536]                 ; 8-byte Folded Spill
	mov	x8, #34603                      ; =0x872b
	movk	x8, #55574, lsl #16
	movk	x8, #63438, lsl #32
	movk	x8, #16367, lsl #48
	str	x8, [sp, #160]                  ; 8-byte Folded Spill
	fmov	d12, #-1.00000000
	ushll.2d	v0, v0, #0
	shl.2d	v0, v0, #63
	cmlt.2d	v0, v0, #0
	str	q0, [sp, #144]                  ; 16-byte Folded Spill
	add	x9, x19, #248
	add	x8, x19, #696
	stp	x8, x9, [sp, #128]              ; 16-byte Folded Spill
	add	x8, x19, #776
	str	x8, [sp, #4528]                 ; 8-byte Folded Spill
	add	x9, x19, #1224
	add	x8, x19, #1304
	str	x8, [sp, #4520]                 ; 8-byte Folded Spill
	add	x8, x19, #1376
	str	x8, [sp, #4512]                 ; 8-byte Folded Spill
	add	x8, x19, #1752
	stp	x8, x9, [sp, #112]              ; 16-byte Folded Spill
	add	x8, x19, #1832
	str	x8, [sp, #4504]                 ; 8-byte Folded Spill
	add	x8, x19, #1904
	str	x8, [sp, #4496]                 ; 8-byte Folded Spill
	add	x9, x19, #2280
	add	x8, x19, #2360
	str	x8, [sp, #4488]                 ; 8-byte Folded Spill
	add	x8, x19, #2432
	str	x8, [sp, #4480]                 ; 8-byte Folded Spill
	add	x8, x19, #2808
	stp	x8, x9, [sp, #96]               ; 16-byte Folded Spill
	add	x8, x19, #2888
	str	x8, [sp, #4472]                 ; 8-byte Folded Spill
	add	x8, x19, #2960
	str	x8, [sp, #4464]                 ; 8-byte Folded Spill
	add	x9, x19, #3336
	add	x8, x19, #3416
	str	x8, [sp, #4456]                 ; 8-byte Folded Spill
	add	x8, x19, #3488
	str	x8, [sp, #4448]                 ; 8-byte Folded Spill
	add	x8, x19, #3864
	stp	x8, x9, [sp, #80]               ; 16-byte Folded Spill
	add	x8, x19, #3944
	str	x8, [sp, #4440]                 ; 8-byte Folded Spill
	add	x8, x19, #4016
	str	x8, [sp, #4432]                 ; 8-byte Folded Spill
	add	x9, x19, #408
	add	x8, x19, #952
	stp	x8, x9, [sp, #64]               ; 16-byte Folded Spill
	add	x9, x19, #1480
	add	x8, x19, #2008
	stp	x8, x9, [sp, #48]               ; 16-byte Folded Spill
	add	x9, x19, #2536
	add	x8, x19, #3064
	stp	x8, x9, [sp, #32]               ; 16-byte Folded Spill
	add	x8, x19, #3592
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	add	x8, x19, #488
	str	x8, [sp, #4424]                 ; 8-byte Folded Spill
	add	x8, x19, #1032
	str	x8, [sp, #4416]                 ; 8-byte Folded Spill
	add	x8, x19, #1560
	str	x8, [sp, #4408]                 ; 8-byte Folded Spill
	add	x8, x19, #2088
	str	x8, [sp, #4400]                 ; 8-byte Folded Spill
	add	x8, x19, #2616
	str	x8, [sp, #4392]                 ; 8-byte Folded Spill
	add	x8, x19, #3144
	str	x8, [sp, #4384]                 ; 8-byte Folded Spill
	add	x8, x19, #3672
	str	x8, [sp, #4376]                 ; 8-byte Folded Spill
	add	x8, x19, #568
	str	x8, [sp, #4368]                 ; 8-byte Folded Spill
	add	x8, x19, #1112
	str	x8, [sp, #4360]                 ; 8-byte Folded Spill
	add	x8, x19, #1640
	str	x8, [sp, #4352]                 ; 8-byte Folded Spill
	add	x8, x19, #2168
	str	x8, [sp, #4344]                 ; 8-byte Folded Spill
	add	x8, x19, #2696
	str	x8, [sp, #4336]                 ; 8-byte Folded Spill
	add	x8, x19, #3224
	str	x8, [sp, #4328]                 ; 8-byte Folded Spill
	add	x8, x19, #3752
	str	x8, [sp, #4320]                 ; 8-byte Folded Spill
	add	x8, x19, #1168
	str	x8, [sp, #4312]                 ; 8-byte Folded Spill
	add	x8, x19, #1696
	str	x8, [sp, #4304]                 ; 8-byte Folded Spill
	add	x8, x19, #2224
	str	x8, [sp, #4296]                 ; 8-byte Folded Spill
	add	x8, x19, #2752
	str	x8, [sp, #4288]                 ; 8-byte Folded Spill
	add	x8, x19, #3280
	str	x8, [sp, #4280]                 ; 8-byte Folded Spill
	add	x8, x19, #3808
	str	x8, [sp, #4272]                 ; 8-byte Folded Spill
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #2144
	add	x8, x8, #12
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	d2, [sp, #872]                  ; 8-byte Folded Reload
	str	x26, [sp, #376]                 ; 8-byte Folded Spill
	str	x25, [sp, #4832]                ; 8-byte Folded Spill
	stp	d9, d8, [sp, #320]              ; 16-byte Folded Spill
	stp	d3, d10, [sp, #304]             ; 16-byte Folded Spill
	str	x28, [sp, #232]                 ; 8-byte Folded Spill
	str	x22, [sp, #208]                 ; 8-byte Folded Spill
	str	x21, [sp, #168]                 ; 8-byte Folded Spill
LBB17_7:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB17_8 Depth 2
                                        ;     Child Loop BB17_11 Depth 2
                                        ;     Child Loop BB17_14 Depth 2
                                        ;     Child Loop BB17_16 Depth 2
                                        ;     Child Loop BB17_18 Depth 2
                                        ;     Child Loop BB17_20 Depth 2
                                        ;     Child Loop BB17_22 Depth 2
                                        ;     Child Loop BB17_24 Depth 2
                                        ;     Child Loop BB17_26 Depth 2
                                        ;     Child Loop BB17_28 Depth 2
                                        ;     Child Loop BB17_30 Depth 2
                                        ;     Child Loop BB17_32 Depth 2
                                        ;     Child Loop BB17_34 Depth 2
                                        ;     Child Loop BB17_36 Depth 2
                                        ;     Child Loop BB17_38 Depth 2
                                        ;     Child Loop BB17_40 Depth 2
                                        ;     Child Loop BB17_42 Depth 2
                                        ;     Child Loop BB17_44 Depth 2
                                        ;     Child Loop BB17_46 Depth 2
                                        ;     Child Loop BB17_48 Depth 2
                                        ;     Child Loop BB17_50 Depth 2
                                        ;     Child Loop BB17_52 Depth 2
                                        ;     Child Loop BB17_54 Depth 2
                                        ;     Child Loop BB17_56 Depth 2
                                        ;     Child Loop BB17_58 Depth 2
                                        ;     Child Loop BB17_60 Depth 2
                                        ;     Child Loop BB17_62 Depth 2
                                        ;     Child Loop BB17_64 Depth 2
                                        ;     Child Loop BB17_66 Depth 2
                                        ;     Child Loop BB17_68 Depth 2
                                        ;     Child Loop BB17_70 Depth 2
                                        ;     Child Loop BB17_72 Depth 2
                                        ;     Child Loop BB17_74 Depth 2
                                        ;     Child Loop BB17_76 Depth 2
                                        ;     Child Loop BB17_78 Depth 2
                                        ;     Child Loop BB17_80 Depth 2
                                        ;     Child Loop BB17_82 Depth 2
                                        ;     Child Loop BB17_84 Depth 2
                                        ;     Child Loop BB17_86 Depth 2
                                        ;     Child Loop BB17_88 Depth 2
                                        ;     Child Loop BB17_90 Depth 2
                                        ;     Child Loop BB17_92 Depth 2
                                        ;     Child Loop BB17_94 Depth 2
                                        ;     Child Loop BB17_96 Depth 2
                                        ;     Child Loop BB17_98 Depth 2
                                        ;     Child Loop BB17_100 Depth 2
                                        ;     Child Loop BB17_102 Depth 2
                                        ;     Child Loop BB17_104 Depth 2
                                        ;     Child Loop BB17_106 Depth 2
                                        ;     Child Loop BB17_108 Depth 2
                                        ;     Child Loop BB17_110 Depth 2
                                        ;     Child Loop BB17_112 Depth 2
                                        ;     Child Loop BB17_114 Depth 2
                                        ;     Child Loop BB17_116 Depth 2
                                        ;     Child Loop BB17_118 Depth 2
                                        ;     Child Loop BB17_120 Depth 2
                                        ;     Child Loop BB17_122 Depth 2
                                        ;     Child Loop BB17_124 Depth 2
                                        ;     Child Loop BB17_126 Depth 2
                                        ;     Child Loop BB17_128 Depth 2
                                        ;     Child Loop BB17_130 Depth 2
                                        ;     Child Loop BB17_132 Depth 2
                                        ;     Child Loop BB17_134 Depth 2
                                        ;     Child Loop BB17_136 Depth 2
                                        ;     Child Loop BB17_138 Depth 2
                                        ;     Child Loop BB17_140 Depth 2
                                        ;     Child Loop BB17_142 Depth 2
                                        ;     Child Loop BB17_144 Depth 2
                                        ;     Child Loop BB17_146 Depth 2
                                        ;     Child Loop BB17_148 Depth 2
                                        ;     Child Loop BB17_150 Depth 2
                                        ;     Child Loop BB17_152 Depth 2
                                        ;     Child Loop BB17_154 Depth 2
	ldur	q0, [x19, #136]
	ldur	q1, [x19, #120]
	str	q0, [sp, #40224]
	str	q1, [sp, #40208]
	ldr	d0, [x24, #2600]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2608]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2616]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2624]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2632]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2640]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2648]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2656]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2664]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2672]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2680]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2688]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2696]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2704]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2712]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2720]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2728]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2736]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2744]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2752]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2760]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2768]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2776]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2784]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2792]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2800]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2808]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2816]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2824]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2832]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2840]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2848]
	fmadd	d0, d0, d2, d3
	str	d0, [x24, #2856]
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #3344
	ldp	q0, q1, [x8, #256]
	stur	q0, [x19, #120]
	stur	q1, [x19, #136]
	ldr	d0, [x19, #152]
	ldr	q1, [sp, #40240]
	ldr	q2, [sp, #40256]
	fmul.2d	v1, v1, v0[0]
	fmul.2d	v2, v2, v0[0]
	str	q1, [sp, #39952]
	str	q2, [sp, #39968]
	ldr	q1, [sp, #40272]
	ldr	q2, [sp, #40288]
	fmul.2d	v1, v1, v0[0]
	fmul.2d	v2, v2, v0[0]
	str	q1, [sp, #39984]
	str	q2, [sp, #40000]
	ldr	q1, [sp, #40304]
	ldr	q2, [sp, #40320]
	fmul.2d	v1, v1, v0[0]
	fmul.2d	v2, v2, v0[0]
	str	q1, [sp, #40016]
	str	q2, [sp, #40032]
	ldr	q1, [sp, #40336]
	ldr	q2, [sp, #40352]
	fmul.2d	v1, v1, v0[0]
	fmul.2d	v2, v2, v0[0]
	str	q1, [sp, #40048]
	str	q2, [sp, #40064]
	ldr	q1, [sp, #40368]
	ldr	q2, [sp, #40384]
	fmul.2d	v1, v1, v0[0]
	fmul.2d	v2, v2, v0[0]
	str	q1, [sp, #40080]
	str	q2, [sp, #40096]
	ldr	q1, [sp, #40400]
	ldr	q2, [sp, #40416]
	fmul.2d	v1, v1, v0[0]
	fmul.2d	v2, v2, v0[0]
	str	q1, [sp, #40112]
	str	q2, [sp, #40128]
	ldr	q1, [sp, #40432]
	ldr	q2, [sp, #40448]
	fmul.2d	v1, v1, v0[0]
	fmul.2d	v2, v2, v0[0]
	str	q1, [sp, #40144]
	str	q2, [sp, #40160]
	ldr	q1, [sp, #40464]
	ldr	q2, [sp, #40480]
	fmul.2d	v1, v1, v0[0]
	fmul.2d	v0, v2, v0[0]
	str	x10, [sp, #4840]                ; 8-byte Folded Spill
	ldr	x8, [sp, #392]                  ; 8-byte Folded Reload
	add	x8, x8, x10, lsl #2
	str	x8, [sp, #4264]                 ; 8-byte Folded Spill
	str	q1, [sp, #40176]
	str	q0, [sp, #40192]
	ldr	d0, [x24, #2320]
	bl	_sin
	str	d0, [x24, #2064]
	ldr	d0, [x24, #2328]
	bl	_sin
	str	d0, [x24, #2072]
	ldr	d0, [x24, #2336]
	bl	_sin
	str	d0, [x24, #2080]
	ldr	d0, [x24, #2344]
	bl	_sin
	str	d0, [x24, #2088]
	ldr	d0, [x24, #2352]
	bl	_sin
	str	d0, [x24, #2096]
	ldr	d0, [x24, #2360]
	bl	_sin
	str	d0, [x24, #2104]
	ldr	d0, [x24, #2368]
	bl	_sin
	str	d0, [x24, #2112]
	ldr	d0, [x24, #2376]
	bl	_sin
	str	d0, [x24, #2120]
	ldr	d0, [x24, #2384]
	bl	_sin
	str	d0, [x24, #2128]
	ldr	d0, [x24, #2392]
	bl	_sin
	str	d0, [x24, #2136]
	ldr	d0, [x24, #2400]
	bl	_sin
	str	d0, [x24, #2144]
	ldr	d0, [x24, #2408]
	bl	_sin
	str	d0, [x24, #2152]
	ldr	d0, [x24, #2416]
	bl	_sin
	str	d0, [x24, #2160]
	ldr	d0, [x24, #2424]
	bl	_sin
	str	d0, [x24, #2168]
	ldr	d0, [x24, #2432]
	bl	_sin
	str	d0, [x24, #2176]
	ldr	d0, [x24, #2440]
	bl	_sin
	str	d0, [x24, #2184]
	ldr	d0, [x24, #2448]
	bl	_sin
	str	d0, [x24, #2192]
	ldr	d0, [x24, #2456]
	bl	_sin
	str	d0, [x24, #2200]
	ldr	d0, [x24, #2464]
	bl	_sin
	str	d0, [x24, #2208]
	ldr	d0, [x24, #2472]
	bl	_sin
	str	d0, [x24, #2216]
	ldr	d0, [x24, #2480]
	bl	_sin
	str	d0, [x24, #2224]
	ldr	d0, [x24, #2488]
	bl	_sin
	str	d0, [x24, #2232]
	ldr	d0, [x24, #2496]
	bl	_sin
	str	d0, [x24, #2240]
	ldr	d0, [x24, #2504]
	bl	_sin
	str	d0, [x24, #2248]
	ldr	d0, [x24, #2512]
	bl	_sin
	str	d0, [x24, #2256]
	ldr	d0, [x24, #2520]
	bl	_sin
	str	d0, [x24, #2264]
	ldr	d0, [x24, #2528]
	bl	_sin
	str	d0, [x24, #2272]
	ldr	d0, [x24, #2536]
	bl	_sin
	str	d0, [x24, #2280]
	ldr	d0, [x24, #2544]
	bl	_sin
	str	d0, [x24, #2288]
	ldr	d0, [x24, #2552]
	bl	_sin
	str	d0, [x24, #2296]
	ldr	d0, [x24, #2560]
	bl	_sin
	str	d0, [x24, #2304]
	ldr	d0, [x24, #2568]
	bl	_sin
	str	d0, [x24, #2312]
	ldr	d0, [x24, #2320]
	bl	_cos
	str	d0, [x24, #1808]
	ldr	d0, [x24, #2328]
	bl	_cos
	str	d0, [x24, #1816]
	ldr	d0, [x24, #2336]
	bl	_cos
	str	d0, [x24, #1824]
	ldr	d0, [x24, #2344]
	bl	_cos
	str	d0, [x24, #1832]
	ldr	d0, [x24, #2352]
	bl	_cos
	str	d0, [x24, #1840]
	ldr	d0, [x24, #2360]
	bl	_cos
	str	d0, [x24, #1848]
	ldr	d0, [x24, #2368]
	bl	_cos
	str	d0, [x24, #1856]
	ldr	d0, [x24, #2376]
	bl	_cos
	str	d0, [x24, #1864]
	ldr	d0, [x24, #2384]
	bl	_cos
	str	d0, [x24, #1872]
	ldr	d0, [x24, #2392]
	bl	_cos
	str	d0, [x24, #1880]
	ldr	d0, [x24, #2400]
	bl	_cos
	str	d0, [x24, #1888]
	ldr	d0, [x24, #2408]
	bl	_cos
	str	d0, [x24, #1896]
	ldr	d0, [x24, #2416]
	bl	_cos
	str	d0, [x24, #1904]
	ldr	d0, [x24, #2424]
	bl	_cos
	str	d0, [x24, #1912]
	ldr	d0, [x24, #2432]
	bl	_cos
	str	d0, [x24, #1920]
	ldr	d0, [x24, #2440]
	bl	_cos
	str	d0, [x24, #1928]
	ldr	d0, [x24, #2448]
	bl	_cos
	str	d0, [x24, #1936]
	ldr	d0, [x24, #2456]
	bl	_cos
	str	d0, [x24, #1944]
	ldr	d0, [x24, #2464]
	bl	_cos
	str	d0, [x24, #1952]
	ldr	d0, [x24, #2472]
	bl	_cos
	str	d0, [x24, #1960]
	ldr	d0, [x24, #2480]
	bl	_cos
	str	d0, [x24, #1968]
	ldr	d0, [x24, #2488]
	bl	_cos
	str	d0, [x24, #1976]
	ldr	d0, [x24, #2496]
	bl	_cos
	str	d0, [x24, #1984]
	ldr	d0, [x24, #2504]
	bl	_cos
	str	d0, [x24, #1992]
	ldr	d0, [x24, #2512]
	bl	_cos
	str	d0, [x24, #2000]
	ldr	d0, [x24, #2520]
	bl	_cos
	str	d0, [x24, #2008]
	ldr	d0, [x24, #2528]
	bl	_cos
	str	d0, [x24, #2016]
	ldr	d0, [x24, #2536]
	bl	_cos
	str	d0, [x24, #2024]
	ldr	d0, [x24, #2544]
	bl	_cos
	str	d0, [x24, #2032]
	ldr	d0, [x24, #2552]
	bl	_cos
	str	d0, [x24, #2040]
	ldr	d0, [x24, #2560]
	bl	_cos
	str	d0, [x24, #2048]
	ldr	d0, [x24, #2568]
	bl	_cos
	str	d0, [x24, #2056]
	ldur	q0, [x19, #192]
	str	q0, [sp, #39008]
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #2144
	add	x0, x8, #16
Lloh281:
	adrp	x1, l_.memset_pattern.127@PAGE
Lloh282:
	add	x1, x1, l_.memset_pattern.127@PAGEOFF
	mov	w2, #128                        ; =0x80
	bl	_memset_pattern16
	mov	x8, #0                          ; =0x0
	add	x9, sp, #9, lsl #12             ; =36864
	add	x9, x9, #2144
	ldur	q0, [x9, #128]
	stur	q0, [x19, #192]
	ldur	q0, [x19, #72]
	ldur	q1, [x19, #56]
	str	q0, [sp, #40512]
	str	q1, [sp, #40496]
	ldr	d0, [x24, #2888]
	ldr	d1, [sp, #160]                  ; 8-byte Folded Reload
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #2896]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #2904]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #2912]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #2920]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #2928]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #2936]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #2944]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #2952]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #2960]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #2968]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #2976]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #2984]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #2992]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #3000]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #3008]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #3016]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #3024]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #3032]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #3040]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #3048]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #3056]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #3064]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #3072]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #3080]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #3088]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #3096]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #3104]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #3112]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #3120]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #3128]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #3136]
	fmadd	d0, d0, d1, d10
	str	d0, [x24, #3144]
	add	x9, sp, #9, lsl #12             ; =36864
	add	x9, x9, #3632
	ldp	q0, q1, [x9, #256]
	stur	q0, [x19, #56]
	stur	q1, [x19, #72]
	ldp	q1, q0, [x19, #160]
	str	q0, [sp, #39168]
	str	q1, [sp, #39152]
	ldp	q1, q0, [x19, #208]
	str	q0, [sp, #38736]
	str	q1, [sp, #38720]
	ldr	d0, [x24, #1112]
	ldr	d1, [x24, #1544]
	ldr	x10, [sp, #776]                 ; 8-byte Folded Reload
	ldr	x11, [sp, #768]                 ; 8-byte Folded Reload
	ldr	x12, [sp, #16]                  ; 8-byte Folded Reload
	add	x13, sp, #9, lsl #12            ; =36864
	add	x13, x13, #2832
	add	x14, sp, #9, lsl #12            ; =36864
	add	x14, x14, #2576
	mov	w15, #1                         ; =0x1
LBB17_8:                                ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	d2, [x13, x8, lsl #3]
	ldr	d3, [x14, x8, lsl #3]
	fmul	d4, d1, d3
	fmadd	d4, d0, d2, d4
	str	d4, [x10, x8, lsl #3]
	ldr	w9, [x12, x8, lsl #2]
	sub	w9, w15, w9
	scvtf	d5, w9
	fmadd	d0, d0, d3, d5
	fmsub	d0, d2, d1, d0
	str	d0, [x11, x8, lsl #3]
	add	x8, x8, #1
	fmov	d1, d4
	cmp	x8, #32
	b.ne	LBB17_8
; %bb.9:                                ;   in Loop: Header=BB17_7 Depth=1
	mov	x27, #0                         ; =0x0
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #2288
	ldp	q0, q1, [x8, #256]
	stp	q0, q1, [x19, #160]
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #1856
	ldp	q0, q1, [x8, #256]
	stp	q0, q1, [x19, #208]
	ldp	q1, q0, [x19, #16]
	str	q0, [sp, #40800]
	str	q1, [sp, #40784]
	ldr	d1, [x24, #3176]
	mov	x8, #34603                      ; =0x872b
	movk	x8, #55574, lsl #16
	movk	x8, #63438, lsl #32
	movk	x8, #16367, lsl #48
	fmov	d0, x8
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3184]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3192]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3200]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3208]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3216]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3224]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3232]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3240]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3248]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3256]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3264]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3272]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3280]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3288]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3296]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3304]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3312]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3320]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3328]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3336]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3344]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3352]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3360]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3368]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3376]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3384]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3392]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3400]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3408]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3416]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3424]
	fmadd	d1, d1, d0, d9
	str	d1, [x24, #3432]
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #3920
	ldp	q1, q2, [x8, #256]
	stp	q1, q2, [x19, #16]
	ldr	x8, [sp, #136]                  ; 8-byte Folded Reload
	ldp	q2, q1, [x8]
	str	q1, [sp, #38448]
	str	q2, [sp, #38432]
	ldr	d1, [x24, #824]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #832]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #840]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #848]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #856]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #864]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #872]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #880]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #888]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #896]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #904]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #912]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #920]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #928]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #936]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #944]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #952]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #960]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #968]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #976]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #984]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #992]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #1000]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #1008]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #1016]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #1024]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #1032]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #1040]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #1048]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #1056]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #1064]
	fmadd	d1, d1, d0, d8
	str	d1, [x24, #1072]
	fmadd	d0, d1, d0, d8
	str	d0, [x24, #1080]
	add	x9, sp, #9, lsl #12             ; =36864
	add	x9, x9, #1568
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x8]
	ldr	q0, [sp, #40528]
	ldr	q1, [sp, #40544]
	ldr	q2, [sp, #39184]
	ldr	q3, [sp, #39200]
	fmul.2d	v0, v0, v2
	fmul.2d	v1, v1, v3
	str	q0, [sp, #38176]
	str	q1, [sp, #38192]
	ldr	q0, [sp, #40560]
	ldr	q1, [sp, #40576]
	ldr	q2, [sp, #39216]
	ldr	q3, [sp, #39232]
	fmul.2d	v0, v0, v2
	fmul.2d	v1, v1, v3
	str	q0, [sp, #38208]
	str	q1, [sp, #38224]
	ldr	q0, [sp, #40592]
	ldr	q1, [sp, #40608]
	ldr	q2, [sp, #39248]
	ldr	q3, [sp, #39264]
	fmul.2d	v0, v0, v2
	fmul.2d	v1, v1, v3
	str	q0, [sp, #38240]
	str	q1, [sp, #38256]
	ldr	q0, [sp, #40624]
	ldr	q1, [sp, #40640]
	ldr	q2, [sp, #39280]
	ldr	q3, [sp, #39296]
	fmul.2d	v0, v0, v2
	fmul.2d	v1, v1, v3
	str	q0, [sp, #38272]
	str	q1, [sp, #38288]
	ldr	q0, [sp, #40656]
	ldr	q1, [sp, #40672]
	ldr	q2, [sp, #39312]
	ldr	q3, [sp, #39328]
	fmul.2d	v0, v0, v2
	fmul.2d	v1, v1, v3
	str	q0, [sp, #38304]
	str	q1, [sp, #38320]
	ldr	q0, [sp, #40688]
	ldr	q1, [sp, #40704]
	ldr	q2, [sp, #39344]
	ldr	q3, [sp, #39360]
	fmul.2d	v0, v0, v2
	fmul.2d	v1, v1, v3
	str	q0, [sp, #38336]
	str	q1, [sp, #38352]
	ldr	q0, [sp, #40720]
	ldr	q1, [sp, #40736]
	ldr	q2, [sp, #39376]
	ldr	q3, [sp, #39392]
	fmul.2d	v0, v0, v2
	fmul.2d	v1, v1, v3
	str	q0, [sp, #38368]
	str	q1, [sp, #38384]
	ldr	q0, [sp, #40752]
	ldr	q1, [sp, #40768]
	ldr	q2, [sp, #39408]
	ldr	q3, [sp, #39424]
	fmul.2d	v0, v0, v2
	fmul.2d	v1, v1, v3
	str	q0, [sp, #38400]
	str	q1, [sp, #38416]
	ldr	x26, [sp, #672]                 ; 8-byte Folded Reload
	ldr	w20, [sp, #956]                 ; 4-byte Folded Reload
	b	LBB17_11
LBB17_10:                               ;   in Loop: Header=BB17_11 Depth=2
	ldr	x8, [sp, #4976]                 ; 8-byte Folded Reload
	ldr	d0, [x8, x27]
	fadd	d0, d0, d0
	bl	___exp10
	fmadd	d0, d9, d0, d8
	fminnm	d0, d0, d11
	fmaxnm	d0, d0, d12
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #1056
	str	d0, [x8, x27]
	add	x27, x27, #8
	cmp	x27, #256
	b.eq	LBB17_13
LBB17_11:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #4984]                 ; 8-byte Folded Reload
	ldr	d8, [x8, x27]
	movi	d9, #0000000000000000
	cbnz	w20, LBB17_10
; %bb.12:                               ;   in Loop: Header=BB17_11 Depth=2
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #1312
	ldr	d9, [x8, x27]
	b	LBB17_10
LBB17_13:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	ldp	q0, q1, [x19, #288]
	str	q0, [sp, #37632]
	str	q1, [sp, #37648]
	ldr	q1, [sp, #37920]
	ldr	q2, [sp, #37936]
	fmul.2d	v3, v1, v1
	mov	x9, #6148914691236517205        ; =0x5555555555555555
	movk	x9, #49109, lsl #48
	dup.2d	v0, x9
	ldr	q5, [sp, #352]                  ; 16-byte Folded Reload
	mov.16b	v4, v5
	fmla.2d	v4, v0, v3
	fmul.2d	v1, v1, v4
	fmul.2d	v3, v2, v2
	mov.16b	v4, v5
	fmla.2d	v4, v0, v3
	fmul.2d	v2, v2, v4
	str	q1, [sp, #37664]
	str	q2, [sp, #37680]
	ldr	q1, [sp, #37952]
	ldr	q2, [sp, #37968]
	fmul.2d	v3, v1, v1
	mov.16b	v4, v5
	fmla.2d	v4, v0, v3
	fmul.2d	v1, v1, v4
	fmul.2d	v3, v2, v2
	mov.16b	v4, v5
	fmla.2d	v4, v0, v3
	fmul.2d	v2, v2, v4
	str	q1, [sp, #37696]
	str	q2, [sp, #37712]
	ldr	q1, [sp, #37984]
	ldr	q2, [sp, #38000]
	fmul.2d	v3, v1, v1
	mov.16b	v4, v5
	fmla.2d	v4, v0, v3
	fmul.2d	v1, v1, v4
	fmul.2d	v3, v2, v2
	mov.16b	v4, v5
	fmla.2d	v4, v0, v3
	fmul.2d	v2, v2, v4
	str	q1, [sp, #37728]
	str	q2, [sp, #37744]
	ldr	q1, [sp, #38016]
	ldr	q2, [sp, #38032]
	fmul.2d	v3, v1, v1
	mov.16b	v4, v5
	fmla.2d	v4, v0, v3
	fmul.2d	v1, v1, v4
	fmul.2d	v3, v2, v2
	mov.16b	v4, v5
	fmla.2d	v4, v0, v3
	fmul.2d	v2, v2, v4
	str	q1, [sp, #37760]
	str	q2, [sp, #37776]
	ldr	q1, [sp, #38048]
	ldr	q2, [sp, #38064]
	fmul.2d	v3, v1, v1
	mov.16b	v4, v5
	fmla.2d	v4, v0, v3
	fmul.2d	v1, v1, v4
	fmul.2d	v3, v2, v2
	mov.16b	v4, v5
	fmla.2d	v4, v0, v3
	fmul.2d	v2, v2, v4
	str	q1, [sp, #37792]
	str	q2, [sp, #37808]
	ldr	q1, [sp, #38080]
	ldr	q2, [sp, #38096]
	fmul.2d	v3, v1, v1
	mov.16b	v4, v5
	fmla.2d	v4, v0, v3
	fmul.2d	v1, v1, v4
	fmul.2d	v3, v2, v2
	mov.16b	v4, v5
	fmla.2d	v4, v0, v3
	fmul.2d	v2, v2, v4
	str	q1, [sp, #37824]
	str	q2, [sp, #37840]
	ldr	q1, [sp, #38112]
	ldr	q2, [sp, #38128]
	fmul.2d	v3, v1, v1
	mov.16b	v4, v5
	fmla.2d	v4, v0, v3
	fmul.2d	v1, v1, v4
	fmul.2d	v3, v2, v2
	mov.16b	v4, v5
	fmla.2d	v4, v0, v3
	fmul.2d	v2, v2, v4
	str	q1, [sp, #37856]
	str	q2, [sp, #37872]
	ldr	q1, [sp, #38144]
	ldr	q2, [sp, #38160]
	fmul.2d	v3, v1, v1
	mov.16b	v4, v5
	fmla.2d	v4, v0, v3
	fmul.2d	v1, v1, v4
	fmul.2d	v3, v2, v2
	mov.16b	v4, v5
	fmla.2d	v4, v0, v3
	fmul.2d	v0, v2, v4
	str	q1, [sp, #37888]
	str	q0, [sp, #37904]
	add	x9, sp, #9, lsl #12             ; =36864
	add	x9, x9, #768
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x19, #288]
	ldp	q1, q0, [x19, #320]
	str	q0, [sp, #37360]
	str	q1, [sp, #37344]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #512
	ldr	d1, [x9, #32760]
	mov	x9, #41943                      ; =0xa3d7
	movk	x9, #15728, lsl #16
	movk	x9, #55050, lsl #32
	movk	x9, #16367, lsl #48
	fmov	d0, x9
	ldp	d3, d2, [x24, #24]
	fmadd	d1, d1, d0, d2
	fsub	d1, d1, d3
	ldp	d3, d4, [x24, #40]
	fmadd	d5, d1, d0, d3
	fsub	d2, d5, d2
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #520
	str	d1, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #528
	str	d2, [x9, #32760]
	fmadd	d1, d2, d0, d4
	fsub	d1, d1, d3
	ldp	d2, d3, [x24, #56]
	fmadd	d5, d1, d0, d2
	fsub	d4, d5, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #536
	str	d1, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #544
	str	d4, [x9, #32760]
	fmadd	d1, d4, d0, d3
	fsub	d1, d1, d2
	ldp	d2, d4, [x24, #72]
	fmadd	d5, d1, d0, d2
	fsub	d3, d5, d3
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #552
	str	d1, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #560
	str	d3, [x9, #32760]
	fmadd	d1, d3, d0, d4
	fsub	d1, d1, d2
	ldp	d2, d3, [x24, #88]
	fmadd	d5, d1, d0, d2
	fsub	d4, d5, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #568
	str	d1, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #576
	str	d4, [x9, #32760]
	fmadd	d1, d4, d0, d3
	fsub	d1, d1, d2
	ldp	d2, d4, [x24, #104]
	fmadd	d5, d1, d0, d2
	fsub	d3, d5, d3
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #584
	str	d1, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #592
	str	d3, [x9, #32760]
	fmadd	d1, d3, d0, d4
	fsub	d1, d1, d2
	ldp	d2, d3, [x24, #120]
	fmadd	d5, d1, d0, d2
	fsub	d4, d5, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #600
	str	d1, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #608
	str	d4, [x9, #32760]
	fmadd	d1, d4, d0, d3
	fsub	d1, d1, d2
	ldp	d2, d4, [x24, #136]
	fmadd	d5, d1, d0, d2
	fsub	d3, d5, d3
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #616
	str	d1, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #624
	str	d3, [x9, #32760]
	fmadd	d1, d3, d0, d4
	fsub	d1, d1, d2
	ldp	d2, d3, [x24, #152]
	fmadd	d5, d1, d0, d2
	fsub	d4, d5, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #632
	str	d1, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #640
	str	d4, [x9, #32760]
	fmadd	d1, d4, d0, d3
	fsub	d1, d1, d2
	ldp	d2, d4, [x24, #168]
	fmadd	d5, d1, d0, d2
	fsub	d3, d5, d3
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #648
	str	d1, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #656
	str	d3, [x9, #32760]
	fmadd	d1, d3, d0, d4
	fsub	d1, d1, d2
	ldp	d2, d3, [x24, #184]
	fmadd	d5, d1, d0, d2
	fsub	d4, d5, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #664
	str	d1, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #672
	str	d4, [x9, #32760]
	fmadd	d1, d4, d0, d3
	fsub	d1, d1, d2
	ldp	d2, d4, [x24, #200]
	fmadd	d5, d1, d0, d2
	fsub	d3, d5, d3
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #680
	str	d1, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #688
	str	d3, [x9, #32760]
	fmadd	d1, d3, d0, d4
	fsub	d1, d1, d2
	ldp	d2, d3, [x24, #216]
	fmadd	d5, d1, d0, d2
	fsub	d4, d5, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #696
	str	d1, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #704
	str	d4, [x9, #32760]
	fmadd	d1, d4, d0, d3
	fsub	d1, d1, d2
	ldp	d2, d4, [x24, #232]
	fmadd	d5, d1, d0, d2
	fsub	d3, d5, d3
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #712
	str	d1, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #720
	str	d3, [x9, #32760]
	fmadd	d1, d3, d0, d4
	fsub	d1, d1, d2
	ldp	d2, d3, [x24, #248]
	fmadd	d5, d1, d0, d2
	fsub	d4, d5, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #728
	str	d1, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #736
	str	d4, [x9, #32760]
	fmadd	d1, d4, d0, d3
	fsub	d1, d1, d2
	ldp	d2, d4, [x24, #264]
	fmadd	d5, d1, d0, d2
	fsub	d3, d5, d3
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #744
	str	d1, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #752
	str	d3, [x9, #32760]
	fmadd	d1, d3, d0, d4
	fsub	d1, d1, d2
	ldr	d2, [x24, #280]
	fmadd	d0, d1, d0, d2
	fsub	d0, d0, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #760
	str	d1, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #768
	str	d0, [x9, #32760]
	add	x9, sp, #9, lsl #12             ; =36864
	add	x9, x9, #480
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x19, #320]
	ldr	q0, [sp, #37376]
	ldr	q1, [sp, #37392]
	ldr	q2, [sp, #38176]
	ldr	q3, [sp, #38192]
	ldr	q4, [sp, #144]                  ; 16-byte Folded Reload
	bif.16b	v0, v2, v4
	bif.16b	v1, v3, v4
	str	q0, [sp, #37088]
	str	q1, [sp, #37104]
	ldr	q0, [sp, #37408]
	ldr	q1, [sp, #37424]
	ldr	q2, [sp, #38208]
	ldr	q3, [sp, #38224]
	bif.16b	v0, v2, v4
	bif.16b	v1, v3, v4
	str	q0, [sp, #37120]
	str	q1, [sp, #37136]
	ldr	q0, [sp, #37440]
	ldr	q1, [sp, #37456]
	ldr	q2, [sp, #38240]
	ldr	q3, [sp, #38256]
	bif.16b	v0, v2, v4
	bif.16b	v1, v3, v4
	str	q0, [sp, #37152]
	str	q1, [sp, #37168]
	ldr	q0, [sp, #37472]
	ldr	q1, [sp, #37488]
	ldr	q2, [sp, #38272]
	ldr	q3, [sp, #38288]
	bif.16b	v0, v2, v4
	bif.16b	v1, v3, v4
	str	q0, [sp, #37184]
	str	q1, [sp, #37200]
	ldr	q0, [sp, #37504]
	ldr	q1, [sp, #37520]
	ldr	q2, [sp, #38304]
	ldr	q3, [sp, #38320]
	bif.16b	v0, v2, v4
	bif.16b	v1, v3, v4
	str	q0, [sp, #37216]
	str	q1, [sp, #37232]
	ldr	q0, [sp, #37536]
	ldr	q1, [sp, #37552]
	ldr	q2, [sp, #38336]
	ldr	q3, [sp, #38352]
	bif.16b	v0, v2, v4
	bif.16b	v1, v3, v4
	str	q0, [sp, #37248]
	str	q1, [sp, #37264]
	ldr	q0, [sp, #37568]
	ldr	q1, [sp, #37584]
	ldr	q2, [sp, #38368]
	ldr	q3, [sp, #38384]
	bif.16b	v0, v2, v4
	bif.16b	v1, v3, v4
	str	q0, [sp, #37280]
	str	q1, [sp, #37296]
	ldr	q0, [sp, #37600]
	ldr	q1, [sp, #37616]
	ldr	q2, [sp, #38400]
	ldr	q3, [sp, #38416]
	bif.16b	v0, v2, v4
	bif.16b	v1, v3, v4
	str	q0, [sp, #37312]
	str	q1, [sp, #37328]
	ldr	x10, [sp, #128]                 ; 8-byte Folded Reload
	ldp	q0, q1, [x10]
	str	q1, [sp, #35664]
	str	q0, [sp, #35648]
	ldr	d0, [x19, #672]
	ldr	d1, [x19, #680]
	ldr	d2, [x19, #688]
	add	x9, sp, #2904
	ldr	d3, [x9, #32760]
	add	x9, sp, #2912
	ldr	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #232
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #240
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #2920
	str	d3, [x9, #32760]
	add	x9, sp, #2928
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #248
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #256
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #2936
	str	d3, [x9, #32760]
	add	x9, sp, #2944
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #264
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #272
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #2952
	str	d3, [x9, #32760]
	add	x9, sp, #2960
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #280
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #288
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #2968
	str	d3, [x9, #32760]
	add	x9, sp, #2976
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #296
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #304
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #2984
	str	d3, [x9, #32760]
	add	x9, sp, #2992
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #312
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #320
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #3000
	str	d3, [x9, #32760]
	add	x9, sp, #3008
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #328
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #336
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #3016
	str	d3, [x9, #32760]
	add	x9, sp, #3024
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #344
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #352
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #3032
	str	d3, [x9, #32760]
	add	x9, sp, #3040
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #360
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #368
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #3048
	str	d3, [x9, #32760]
	add	x9, sp, #3056
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #376
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #384
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #3064
	str	d3, [x9, #32760]
	add	x9, sp, #3072
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #392
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #400
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #3080
	str	d3, [x9, #32760]
	add	x9, sp, #3088
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #408
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #416
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #3096
	str	d3, [x9, #32760]
	add	x9, sp, #3104
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #424
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #432
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #3112
	str	d3, [x9, #32760]
	add	x9, sp, #3120
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #440
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #448
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #3128
	str	d3, [x9, #32760]
	add	x9, sp, #3136
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #456
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #464
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #3144
	str	d3, [x9, #32760]
	add	x9, sp, #3152
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #472
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #480
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d2, d2, d3
	fmadd	d1, d1, d4, d2
	fmsub	d0, d0, d1, d6
	add	x9, sp, #3160
	str	d3, [x9, #32760]
	add	x9, sp, #3168
	str	d0, [x9, #32760]
	add	x9, sp, #8, lsl #12             ; =32768
	add	x9, x9, #2880
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x10]
	ldr	x9, [sp, #4528]                 ; 8-byte Folded Reload
	ldp	q0, q1, [x9]
	str	q1, [sp, #35376]
	str	q0, [sp, #35360]
	ldr	d0, [x19, #672]
	ldr	d3, [x19, #736]
	ldr	d4, [x19, #744]
	ldr	d1, [x19, #752]
	ldr	d5, [x19, #760]
	ldr	d6, [x19, #768]
	fneg	d7, d1
	add	x9, sp, #2912
	ldr	d17, [x9, #32760]
	add	x9, sp, #2616
	ldr	d16, [x9, #32760]
	add	x9, sp, #2624
	ldr	d2, [x9, #32760]
	ldr	x9, [sp, #680]                  ; 8-byte Folded Reload
	fmov	d18, d2
LBB17_14:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d17, d4, d17
	ldr	d19, [x9]
	fmadd	d17, d3, d19, d17
	ldur	d20, [x9, #-16]
	fmadd	d17, d3, d20, d17
	fmul	d20, d6, d18
	fmadd	d16, d5, d16, d20
	fmul	d20, d16, d7
	fmov	d16, d18
	fmadd	d18, d0, d17, d20
	str	d18, [x22, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d17, d19
	cmp	x8, #256
	b.ne	LBB17_14
; %bb.15:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #8, lsl #12             ; =32768
	add	x9, x9, #2592
	ldp	q0, q3, [x9, #256]
	ldr	x9, [sp, #4528]                 ; 8-byte Folded Reload
	stp	q0, q3, [x9]
	ldp	q3, q0, [x19, #848]
	str	q0, [sp, #35088]
	str	q3, [sp, #35072]
	ldr	d4, [x19, #808]
	ldr	d5, [x19, #816]
	ldr	d0, [x19, #824]
	ldr	d6, [x19, #832]
	ldr	d7, [x19, #840]
	fneg	d16, d0
	ldr	q3, [sp, #35088]
	mov	d18, v3[1]
	mov	x9, x22
	fmov	d17, d3
	ldr	x0, [sp, #864]                  ; 8-byte Folded Reload
	ldr	x2, [sp, #600]                  ; 8-byte Folded Reload
	ldr	x4, [sp, #920]                  ; 8-byte Folded Reload
	ldr	x30, [sp, #856]                 ; 8-byte Folded Reload
	ldr	x15, [sp, #4960]                ; 8-byte Folded Reload
	ldr	x17, [sp, #848]                 ; 8-byte Folded Reload
	ldr	x13, [sp, #4952]                ; 8-byte Folded Reload
	ldr	x1, [sp, #4944]                 ; 8-byte Folded Reload
	ldr	x3, [sp, #4968]                 ; 8-byte Folded Reload
	ldr	x5, [sp, #4936]                 ; 8-byte Folded Reload
	ldr	x6, [sp, #4928]                 ; 8-byte Folded Reload
	ldr	x7, [sp, #4920]                 ; 8-byte Folded Reload
	ldr	x27, [sp, #4912]                ; 8-byte Folded Reload
	ldr	x20, [sp, #408]                 ; 8-byte Folded Reload
LBB17_16:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d2, d5, d2
	ldr	d19, [x9]
	fmadd	d2, d4, d19, d2
	ldur	d20, [x9, #-16]
	fmadd	d2, d4, d20, d2
	fmul	d20, d7, d18
	fmadd	d17, d6, d17, d20
	fmul	d20, d17, d16
	fmov	d17, d18
	fmadd	d18, d1, d2, d20
	str	d18, [x20, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d2, d19
	cmp	x8, #256
	b.ne	LBB17_16
; %bb.17:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #8, lsl #12             ; =32768
	add	x9, x9, #2304
	ldp	q1, q2, [x9, #256]
	stp	q1, q2, [x19, #848]
	ldr	d1, [x19, #880]
	ldr	d2, [x19, #888]
	ldr	q4, [sp, #35104]
	ldr	q5, [sp, #35120]
	ext.16b	v6, v3, v4, #8
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v4, v1[0]
	fmla.2d	v6, v3, v1[0]
	fmul.2d	v3, v6, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #34816]
	str	q4, [sp, #34832]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #35136]
	ldr	q6, [sp, #35152]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #34848]
	str	q4, [sp, #34864]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #35168]
	ldr	q5, [sp, #35184]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #34880]
	str	q4, [sp, #34896]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #35200]
	ldr	q6, [sp, #35216]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #34912]
	str	q4, [sp, #34928]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #35232]
	ldr	q5, [sp, #35248]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #34944]
	str	q4, [sp, #34960]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #35264]
	ldr	q6, [sp, #35280]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #34976]
	str	q4, [sp, #34992]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #35296]
	ldr	q5, [sp, #35312]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #35008]
	str	q4, [sp, #35024]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #35328]
	ldr	q6, [sp, #35344]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v2, v5, v2[0]
	fmla.2d	v2, v6, v1[0]
	fmla.2d	v2, v4, v1[0]
	fmul.2d	v0, v2, v0[0]
	str	q3, [sp, #35040]
	str	q0, [sp, #35056]
	ldr	x20, [sp, #120]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x20]
	str	q0, [sp, #33392]
	str	q1, [sp, #33376]
	ldr	d0, [x19, #1200]
	ldr	d1, [x19, #1208]
	ldr	d2, [x19, #1216]
	add	x9, sp, #632
	ldr	d3, [x9, #32760]
	add	x9, sp, #640
	ldr	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #2056
	ldr	d5, [x9, #32760]
	add	x9, sp, #2064
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #648
	str	d3, [x9, #32760]
	add	x9, sp, #656
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #2072
	ldr	d5, [x9, #32760]
	add	x9, sp, #2080
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #664
	str	d3, [x9, #32760]
	add	x9, sp, #672
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #2088
	ldr	d5, [x9, #32760]
	add	x9, sp, #2096
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #680
	str	d3, [x9, #32760]
	add	x9, sp, #688
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #2104
	ldr	d5, [x9, #32760]
	add	x9, sp, #2112
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #696
	str	d3, [x9, #32760]
	add	x9, sp, #704
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #2120
	ldr	d5, [x9, #32760]
	add	x9, sp, #2128
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #712
	str	d3, [x9, #32760]
	add	x9, sp, #720
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #2136
	ldr	d5, [x9, #32760]
	add	x9, sp, #2144
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #728
	str	d3, [x9, #32760]
	add	x9, sp, #736
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #2152
	ldr	d5, [x9, #32760]
	add	x9, sp, #2160
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #744
	str	d3, [x9, #32760]
	add	x9, sp, #752
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #2168
	ldr	d5, [x9, #32760]
	add	x9, sp, #2176
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #760
	str	d3, [x9, #32760]
	add	x9, sp, #768
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #2184
	ldr	d5, [x9, #32760]
	add	x9, sp, #2192
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #776
	str	d3, [x9, #32760]
	add	x9, sp, #784
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #2200
	ldr	d5, [x9, #32760]
	add	x9, sp, #2208
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #792
	str	d3, [x9, #32760]
	add	x9, sp, #800
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #2216
	ldr	d5, [x9, #32760]
	add	x9, sp, #2224
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #808
	str	d3, [x9, #32760]
	add	x9, sp, #816
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #2232
	ldr	d5, [x9, #32760]
	add	x9, sp, #2240
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #824
	str	d3, [x9, #32760]
	add	x9, sp, #832
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #2248
	ldr	d5, [x9, #32760]
	add	x9, sp, #2256
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #840
	str	d3, [x9, #32760]
	add	x9, sp, #848
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #2264
	ldr	d5, [x9, #32760]
	add	x9, sp, #2272
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #856
	str	d3, [x9, #32760]
	add	x9, sp, #864
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #2280
	ldr	d5, [x9, #32760]
	add	x9, sp, #2288
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	add	x9, sp, #872
	str	d3, [x9, #32760]
	add	x9, sp, #880
	str	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #2296
	ldr	d5, [x9, #32760]
	add	x9, sp, #2304
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d2, d2, d3
	fmadd	d1, d1, d4, d2
	fmsub	d0, d0, d1, d6
	add	x9, sp, #888
	str	d3, [x9, #32760]
	add	x9, sp, #896
	str	d0, [x9, #32760]
	add	x9, sp, #8, lsl #12             ; =32768
	add	x9, x9, #608
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x20]
	ldr	x9, [sp, #4520]                 ; 8-byte Folded Reload
	ldp	q0, q1, [x9]
	str	q1, [sp, #33104]
	str	q0, [sp, #33088]
	ldr	d0, [x19, #1200]
	ldr	d3, [x19, #1264]
	ldr	d4, [x19, #1272]
	ldr	d1, [x19, #1280]
	ldr	d5, [x19, #1288]
	ldr	d6, [x19, #1296]
	fneg	d7, d1
	add	x9, sp, #640
	ldr	d17, [x9, #32760]
	add	x9, sp, #344
	ldr	d16, [x9, #32760]
	add	x9, sp, #352
	ldr	d2, [x9, #32760]
	ldr	x9, [sp, #688]                  ; 8-byte Folded Reload
	fmov	d18, d2
LBB17_18:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d17, d4, d17
	ldr	d19, [x9]
	fmadd	d17, d3, d19, d17
	ldur	d20, [x9, #-16]
	fmadd	d17, d3, d20, d17
	fmul	d20, d6, d18
	fmadd	d16, d5, d16, d20
	fmul	d20, d16, d7
	fmov	d16, d18
	fmadd	d18, d0, d17, d20
	str	d18, [x28, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d17, d19
	cmp	x8, #256
	b.ne	LBB17_18
; %bb.19:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #8, lsl #12             ; =32768
	add	x9, x9, #320
	ldp	q0, q3, [x9, #256]
	ldr	x9, [sp, #4520]                 ; 8-byte Folded Reload
	stp	q0, q3, [x9]
	ldr	x9, [sp, #4512]                 ; 8-byte Folded Reload
	ldp	q3, q0, [x9]
	str	q0, [sp, #32816]
	str	q3, [sp, #32800]
	ldr	d4, [x19, #1336]
	ldr	d5, [x19, #1344]
	ldr	d0, [x19, #1352]
	ldr	d6, [x19, #1360]
	ldr	d7, [x19, #1368]
	fneg	d16, d0
	ldr	q3, [sp, #32816]
	mov	d18, v3[1]
	mov	x9, x28
	fmov	d17, d3
	ldr	x20, [sp, #664]                 ; 8-byte Folded Reload
	ldr	x25, [sp, #416]                 ; 8-byte Folded Reload
LBB17_20:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d2, d5, d2
	ldr	d19, [x9]
	fmadd	d2, d4, d19, d2
	ldur	d20, [x9, #-16]
	fmadd	d2, d4, d20, d2
	fmul	d20, d7, d18
	fmadd	d17, d6, d17, d20
	fmul	d20, d17, d16
	fmov	d17, d18
	fmadd	d18, d1, d2, d20
	str	d18, [x25, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d2, d19
	cmp	x8, #256
	b.ne	LBB17_20
; %bb.21:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #8, lsl #12             ; =32768
	add	x9, x9, #32
	ldp	q1, q2, [x9, #256]
	ldr	x9, [sp, #4512]                 ; 8-byte Folded Reload
	stp	q1, q2, [x9]
	ldr	d1, [x19, #1408]
	ldr	d2, [x19, #1416]
	ldr	q4, [sp, #32832]
	ldr	q5, [sp, #32848]
	ext.16b	v6, v3, v4, #8
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v4, v1[0]
	fmla.2d	v6, v3, v1[0]
	fmul.2d	v3, v6, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #32544]
	str	q4, [sp, #32560]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #32864]
	ldr	q6, [sp, #32880]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #32576]
	str	q4, [sp, #32592]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #32896]
	ldr	q5, [sp, #32912]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #32608]
	str	q4, [sp, #32624]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #32928]
	ldr	q6, [sp, #32944]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #32640]
	str	q4, [sp, #32656]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #32960]
	ldr	q5, [sp, #32976]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #32672]
	str	q4, [sp, #32688]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #32992]
	ldr	q6, [sp, #33008]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #32704]
	str	q4, [sp, #32720]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #33024]
	ldr	q5, [sp, #33040]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #32736]
	str	q4, [sp, #32752]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #33056]
	ldr	q6, [sp, #33072]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v2, v5, v2[0]
	fmla.2d	v2, v6, v1[0]
	fmla.2d	v2, v4, v1[0]
	fmul.2d	v0, v2, v0[0]
	str	q3, [sp, #32768]
	str	q0, [sp, #32784]
	ldr	x25, [sp, #112]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x25]
	str	q0, [sp, #31120]
	str	q1, [sp, #31104]
	ldr	d0, [x19, #1728]
	ldr	d1, [x19, #1736]
	ldr	d2, [x19, #1744]
	ldr	d3, [sp, #31120]
	ldr	d4, [sp, #31128]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #32544]
	ldr	d6, [sp, #32552]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #31136]
	str	d4, [sp, #31144]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #32560]
	ldr	d6, [sp, #32568]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #31152]
	str	d4, [sp, #31160]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #32576]
	ldr	d6, [sp, #32584]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #31168]
	str	d4, [sp, #31176]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #32592]
	ldr	d6, [sp, #32600]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #31184]
	str	d4, [sp, #31192]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #32608]
	ldr	d6, [sp, #32616]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #31200]
	str	d4, [sp, #31208]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #32624]
	ldr	d6, [sp, #32632]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #31216]
	str	d4, [sp, #31224]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #32640]
	ldr	d6, [sp, #32648]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #31232]
	str	d4, [sp, #31240]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #32656]
	ldr	d6, [sp, #32664]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #31248]
	str	d4, [sp, #31256]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #32672]
	ldr	d6, [sp, #32680]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #31264]
	str	d4, [sp, #31272]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #32688]
	ldr	d6, [sp, #32696]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #31280]
	str	d4, [sp, #31288]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #32704]
	ldr	d6, [sp, #32712]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #31296]
	str	d4, [sp, #31304]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #32720]
	ldr	d6, [sp, #32728]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #31312]
	str	d4, [sp, #31320]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #32736]
	ldr	d6, [sp, #32744]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #31328]
	str	d4, [sp, #31336]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #32752]
	ldr	d6, [sp, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #31344]
	str	d4, [sp, #31352]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #8
	ldr	d5, [x9, #32760]
	add	x9, sp, #16
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #31360]
	str	d4, [sp, #31368]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	add	x9, sp, #24
	ldr	d5, [x9, #32760]
	add	x9, sp, #32
	ldr	d6, [x9, #32760]
	fmsub	d3, d0, d3, d5
	fmul	d2, d2, d3
	fmadd	d1, d1, d4, d2
	fmsub	d0, d0, d1, d6
	str	d3, [sp, #31376]
	str	d0, [sp, #31384]
	add	x9, sp, #7, lsl #12             ; =28672
	add	x9, x9, #2432
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x25]
	ldr	x9, [sp, #4504]                 ; 8-byte Folded Reload
	ldp	q0, q1, [x9]
	str	q1, [sp, #30832]
	str	q0, [sp, #30816]
	ldr	d0, [x19, #1728]
	ldr	d3, [x19, #1792]
	ldr	d4, [x19, #1800]
	ldr	d1, [x19, #1808]
	ldr	d5, [x19, #1816]
	ldr	d6, [x19, #1824]
	fneg	d7, d1
	ldr	d17, [sp, #31128]
	ldr	d16, [sp, #30832]
	ldr	d2, [sp, #30840]
	ldr	x9, [sp, #696]                  ; 8-byte Folded Reload
	fmov	d18, d2
	ldr	x25, [sp, #4832]                ; 8-byte Folded Reload
LBB17_22:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d17, d4, d17
	ldr	d19, [x9]
	fmadd	d17, d3, d19, d17
	ldur	d20, [x9, #-16]
	fmadd	d17, d3, d20, d17
	fmul	d20, d6, d18
	fmadd	d16, d5, d16, d20
	fmul	d20, d16, d7
	fmov	d16, d18
	fmadd	d18, d0, d17, d20
	str	d18, [x25, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d17, d19
	cmp	x8, #256
	b.ne	LBB17_22
; %bb.23:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #7, lsl #12             ; =28672
	add	x9, x9, #2144
	ldp	q0, q3, [x9, #256]
	ldr	x9, [sp, #4504]                 ; 8-byte Folded Reload
	stp	q0, q3, [x9]
	ldr	x9, [sp, #4496]                 ; 8-byte Folded Reload
	ldp	q3, q0, [x9]
	str	q0, [sp, #30544]
	str	q3, [sp, #30528]
	ldr	d4, [x19, #1864]
	ldr	d5, [x19, #1872]
	ldr	d0, [x19, #1880]
	ldr	d6, [x19, #1888]
	ldr	d7, [x19, #1896]
	fneg	d16, d0
	ldr	q3, [sp, #30544]
	mov	d18, v3[1]
	mov	x9, x25
	fmov	d17, d3
	ldr	x11, [sp, #424]                 ; 8-byte Folded Reload
LBB17_24:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d2, d5, d2
	ldr	d19, [x9]
	fmadd	d2, d4, d19, d2
	ldur	d20, [x9, #-16]
	fmadd	d2, d4, d20, d2
	fmul	d20, d7, d18
	fmadd	d17, d6, d17, d20
	fmul	d20, d17, d16
	fmov	d17, d18
	fmadd	d18, d1, d2, d20
	str	d18, [x11, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d2, d19
	cmp	x8, #256
	b.ne	LBB17_24
; %bb.25:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #7, lsl #12             ; =28672
	add	x9, x9, #1856
	ldp	q1, q2, [x9, #256]
	ldr	x9, [sp, #4496]                 ; 8-byte Folded Reload
	stp	q1, q2, [x9]
	ldr	d1, [x19, #1936]
	ldr	d2, [x19, #1944]
	ldr	q4, [sp, #30560]
	ldr	q5, [sp, #30576]
	ext.16b	v6, v3, v4, #8
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v4, v1[0]
	fmla.2d	v6, v3, v1[0]
	fmul.2d	v3, v6, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #30272]
	str	q4, [sp, #30288]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #30592]
	ldr	q6, [sp, #30608]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #30304]
	str	q4, [sp, #30320]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #30624]
	ldr	q5, [sp, #30640]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #30336]
	str	q4, [sp, #30352]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #30656]
	ldr	q6, [sp, #30672]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #30368]
	str	q4, [sp, #30384]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #30688]
	ldr	q5, [sp, #30704]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #30400]
	str	q4, [sp, #30416]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #30720]
	ldr	q6, [sp, #30736]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #30432]
	str	q4, [sp, #30448]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #30752]
	ldr	q5, [sp, #30768]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #30464]
	str	q4, [sp, #30480]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #30784]
	ldr	q6, [sp, #30800]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v2, v5, v2[0]
	fmla.2d	v2, v6, v1[0]
	fmla.2d	v2, v4, v1[0]
	fmul.2d	v0, v2, v0[0]
	str	q3, [sp, #30496]
	str	q0, [sp, #30512]
	ldr	x21, [sp, #104]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x21]
	str	q0, [sp, #28848]
	str	q1, [sp, #28832]
	ldr	d0, [x19, #2256]
	ldr	d1, [x19, #2264]
	ldr	d2, [x19, #2272]
	ldr	d3, [sp, #28848]
	ldr	d4, [sp, #28856]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #30272]
	ldr	d6, [sp, #30280]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #28864]
	str	d4, [sp, #28872]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #30288]
	ldr	d6, [sp, #30296]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #28880]
	str	d4, [sp, #28888]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #30304]
	ldr	d6, [sp, #30312]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #28896]
	str	d4, [sp, #28904]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #30320]
	ldr	d6, [sp, #30328]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #28912]
	str	d4, [sp, #28920]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #30336]
	ldr	d6, [sp, #30344]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #28928]
	str	d4, [sp, #28936]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #30352]
	ldr	d6, [sp, #30360]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #28944]
	str	d4, [sp, #28952]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #30368]
	ldr	d6, [sp, #30376]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #28960]
	str	d4, [sp, #28968]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #30384]
	ldr	d6, [sp, #30392]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #28976]
	str	d4, [sp, #28984]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #30400]
	ldr	d6, [sp, #30408]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #28992]
	str	d4, [sp, #29000]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #30416]
	ldr	d6, [sp, #30424]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #29008]
	str	d4, [sp, #29016]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #30432]
	ldr	d6, [sp, #30440]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #29024]
	str	d4, [sp, #29032]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #30448]
	ldr	d6, [sp, #30456]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #29040]
	str	d4, [sp, #29048]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #30464]
	ldr	d6, [sp, #30472]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #29056]
	str	d4, [sp, #29064]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #30480]
	ldr	d6, [sp, #30488]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #29072]
	str	d4, [sp, #29080]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #30496]
	ldr	d6, [sp, #30504]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #29088]
	str	d4, [sp, #29096]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #30512]
	ldr	d6, [sp, #30520]
	fmsub	d3, d0, d3, d5
	fmul	d2, d2, d3
	fmadd	d1, d1, d4, d2
	fmsub	d0, d0, d1, d6
	str	d3, [sp, #29104]
	str	d0, [sp, #29112]
	add	x9, sp, #7, lsl #12             ; =28672
	add	x9, x9, #160
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x21]
	ldr	x9, [sp, #4488]                 ; 8-byte Folded Reload
	ldp	q0, q1, [x9]
	str	q1, [sp, #28560]
	str	q0, [sp, #28544]
	ldr	d0, [x19, #2256]
	ldr	d3, [x19, #2320]
	ldr	d4, [x19, #2328]
	ldr	d1, [x19, #2336]
	ldr	d5, [x19, #2344]
	ldr	d6, [x19, #2352]
	fneg	d7, d1
	ldr	d17, [sp, #28856]
	ldr	d16, [sp, #28560]
	ldr	d2, [sp, #28568]
	ldr	x9, [sp, #912]                  ; 8-byte Folded Reload
	fmov	d18, d2
	ldr	x21, [sp, #512]                 ; 8-byte Folded Reload
LBB17_26:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d17, d4, d17
	ldr	d19, [x9]
	fmadd	d17, d3, d19, d17
	ldur	d20, [x9, #-16]
	fmadd	d17, d3, d20, d17
	fmul	d20, d6, d18
	fmadd	d16, d5, d16, d20
	fmul	d20, d16, d7
	fmov	d16, d18
	fmadd	d18, d0, d17, d20
	str	d18, [x21, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d17, d19
	cmp	x8, #256
	b.ne	LBB17_26
; %bb.27:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #6, lsl #12             ; =24576
	add	x9, x9, #3968
	ldp	q0, q3, [x9, #256]
	ldr	x9, [sp, #4488]                 ; 8-byte Folded Reload
	stp	q0, q3, [x9]
	ldr	x9, [sp, #4480]                 ; 8-byte Folded Reload
	ldp	q3, q0, [x9]
	str	q0, [sp, #28272]
	str	q3, [sp, #28256]
	ldr	d4, [x19, #2392]
	ldr	d5, [x19, #2400]
	ldr	d0, [x19, #2408]
	ldr	d6, [x19, #2416]
	ldr	d7, [x19, #2424]
	fneg	d16, d0
	ldr	q3, [sp, #28272]
	mov	d18, v3[1]
	mov	x9, x21
	fmov	d17, d3
	ldr	x21, [sp, #432]                 ; 8-byte Folded Reload
LBB17_28:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d2, d5, d2
	ldr	d19, [x9]
	fmadd	d2, d4, d19, d2
	ldur	d20, [x9, #-16]
	fmadd	d2, d4, d20, d2
	fmul	d20, d7, d18
	fmadd	d17, d6, d17, d20
	fmul	d20, d17, d16
	fmov	d17, d18
	fmadd	d18, d1, d2, d20
	str	d18, [x21, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d2, d19
	cmp	x8, #256
	b.ne	LBB17_28
; %bb.29:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #6, lsl #12             ; =24576
	add	x9, x9, #3680
	ldp	q1, q2, [x9, #256]
	ldr	x9, [sp, #4480]                 ; 8-byte Folded Reload
	stp	q1, q2, [x9]
	ldr	d1, [x19, #2464]
	ldr	d2, [x19, #2472]
	ldr	q4, [sp, #28288]
	ldr	q5, [sp, #28304]
	ext.16b	v6, v3, v4, #8
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v4, v1[0]
	fmla.2d	v6, v3, v1[0]
	fmul.2d	v3, v6, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #28000]
	str	q4, [sp, #28016]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #28320]
	ldr	q6, [sp, #28336]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #28032]
	str	q4, [sp, #28048]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #28352]
	ldr	q5, [sp, #28368]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #28064]
	str	q4, [sp, #28080]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #28384]
	ldr	q6, [sp, #28400]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #28096]
	str	q4, [sp, #28112]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #28416]
	ldr	q5, [sp, #28432]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #28128]
	str	q4, [sp, #28144]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #28448]
	ldr	q6, [sp, #28464]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #28160]
	str	q4, [sp, #28176]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #28480]
	ldr	q5, [sp, #28496]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #28192]
	str	q4, [sp, #28208]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #28512]
	ldr	q6, [sp, #28528]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v2, v5, v2[0]
	fmla.2d	v2, v6, v1[0]
	fmla.2d	v2, v4, v1[0]
	fmul.2d	v0, v2, v0[0]
	str	q3, [sp, #28224]
	str	q0, [sp, #28240]
	ldr	x21, [sp, #96]                  ; 8-byte Folded Reload
	ldp	q1, q0, [x21]
	str	q0, [sp, #26576]
	str	q1, [sp, #26560]
	ldr	d0, [x19, #2784]
	ldr	d1, [x19, #2792]
	ldr	d2, [x19, #2800]
	ldr	d3, [sp, #26576]
	ldr	d4, [sp, #26584]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #28000]
	ldr	d6, [sp, #28008]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #26592]
	str	d4, [sp, #26600]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #28016]
	ldr	d6, [sp, #28024]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #26608]
	str	d4, [sp, #26616]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #28032]
	ldr	d6, [sp, #28040]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #26624]
	str	d4, [sp, #26632]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #28048]
	ldr	d6, [sp, #28056]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #26640]
	str	d4, [sp, #26648]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #28064]
	ldr	d6, [sp, #28072]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #26656]
	str	d4, [sp, #26664]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #28080]
	ldr	d6, [sp, #28088]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #26672]
	str	d4, [sp, #26680]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #28096]
	ldr	d6, [sp, #28104]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #26688]
	str	d4, [sp, #26696]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #28112]
	ldr	d6, [sp, #28120]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #26704]
	str	d4, [sp, #26712]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #28128]
	ldr	d6, [sp, #28136]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #26720]
	str	d4, [sp, #26728]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #28144]
	ldr	d6, [sp, #28152]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #26736]
	str	d4, [sp, #26744]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #28160]
	ldr	d6, [sp, #28168]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #26752]
	str	d4, [sp, #26760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #28176]
	ldr	d6, [sp, #28184]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #26768]
	str	d4, [sp, #26776]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #28192]
	ldr	d6, [sp, #28200]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #26784]
	str	d4, [sp, #26792]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #28208]
	ldr	d6, [sp, #28216]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #26800]
	str	d4, [sp, #26808]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #28224]
	ldr	d6, [sp, #28232]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #26816]
	str	d4, [sp, #26824]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #28240]
	ldr	d6, [sp, #28248]
	fmsub	d3, d0, d3, d5
	fmul	d2, d2, d3
	fmadd	d1, d1, d4, d2
	fmsub	d0, d0, d1, d6
	str	d3, [sp, #26832]
	str	d0, [sp, #26840]
	add	x9, sp, #6, lsl #12             ; =24576
	add	x9, x9, #1984
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x21]
	ldr	x9, [sp, #4472]                 ; 8-byte Folded Reload
	ldp	q0, q1, [x9]
	str	q1, [sp, #26288]
	str	q0, [sp, #26272]
	ldr	d0, [x19, #2784]
	ldr	d3, [x19, #2848]
	ldr	d4, [x19, #2856]
	ldr	d1, [x19, #2864]
	ldr	d5, [x19, #2872]
	ldr	d6, [x19, #2880]
	fneg	d7, d1
	ldr	d17, [sp, #26584]
	ldr	d16, [sp, #26288]
	ldr	d2, [sp, #26296]
	ldr	x9, [sp, #704]                  ; 8-byte Folded Reload
	fmov	d18, d2
	ldr	x21, [sp, #520]                 ; 8-byte Folded Reload
LBB17_30:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d17, d4, d17
	ldr	d19, [x9]
	fmadd	d17, d3, d19, d17
	ldur	d20, [x9, #-16]
	fmadd	d17, d3, d20, d17
	fmul	d20, d6, d18
	fmadd	d16, d5, d16, d20
	fmul	d20, d16, d7
	fmov	d16, d18
	fmadd	d18, d0, d17, d20
	str	d18, [x21, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d17, d19
	cmp	x8, #256
	b.ne	LBB17_30
; %bb.31:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #6, lsl #12             ; =24576
	add	x9, x9, #1696
	ldp	q0, q3, [x9, #256]
	ldr	x9, [sp, #4472]                 ; 8-byte Folded Reload
	stp	q0, q3, [x9]
	ldr	x9, [sp, #4464]                 ; 8-byte Folded Reload
	ldp	q3, q0, [x9]
	str	q0, [sp, #26000]
	str	q3, [sp, #25984]
	ldr	d4, [x19, #2920]
	ldr	d5, [x19, #2928]
	ldr	d0, [x19, #2936]
	ldr	d6, [x19, #2944]
	ldr	d7, [x19, #2952]
	fneg	d16, d0
	ldr	q3, [sp, #26000]
	mov	d18, v3[1]
	mov	x9, x21
	fmov	d17, d3
	ldr	x21, [sp, #440]                 ; 8-byte Folded Reload
LBB17_32:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d2, d5, d2
	ldr	d19, [x9]
	fmadd	d2, d4, d19, d2
	ldur	d20, [x9, #-16]
	fmadd	d2, d4, d20, d2
	fmul	d20, d7, d18
	fmadd	d17, d6, d17, d20
	fmul	d20, d17, d16
	fmov	d17, d18
	fmadd	d18, d1, d2, d20
	str	d18, [x21, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d2, d19
	cmp	x8, #256
	b.ne	LBB17_32
; %bb.33:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #6, lsl #12             ; =24576
	add	x9, x9, #1408
	ldp	q1, q2, [x9, #256]
	ldr	x9, [sp, #4464]                 ; 8-byte Folded Reload
	stp	q1, q2, [x9]
	ldr	d1, [x19, #2992]
	ldr	d2, [x19, #3000]
	ldr	q4, [sp, #26016]
	ldr	q5, [sp, #26032]
	ext.16b	v6, v3, v4, #8
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v4, v1[0]
	fmla.2d	v6, v3, v1[0]
	fmul.2d	v3, v6, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #25728]
	str	q4, [sp, #25744]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #26048]
	ldr	q6, [sp, #26064]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #25760]
	str	q4, [sp, #25776]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #26080]
	ldr	q5, [sp, #26096]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #25792]
	str	q4, [sp, #25808]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #26112]
	ldr	q6, [sp, #26128]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #25824]
	str	q4, [sp, #25840]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #26144]
	ldr	q5, [sp, #26160]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #25856]
	str	q4, [sp, #25872]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #26176]
	ldr	q6, [sp, #26192]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #25888]
	str	q4, [sp, #25904]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #26208]
	ldr	q5, [sp, #26224]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #25920]
	str	q4, [sp, #25936]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #26240]
	ldr	q6, [sp, #26256]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v2, v5, v2[0]
	fmla.2d	v2, v6, v1[0]
	fmla.2d	v2, v4, v1[0]
	fmul.2d	v0, v2, v0[0]
	str	q3, [sp, #25952]
	str	q0, [sp, #25968]
	ldr	x21, [sp, #88]                  ; 8-byte Folded Reload
	ldp	q1, q0, [x21]
	str	q0, [sp, #24304]
	str	q1, [sp, #24288]
	ldr	d0, [x19, #3312]
	ldr	d1, [x19, #3320]
	ldr	d2, [x19, #3328]
	ldr	d3, [sp, #24304]
	ldr	d4, [sp, #24312]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #25728]
	ldr	d6, [sp, #25736]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #24320]
	str	d4, [sp, #24328]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #25744]
	ldr	d6, [sp, #25752]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #24336]
	str	d4, [sp, #24344]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #25760]
	ldr	d6, [sp, #25768]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #24352]
	str	d4, [sp, #24360]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #25776]
	ldr	d6, [sp, #25784]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #24368]
	str	d4, [sp, #24376]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #25792]
	ldr	d6, [sp, #25800]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #24384]
	str	d4, [sp, #24392]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #25808]
	ldr	d6, [sp, #25816]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #24400]
	str	d4, [sp, #24408]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #25824]
	ldr	d6, [sp, #25832]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #24416]
	str	d4, [sp, #24424]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #25840]
	ldr	d6, [sp, #25848]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #24432]
	str	d4, [sp, #24440]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #25856]
	ldr	d6, [sp, #25864]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #24448]
	str	d4, [sp, #24456]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #25872]
	ldr	d6, [sp, #25880]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #24464]
	str	d4, [sp, #24472]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #25888]
	ldr	d6, [sp, #25896]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #24480]
	str	d4, [sp, #24488]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #25904]
	ldr	d6, [sp, #25912]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #24496]
	str	d4, [sp, #24504]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #25920]
	ldr	d6, [sp, #25928]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #24512]
	str	d4, [sp, #24520]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #25936]
	ldr	d6, [sp, #25944]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #24528]
	str	d4, [sp, #24536]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #25952]
	ldr	d6, [sp, #25960]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #24544]
	str	d4, [sp, #24552]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #25968]
	ldr	d6, [sp, #25976]
	fmsub	d3, d0, d3, d5
	fmul	d2, d2, d3
	fmadd	d1, d1, d4, d2
	fmsub	d0, d0, d1, d6
	str	d3, [sp, #24560]
	str	d0, [sp, #24568]
	add	x9, sp, #5, lsl #12             ; =20480
	add	x9, x9, #3808
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x21]
	ldr	x9, [sp, #4456]                 ; 8-byte Folded Reload
	ldp	q0, q1, [x9]
	str	q1, [sp, #24016]
	str	q0, [sp, #24000]
	ldr	d0, [x19, #3312]
	ldr	d3, [x19, #3376]
	ldr	d4, [x19, #3384]
	ldr	d1, [x19, #3392]
	ldr	d5, [x19, #3400]
	ldr	d6, [x19, #3408]
	fneg	d7, d1
	ldr	d17, [sp, #24312]
	ldr	d16, [sp, #24016]
	ldr	d2, [sp, #24024]
	ldr	x9, [sp, #928]                  ; 8-byte Folded Reload
	fmov	d18, d2
LBB17_34:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d17, d4, d17
	ldr	d19, [x9]
	fmadd	d17, d3, d19, d17
	ldur	d20, [x9, #-16]
	fmadd	d17, d3, d20, d17
	fmul	d20, d6, d18
	fmadd	d16, d5, d16, d20
	fmul	d20, d16, d7
	fmov	d16, d18
	fmadd	d18, d0, d17, d20
	str	d18, [x23, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d17, d19
	cmp	x8, #256
	b.ne	LBB17_34
; %bb.35:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #5, lsl #12             ; =20480
	add	x9, x9, #3520
	ldp	q0, q3, [x9, #256]
	ldr	x9, [sp, #4456]                 ; 8-byte Folded Reload
	stp	q0, q3, [x9]
	ldr	x9, [sp, #4448]                 ; 8-byte Folded Reload
	ldp	q3, q0, [x9]
	str	q0, [sp, #23728]
	str	q3, [sp, #23712]
	ldr	d4, [x19, #3448]
	ldr	d5, [x19, #3456]
	ldr	d0, [x19, #3464]
	ldr	d6, [x19, #3472]
	ldr	d7, [x19, #3480]
	fneg	d16, d0
	ldr	q3, [sp, #23728]
	mov	d18, v3[1]
	mov	x9, x23
	fmov	d17, d3
	ldr	x23, [sp, #448]                 ; 8-byte Folded Reload
LBB17_36:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d2, d5, d2
	ldr	d19, [x9]
	fmadd	d2, d4, d19, d2
	ldur	d20, [x9, #-16]
	fmadd	d2, d4, d20, d2
	fmul	d20, d7, d18
	fmadd	d17, d6, d17, d20
	fmul	d20, d17, d16
	fmov	d17, d18
	fmadd	d18, d1, d2, d20
	str	d18, [x23, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d2, d19
	cmp	x8, #256
	b.ne	LBB17_36
; %bb.37:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #5, lsl #12             ; =20480
	add	x9, x9, #3232
	ldp	q1, q2, [x9, #256]
	ldr	x9, [sp, #4448]                 ; 8-byte Folded Reload
	stp	q1, q2, [x9]
	ldr	d1, [x19, #3520]
	ldr	d2, [x19, #3528]
	ldr	q4, [sp, #23744]
	ldr	q5, [sp, #23760]
	ext.16b	v6, v3, v4, #8
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v4, v1[0]
	fmla.2d	v6, v3, v1[0]
	fmul.2d	v3, v6, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #23456]
	str	q4, [sp, #23472]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #23776]
	ldr	q6, [sp, #23792]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #23488]
	str	q4, [sp, #23504]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #23808]
	ldr	q5, [sp, #23824]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #23520]
	str	q4, [sp, #23536]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #23840]
	ldr	q6, [sp, #23856]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #23552]
	str	q4, [sp, #23568]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #23872]
	ldr	q5, [sp, #23888]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #23584]
	str	q4, [sp, #23600]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #23904]
	ldr	q6, [sp, #23920]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #23616]
	str	q4, [sp, #23632]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #23936]
	ldr	q5, [sp, #23952]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #23648]
	str	q4, [sp, #23664]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #23968]
	ldr	q6, [sp, #23984]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v2, v5, v2[0]
	fmla.2d	v2, v6, v1[0]
	fmla.2d	v2, v4, v1[0]
	fmul.2d	v0, v2, v0[0]
	str	q3, [sp, #23680]
	str	q0, [sp, #23696]
	ldr	x21, [sp, #80]                  ; 8-byte Folded Reload
	ldp	q1, q0, [x21]
	str	q0, [sp, #22032]
	str	q1, [sp, #22016]
	ldr	d0, [x19, #3840]
	ldr	d1, [x19, #3848]
	ldr	d2, [x19, #3856]
	ldr	d3, [sp, #22032]
	ldr	d4, [sp, #22040]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #23456]
	ldr	d6, [sp, #23464]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #22048]
	str	d4, [sp, #22056]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #23472]
	ldr	d6, [sp, #23480]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #22064]
	str	d4, [sp, #22072]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #23488]
	ldr	d6, [sp, #23496]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #22080]
	str	d4, [sp, #22088]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #23504]
	ldr	d6, [sp, #23512]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #22096]
	str	d4, [sp, #22104]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #23520]
	ldr	d6, [sp, #23528]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #22112]
	str	d4, [sp, #22120]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #23536]
	ldr	d6, [sp, #23544]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #22128]
	str	d4, [sp, #22136]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #23552]
	ldr	d6, [sp, #23560]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #22144]
	str	d4, [sp, #22152]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #23568]
	ldr	d6, [sp, #23576]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #22160]
	str	d4, [sp, #22168]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #23584]
	ldr	d6, [sp, #23592]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #22176]
	str	d4, [sp, #22184]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #23600]
	ldr	d6, [sp, #23608]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #22192]
	str	d4, [sp, #22200]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #23616]
	ldr	d6, [sp, #23624]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #22208]
	str	d4, [sp, #22216]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #23632]
	ldr	d6, [sp, #23640]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #22224]
	str	d4, [sp, #22232]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #23648]
	ldr	d6, [sp, #23656]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #22240]
	str	d4, [sp, #22248]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #23664]
	ldr	d6, [sp, #23672]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #22256]
	str	d4, [sp, #22264]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #23680]
	ldr	d6, [sp, #23688]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #22272]
	str	d4, [sp, #22280]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #23696]
	ldr	d6, [sp, #23704]
	fmsub	d3, d0, d3, d5
	fmul	d2, d2, d3
	fmadd	d1, d1, d4, d2
	fmsub	d0, d0, d1, d6
	str	d3, [sp, #22288]
	str	d0, [sp, #22296]
	add	x9, sp, #5, lsl #12             ; =20480
	add	x9, x9, #1536
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x21]
	ldr	x9, [sp, #4440]                 ; 8-byte Folded Reload
	ldp	q0, q1, [x9]
	str	q1, [sp, #21744]
	str	q0, [sp, #21728]
	ldr	d0, [x19, #3840]
	ldr	d3, [x19, #3904]
	ldr	d4, [x19, #3912]
	ldr	d1, [x19, #3920]
	ldr	d5, [x19, #3928]
	ldr	d6, [x19, #3936]
	fneg	d7, d1
	ldr	d17, [sp, #22040]
	ldr	d16, [sp, #21744]
	ldr	d2, [sp, #21752]
	ldr	x9, [sp, #712]                  ; 8-byte Folded Reload
	fmov	d18, d2
	ldr	x21, [sp, #528]                 ; 8-byte Folded Reload
LBB17_38:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d17, d4, d17
	ldr	d19, [x9]
	fmadd	d17, d3, d19, d17
	ldur	d20, [x9, #-16]
	fmadd	d17, d3, d20, d17
	fmul	d20, d6, d18
	fmadd	d16, d5, d16, d20
	fmul	d20, d16, d7
	fmov	d16, d18
	fmadd	d18, d0, d17, d20
	str	d18, [x21, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d17, d19
	cmp	x8, #256
	b.ne	LBB17_38
; %bb.39:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #5, lsl #12             ; =20480
	add	x9, x9, #1248
	ldp	q0, q3, [x9, #256]
	ldr	x9, [sp, #4440]                 ; 8-byte Folded Reload
	stp	q0, q3, [x9]
	ldr	x9, [sp, #4432]                 ; 8-byte Folded Reload
	ldp	q3, q0, [x9]
	str	q0, [sp, #21456]
	str	q3, [sp, #21440]
	ldr	d4, [x19, #3976]
	ldr	d5, [x19, #3984]
	ldr	d0, [x19, #3992]
	ldr	d6, [x19, #4000]
	ldr	d7, [x19, #4008]
	fneg	d16, d0
	ldr	q3, [sp, #21456]
	mov	d18, v3[1]
	mov	x9, x21
	fmov	d17, d3
	ldr	x21, [sp, #456]                 ; 8-byte Folded Reload
LBB17_40:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d2, d5, d2
	ldr	d19, [x9]
	fmadd	d2, d4, d19, d2
	ldur	d20, [x9, #-16]
	fmadd	d2, d4, d20, d2
	fmul	d20, d7, d18
	fmadd	d17, d6, d17, d20
	fmul	d20, d17, d16
	fmov	d17, d18
	fmadd	d18, d1, d2, d20
	str	d18, [x21, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d2, d19
	cmp	x8, #256
	b.ne	LBB17_40
; %bb.41:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #5, lsl #12             ; =20480
	add	x9, x9, #960
	ldp	q1, q2, [x9, #256]
	ldr	x9, [sp, #4432]                 ; 8-byte Folded Reload
	stp	q1, q2, [x9]
	ldr	d1, [x19, #4048]
	ldr	d2, [x19, #4056]
	ldr	q4, [sp, #21472]
	ldr	q5, [sp, #21488]
	ext.16b	v6, v3, v4, #8
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v4, v1[0]
	fmla.2d	v6, v3, v1[0]
	fmul.2d	v3, v6, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #21184]
	str	q4, [sp, #21200]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #21504]
	ldr	q6, [sp, #21520]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #21216]
	str	q4, [sp, #21232]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #21536]
	ldr	q5, [sp, #21552]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #21248]
	str	q4, [sp, #21264]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #21568]
	ldr	q6, [sp, #21584]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #21280]
	str	q4, [sp, #21296]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #21600]
	ldr	q5, [sp, #21616]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #21312]
	str	q4, [sp, #21328]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #21632]
	ldr	q6, [sp, #21648]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #21344]
	str	q4, [sp, #21360]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #21664]
	ldr	q5, [sp, #21680]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #21376]
	str	q4, [sp, #21392]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #21696]
	ldr	q6, [sp, #21712]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v2, v5, v2[0]
	fmla.2d	v2, v6, v1[0]
	fmla.2d	v2, v4, v1[0]
	fmul.2d	v0, v2, v0[0]
	str	q3, [sp, #21408]
	str	q0, [sp, #21424]
	ldr	x21, [sp, #296]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x21]
	str	q0, [sp, #19760]
	str	q1, [sp, #19744]
	ldr	d0, [x19, #4368]
	ldr	d1, [x19, #4376]
	ldr	d2, [x19, #4384]
	ldr	d3, [sp, #19760]
	ldr	d4, [sp, #19768]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #21184]
	ldr	d6, [sp, #21192]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #19776]
	str	d4, [sp, #19784]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #21200]
	ldr	d6, [sp, #21208]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #19792]
	str	d4, [sp, #19800]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #21216]
	ldr	d6, [sp, #21224]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #19808]
	str	d4, [sp, #19816]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #21232]
	ldr	d6, [sp, #21240]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #19824]
	str	d4, [sp, #19832]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #21248]
	ldr	d6, [sp, #21256]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #19840]
	str	d4, [sp, #19848]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #21264]
	ldr	d6, [sp, #21272]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #19856]
	str	d4, [sp, #19864]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #21280]
	ldr	d6, [sp, #21288]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #19872]
	str	d4, [sp, #19880]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #21296]
	ldr	d6, [sp, #21304]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #19888]
	str	d4, [sp, #19896]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #21312]
	ldr	d6, [sp, #21320]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #19904]
	str	d4, [sp, #19912]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #21328]
	ldr	d6, [sp, #21336]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #19920]
	str	d4, [sp, #19928]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #21344]
	ldr	d6, [sp, #21352]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #19936]
	str	d4, [sp, #19944]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #21360]
	ldr	d6, [sp, #21368]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #19952]
	str	d4, [sp, #19960]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #21376]
	ldr	d6, [sp, #21384]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #19968]
	str	d4, [sp, #19976]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #21392]
	ldr	d6, [sp, #21400]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #19984]
	str	d4, [sp, #19992]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #21408]
	ldr	d6, [sp, #21416]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #20000]
	str	d4, [sp, #20008]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #21424]
	ldr	d6, [sp, #21432]
	fmsub	d3, d0, d3, d5
	fmul	d2, d2, d3
	fmadd	d1, d1, d4, d2
	fmsub	d0, d0, d1, d6
	str	d3, [sp, #20016]
	str	d0, [sp, #20024]
	add	x9, sp, #4, lsl #12             ; =16384
	add	x9, x9, #3360
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x21]
	ldr	x9, [sp, #4816]                 ; 8-byte Folded Reload
	ldp	q0, q1, [x9]
	str	q1, [sp, #19472]
	str	q0, [sp, #19456]
	ldr	d0, [x19, #4368]
	ldr	d3, [x19, #4432]
	ldr	d4, [x19, #4440]
	ldr	d1, [x19, #4448]
	ldr	d5, [x19, #4456]
	ldr	d6, [x19, #4464]
	fneg	d7, d1
	ldr	d17, [sp, #19768]
	ldr	d16, [sp, #19472]
	ldr	d2, [sp, #19480]
	ldr	x9, [sp, #720]                  ; 8-byte Folded Reload
	fmov	d18, d2
LBB17_42:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d17, d4, d17
	ldr	d19, [x9]
	fmadd	d17, d3, d19, d17
	ldur	d20, [x9, #-16]
	fmadd	d17, d3, d20, d17
	fmul	d20, d6, d18
	fmadd	d16, d5, d16, d20
	fmul	d20, d16, d7
	fmov	d16, d18
	fmadd	d18, d0, d17, d20
	str	d18, [x20, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d17, d19
	cmp	x8, #256
	b.ne	LBB17_42
; %bb.43:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #4, lsl #12             ; =16384
	add	x9, x9, #3072
	ldp	q0, q3, [x9, #256]
	ldr	x9, [sp, #4816]                 ; 8-byte Folded Reload
	stp	q0, q3, [x9]
	ldr	x9, [sp, #4808]                 ; 8-byte Folded Reload
	ldp	q3, q0, [x9]
	str	q0, [sp, #19184]
	str	q3, [sp, #19168]
	ldr	d4, [x19, #4504]
	ldr	d5, [x19, #4512]
	ldr	d0, [x19, #4520]
	ldr	d6, [x19, #4528]
	ldr	d7, [x19, #4536]
	fneg	d16, d0
	ldr	q3, [sp, #19184]
	mov	d18, v3[1]
	mov	x9, x20
	fmov	d17, d3
	ldr	x20, [sp, #464]                 ; 8-byte Folded Reload
LBB17_44:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d2, d5, d2
	ldr	d19, [x9]
	fmadd	d2, d4, d19, d2
	ldur	d20, [x9, #-16]
	fmadd	d2, d4, d20, d2
	fmul	d20, d7, d18
	fmadd	d17, d6, d17, d20
	fmul	d20, d17, d16
	fmov	d17, d18
	fmadd	d18, d1, d2, d20
	str	d18, [x20, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d2, d19
	cmp	x8, #256
	b.ne	LBB17_44
; %bb.45:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #4, lsl #12             ; =16384
	add	x9, x9, #2784
	ldp	q1, q2, [x9, #256]
	ldr	x9, [sp, #4808]                 ; 8-byte Folded Reload
	stp	q1, q2, [x9]
	ldr	d1, [x19, #4576]
	ldr	d2, [x19, #4584]
	ldr	q4, [sp, #19200]
	ldr	q5, [sp, #19216]
	ext.16b	v6, v3, v4, #8
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v4, v1[0]
	fmla.2d	v6, v3, v1[0]
	fmul.2d	v3, v6, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #18912]
	str	q4, [sp, #18928]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #19232]
	ldr	q6, [sp, #19248]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #18944]
	str	q4, [sp, #18960]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #19264]
	ldr	q5, [sp, #19280]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #18976]
	str	q4, [sp, #18992]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #19296]
	ldr	q6, [sp, #19312]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #19008]
	str	q4, [sp, #19024]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #19328]
	ldr	q5, [sp, #19344]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #19040]
	str	q4, [sp, #19056]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #19360]
	ldr	q6, [sp, #19376]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #19072]
	str	q4, [sp, #19088]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #19392]
	ldr	q5, [sp, #19408]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #19104]
	str	q4, [sp, #19120]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #19424]
	ldr	q6, [sp, #19440]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v2, v5, v2[0]
	fmla.2d	v2, v6, v1[0]
	fmla.2d	v2, v4, v1[0]
	fmul.2d	v0, v2, v0[0]
	str	q3, [sp, #19136]
	str	q0, [sp, #19152]
	ldr	x20, [sp, #288]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x20]
	str	q0, [sp, #17488]
	str	q1, [sp, #17472]
	ldr	d0, [x19, #4896]
	ldr	d1, [x19, #4904]
	ldr	d2, [x19, #4912]
	ldr	d3, [sp, #17488]
	ldr	d4, [sp, #17496]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #18912]
	ldr	d6, [sp, #18920]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #17504]
	str	d4, [sp, #17512]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #18928]
	ldr	d6, [sp, #18936]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #17520]
	str	d4, [sp, #17528]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #18944]
	ldr	d6, [sp, #18952]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #17536]
	str	d4, [sp, #17544]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #18960]
	ldr	d6, [sp, #18968]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #17552]
	str	d4, [sp, #17560]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #18976]
	ldr	d6, [sp, #18984]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #17568]
	str	d4, [sp, #17576]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #18992]
	ldr	d6, [sp, #19000]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #17584]
	str	d4, [sp, #17592]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #19008]
	ldr	d6, [sp, #19016]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #17600]
	str	d4, [sp, #17608]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #19024]
	ldr	d6, [sp, #19032]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #17616]
	str	d4, [sp, #17624]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #19040]
	ldr	d6, [sp, #19048]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #17632]
	str	d4, [sp, #17640]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #19056]
	ldr	d6, [sp, #19064]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #17648]
	str	d4, [sp, #17656]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #19072]
	ldr	d6, [sp, #19080]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #17664]
	str	d4, [sp, #17672]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #19088]
	ldr	d6, [sp, #19096]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #17680]
	str	d4, [sp, #17688]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #19104]
	ldr	d6, [sp, #19112]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #17696]
	str	d4, [sp, #17704]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #19120]
	ldr	d6, [sp, #19128]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #17712]
	str	d4, [sp, #17720]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #19136]
	ldr	d6, [sp, #19144]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #17728]
	str	d4, [sp, #17736]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #19152]
	ldr	d6, [sp, #19160]
	fmsub	d3, d0, d3, d5
	fmul	d2, d2, d3
	fmadd	d1, d1, d4, d2
	fmsub	d0, d0, d1, d6
	str	d3, [sp, #17744]
	str	d0, [sp, #17752]
	add	x9, sp, #4, lsl #12             ; =16384
	add	x9, x9, #1088
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x20]
	ldr	x9, [sp, #4800]                 ; 8-byte Folded Reload
	ldp	q0, q1, [x9]
	str	q1, [sp, #17200]
	str	q0, [sp, #17184]
	ldr	d0, [x19, #4896]
	ldr	d3, [x19, #4960]
	ldr	d4, [x19, #4968]
	ldr	d1, [x19, #4976]
	ldr	d5, [x19, #4984]
	ldr	d6, [x19, #4992]
	fneg	d7, d1
	ldr	d17, [sp, #17496]
	ldr	d16, [sp, #17200]
	ldr	d2, [sp, #17208]
	ldr	x9, [sp, #728]                  ; 8-byte Folded Reload
	fmov	d18, d2
	ldr	x20, [sp, #536]                 ; 8-byte Folded Reload
LBB17_46:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d17, d4, d17
	ldr	d19, [x9]
	fmadd	d17, d3, d19, d17
	ldur	d20, [x9, #-16]
	fmadd	d17, d3, d20, d17
	fmul	d20, d6, d18
	fmadd	d16, d5, d16, d20
	fmul	d20, d16, d7
	fmov	d16, d18
	fmadd	d18, d0, d17, d20
	str	d18, [x20, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d17, d19
	cmp	x8, #256
	b.ne	LBB17_46
; %bb.47:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #4, lsl #12             ; =16384
	add	x9, x9, #800
	ldp	q0, q3, [x9, #256]
	ldr	x9, [sp, #4800]                 ; 8-byte Folded Reload
	stp	q0, q3, [x9]
	ldr	x9, [sp, #4784]                 ; 8-byte Folded Reload
	ldp	q3, q0, [x9]
	str	q0, [sp, #16912]
	str	q3, [sp, #16896]
	ldr	d4, [x19, #5032]
	ldr	d5, [x19, #5040]
	ldr	d0, [x19, #5048]
	ldr	d6, [x19, #5056]
	ldr	d7, [x19, #5064]
	fneg	d16, d0
	ldr	q3, [sp, #16912]
	mov	d18, v3[1]
	mov	x9, x20
	fmov	d17, d3
	ldr	x20, [sp, #472]                 ; 8-byte Folded Reload
LBB17_48:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d2, d5, d2
	ldr	d19, [x9]
	fmadd	d2, d4, d19, d2
	ldur	d20, [x9, #-16]
	fmadd	d2, d4, d20, d2
	fmul	d20, d7, d18
	fmadd	d17, d6, d17, d20
	fmul	d20, d17, d16
	fmov	d17, d18
	fmadd	d18, d1, d2, d20
	str	d18, [x20, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d2, d19
	cmp	x8, #256
	b.ne	LBB17_48
; %bb.49:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #4, lsl #12             ; =16384
	add	x9, x9, #512
	ldp	q1, q2, [x9, #256]
	ldr	x9, [sp, #4784]                 ; 8-byte Folded Reload
	stp	q1, q2, [x9]
	ldr	d1, [x19, #5104]
	ldr	d2, [x19, #5112]
	ldr	q4, [sp, #16928]
	ldr	q5, [sp, #16944]
	ext.16b	v6, v3, v4, #8
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v4, v1[0]
	fmla.2d	v6, v3, v1[0]
	fmul.2d	v3, v6, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #16640]
	str	q4, [sp, #16656]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #16960]
	ldr	q6, [sp, #16976]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #16672]
	str	q4, [sp, #16688]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #16992]
	ldr	q5, [sp, #17008]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #16704]
	str	q4, [sp, #16720]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #17024]
	ldr	q6, [sp, #17040]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #16736]
	str	q4, [sp, #16752]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #17056]
	ldr	q5, [sp, #17072]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #16768]
	str	q4, [sp, #16784]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #17088]
	ldr	q6, [sp, #17104]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #16800]
	str	q4, [sp, #16816]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #17120]
	ldr	q5, [sp, #17136]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #16832]
	str	q4, [sp, #16848]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #17152]
	ldr	q6, [sp, #17168]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v2, v5, v2[0]
	fmla.2d	v2, v6, v1[0]
	fmla.2d	v2, v4, v1[0]
	fmul.2d	v0, v2, v0[0]
	str	q3, [sp, #16864]
	str	q0, [sp, #16880]
	ldr	x20, [sp, #280]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x20]
	str	q0, [sp, #15216]
	str	q1, [sp, #15200]
	ldr	d0, [x19, #5424]
	ldr	d1, [x19, #5432]
	ldr	d2, [x19, #5440]
	ldr	d3, [sp, #15216]
	ldr	d4, [sp, #15224]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #16640]
	ldr	d6, [sp, #16648]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #15232]
	str	d4, [sp, #15240]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #16656]
	ldr	d6, [sp, #16664]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #15248]
	str	d4, [sp, #15256]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #16672]
	ldr	d6, [sp, #16680]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #15264]
	str	d4, [sp, #15272]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #16688]
	ldr	d6, [sp, #16696]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #15280]
	str	d4, [sp, #15288]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #16704]
	ldr	d6, [sp, #16712]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #15296]
	str	d4, [sp, #15304]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #16720]
	ldr	d6, [sp, #16728]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #15312]
	str	d4, [sp, #15320]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #16736]
	ldr	d6, [sp, #16744]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #15328]
	str	d4, [sp, #15336]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #16752]
	ldr	d6, [sp, #16760]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #15344]
	str	d4, [sp, #15352]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #16768]
	ldr	d6, [sp, #16776]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #15360]
	str	d4, [sp, #15368]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #16784]
	ldr	d6, [sp, #16792]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #15376]
	str	d4, [sp, #15384]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #16800]
	ldr	d6, [sp, #16808]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #15392]
	str	d4, [sp, #15400]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #16816]
	ldr	d6, [sp, #16824]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #15408]
	str	d4, [sp, #15416]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #16832]
	ldr	d6, [sp, #16840]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #15424]
	str	d4, [sp, #15432]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #16848]
	ldr	d6, [sp, #16856]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #15440]
	str	d4, [sp, #15448]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #16864]
	ldr	d6, [sp, #16872]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #15456]
	str	d4, [sp, #15464]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #16880]
	ldr	d6, [sp, #16888]
	fmsub	d3, d0, d3, d5
	fmul	d2, d2, d3
	fmadd	d1, d1, d4, d2
	fmsub	d0, d0, d1, d6
	str	d3, [sp, #15472]
	str	d0, [sp, #15480]
	add	x9, sp, #3, lsl #12             ; =12288
	add	x9, x9, #2912
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x20]
	ldr	x9, [sp, #4776]                 ; 8-byte Folded Reload
	ldp	q0, q1, [x9]
	str	q1, [sp, #14928]
	str	q0, [sp, #14912]
	ldr	d0, [x19, #5424]
	ldr	d3, [x19, #5488]
	ldr	d4, [x19, #5496]
	ldr	d1, [x19, #5504]
	ldr	d5, [x19, #5512]
	ldr	d6, [x19, #5520]
	fneg	d7, d1
	ldr	d17, [sp, #15224]
	ldr	d16, [sp, #14928]
	ldr	d2, [sp, #14936]
	ldr	x9, [sp, #736]                  ; 8-byte Folded Reload
	fmov	d18, d2
	ldr	x20, [sp, #544]                 ; 8-byte Folded Reload
LBB17_50:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d17, d4, d17
	ldr	d19, [x9]
	fmadd	d17, d3, d19, d17
	ldur	d20, [x9, #-16]
	fmadd	d17, d3, d20, d17
	fmul	d20, d6, d18
	fmadd	d16, d5, d16, d20
	fmul	d20, d16, d7
	fmov	d16, d18
	fmadd	d18, d0, d17, d20
	str	d18, [x20, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d17, d19
	cmp	x8, #256
	b.ne	LBB17_50
; %bb.51:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #3, lsl #12             ; =12288
	add	x9, x9, #2624
	ldp	q0, q3, [x9, #256]
	ldr	x9, [sp, #4776]                 ; 8-byte Folded Reload
	stp	q0, q3, [x9]
	ldr	x9, [sp, #4768]                 ; 8-byte Folded Reload
	ldp	q3, q0, [x9]
	str	q0, [sp, #14640]
	str	q3, [sp, #14624]
	ldr	d4, [x19, #5560]
	ldr	d5, [x19, #5568]
	ldr	d0, [x19, #5576]
	ldr	d6, [x19, #5584]
	ldr	d7, [x19, #5592]
	fneg	d16, d0
	ldr	q3, [sp, #14640]
	mov	d18, v3[1]
	mov	x9, x20
	fmov	d17, d3
	ldr	x20, [sp, #480]                 ; 8-byte Folded Reload
LBB17_52:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d2, d5, d2
	ldr	d19, [x9]
	fmadd	d2, d4, d19, d2
	ldur	d20, [x9, #-16]
	fmadd	d2, d4, d20, d2
	fmul	d20, d7, d18
	fmadd	d17, d6, d17, d20
	fmul	d20, d17, d16
	fmov	d17, d18
	fmadd	d18, d1, d2, d20
	str	d18, [x20, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d2, d19
	cmp	x8, #256
	b.ne	LBB17_52
; %bb.53:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #3, lsl #12             ; =12288
	add	x9, x9, #2336
	ldp	q1, q2, [x9, #256]
	ldr	x9, [sp, #4768]                 ; 8-byte Folded Reload
	stp	q1, q2, [x9]
	ldr	d1, [x19, #5632]
	ldr	d2, [x19, #5640]
	ldr	q4, [sp, #14656]
	ldr	q5, [sp, #14672]
	ext.16b	v6, v3, v4, #8
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v4, v1[0]
	fmla.2d	v6, v3, v1[0]
	fmul.2d	v3, v6, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #14368]
	str	q4, [sp, #14384]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #14688]
	ldr	q6, [sp, #14704]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #14400]
	str	q4, [sp, #14416]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #14720]
	ldr	q5, [sp, #14736]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #14432]
	str	q4, [sp, #14448]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #14752]
	ldr	q6, [sp, #14768]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #14464]
	str	q4, [sp, #14480]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #14784]
	ldr	q5, [sp, #14800]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #14496]
	str	q4, [sp, #14512]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #14816]
	ldr	q6, [sp, #14832]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #14528]
	str	q4, [sp, #14544]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #14848]
	ldr	q5, [sp, #14864]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #14560]
	str	q4, [sp, #14576]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #14880]
	ldr	q6, [sp, #14896]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v2, v5, v2[0]
	fmla.2d	v2, v6, v1[0]
	fmla.2d	v2, v4, v1[0]
	fmul.2d	v0, v2, v0[0]
	str	q3, [sp, #14592]
	str	q0, [sp, #14608]
	ldr	x20, [sp, #272]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x20]
	str	q0, [sp, #12944]
	str	q1, [sp, #12928]
	ldr	d0, [x19, #5952]
	ldr	d1, [x19, #5960]
	ldr	d2, [x19, #5968]
	ldr	d3, [sp, #12944]
	ldr	d4, [sp, #12952]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #14368]
	ldr	d6, [sp, #14376]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #12960]
	str	d4, [sp, #12968]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #14384]
	ldr	d6, [sp, #14392]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #12976]
	str	d4, [sp, #12984]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #14400]
	ldr	d6, [sp, #14408]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #12992]
	str	d4, [sp, #13000]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #14416]
	ldr	d6, [sp, #14424]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #13008]
	str	d4, [sp, #13016]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #14432]
	ldr	d6, [sp, #14440]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #13024]
	str	d4, [sp, #13032]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #14448]
	ldr	d6, [sp, #14456]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #13040]
	str	d4, [sp, #13048]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #14464]
	ldr	d6, [sp, #14472]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #13056]
	str	d4, [sp, #13064]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #14480]
	ldr	d6, [sp, #14488]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #13072]
	str	d4, [sp, #13080]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #14496]
	ldr	d6, [sp, #14504]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #13088]
	str	d4, [sp, #13096]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #14512]
	ldr	d6, [sp, #14520]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #13104]
	str	d4, [sp, #13112]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #14528]
	ldr	d6, [sp, #14536]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #13120]
	str	d4, [sp, #13128]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #14544]
	ldr	d6, [sp, #14552]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #13136]
	str	d4, [sp, #13144]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #14560]
	ldr	d6, [sp, #14568]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #13152]
	str	d4, [sp, #13160]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #14576]
	ldr	d6, [sp, #14584]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #13168]
	str	d4, [sp, #13176]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #14592]
	ldr	d6, [sp, #14600]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #13184]
	str	d4, [sp, #13192]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #14608]
	ldr	d6, [sp, #14616]
	fmsub	d3, d0, d3, d5
	fmul	d2, d2, d3
	fmadd	d1, d1, d4, d2
	fmsub	d0, d0, d1, d6
	str	d3, [sp, #13200]
	str	d0, [sp, #13208]
	add	x9, sp, #3, lsl #12             ; =12288
	add	x9, x9, #640
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x20]
	ldr	x9, [sp, #4760]                 ; 8-byte Folded Reload
	ldp	q0, q1, [x9]
	str	q1, [sp, #12656]
	str	q0, [sp, #12640]
	ldr	d0, [x19, #5952]
	ldr	d3, [x19, #6016]
	ldr	d4, [x19, #6024]
	ldr	d1, [x19, #6032]
	ldr	d5, [x19, #6040]
	ldr	d6, [x19, #6048]
	fneg	d7, d1
	ldr	d17, [sp, #12952]
	ldr	d16, [sp, #12656]
	ldr	d2, [sp, #12664]
	ldr	x9, [sp, #744]                  ; 8-byte Folded Reload
	fmov	d18, d2
LBB17_54:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d17, d4, d17
	ldr	d19, [x9]
	fmadd	d17, d3, d19, d17
	ldur	d20, [x9, #-16]
	fmadd	d17, d3, d20, d17
	fmul	d20, d6, d18
	fmadd	d16, d5, d16, d20
	fmul	d20, d16, d7
	fmov	d16, d18
	fmadd	d18, d0, d17, d20
	str	d18, [x26, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d17, d19
	cmp	x8, #256
	b.ne	LBB17_54
; %bb.55:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #3, lsl #12             ; =12288
	add	x9, x9, #352
	ldp	q0, q3, [x9, #256]
	ldr	x9, [sp, #4760]                 ; 8-byte Folded Reload
	stp	q0, q3, [x9]
	ldr	x9, [sp, #4752]                 ; 8-byte Folded Reload
	ldp	q3, q0, [x9]
	str	q0, [sp, #12368]
	str	q3, [sp, #12352]
	ldr	d4, [x19, #6088]
	ldr	d5, [x19, #6096]
	ldr	d0, [x19, #6104]
	ldr	d6, [x19, #6112]
	ldr	d7, [x19, #6120]
	fneg	d16, d0
	ldr	q3, [sp, #12368]
	mov	d18, v3[1]
	mov	x9, x26
	fmov	d17, d3
	ldr	x26, [sp, #488]                 ; 8-byte Folded Reload
LBB17_56:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d2, d5, d2
	ldr	d19, [x9]
	fmadd	d2, d4, d19, d2
	ldur	d20, [x9, #-16]
	fmadd	d2, d4, d20, d2
	fmul	d20, d7, d18
	fmadd	d17, d6, d17, d20
	fmul	d20, d17, d16
	fmov	d17, d18
	fmadd	d18, d1, d2, d20
	str	d18, [x26, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d2, d19
	cmp	x8, #256
	b.ne	LBB17_56
; %bb.57:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #3, lsl #12             ; =12288
	add	x9, x9, #64
	ldp	q1, q2, [x9, #256]
	ldr	x9, [sp, #4752]                 ; 8-byte Folded Reload
	stp	q1, q2, [x9]
	ldr	d1, [x19, #6160]
	ldr	d2, [x19, #6168]
	ldr	q4, [sp, #12384]
	ldr	q5, [sp, #12400]
	ext.16b	v6, v3, v4, #8
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v4, v1[0]
	fmla.2d	v6, v3, v1[0]
	fmul.2d	v3, v6, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #12096]
	str	q4, [sp, #12112]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #12416]
	ldr	q6, [sp, #12432]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #12128]
	str	q4, [sp, #12144]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #12448]
	ldr	q5, [sp, #12464]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #12160]
	str	q4, [sp, #12176]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #12480]
	ldr	q6, [sp, #12496]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #12192]
	str	q4, [sp, #12208]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #12512]
	ldr	q5, [sp, #12528]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #12224]
	str	q4, [sp, #12240]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #12544]
	ldr	q6, [sp, #12560]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #12256]
	str	q4, [sp, #12272]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #12576]
	ldr	q5, [sp, #12592]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #12288]
	str	q4, [sp, #12304]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #12608]
	ldr	q6, [sp, #12624]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v2, v5, v2[0]
	fmla.2d	v2, v6, v1[0]
	fmla.2d	v2, v4, v1[0]
	fmul.2d	v0, v2, v0[0]
	str	q3, [sp, #12320]
	str	q0, [sp, #12336]
	ldr	x26, [sp, #264]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x26]
	str	q0, [sp, #10672]
	str	q1, [sp, #10656]
	ldr	d0, [x19, #6480]
	ldr	d1, [x19, #6488]
	ldr	d2, [x19, #6496]
	ldr	d3, [sp, #10672]
	ldr	d4, [sp, #10680]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #12096]
	ldr	d6, [sp, #12104]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #10688]
	str	d4, [sp, #10696]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #12112]
	ldr	d6, [sp, #12120]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #10704]
	str	d4, [sp, #10712]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #12128]
	ldr	d6, [sp, #12136]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #10720]
	str	d4, [sp, #10728]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #12144]
	ldr	d6, [sp, #12152]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #10736]
	str	d4, [sp, #10744]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #12160]
	ldr	d6, [sp, #12168]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #10752]
	str	d4, [sp, #10760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #12176]
	ldr	d6, [sp, #12184]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #10768]
	str	d4, [sp, #10776]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #12192]
	ldr	d6, [sp, #12200]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #10784]
	str	d4, [sp, #10792]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #12208]
	ldr	d6, [sp, #12216]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #10800]
	str	d4, [sp, #10808]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #12224]
	ldr	d6, [sp, #12232]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #10816]
	str	d4, [sp, #10824]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #12240]
	ldr	d6, [sp, #12248]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #10832]
	str	d4, [sp, #10840]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #12256]
	ldr	d6, [sp, #12264]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #10848]
	str	d4, [sp, #10856]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #12272]
	ldr	d6, [sp, #12280]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #10864]
	str	d4, [sp, #10872]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #12288]
	ldr	d6, [sp, #12296]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #10880]
	str	d4, [sp, #10888]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #12304]
	ldr	d6, [sp, #12312]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #10896]
	str	d4, [sp, #10904]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #12320]
	ldr	d6, [sp, #12328]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #10912]
	str	d4, [sp, #10920]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #12336]
	ldr	d6, [sp, #12344]
	fmsub	d3, d0, d3, d5
	fmul	d2, d2, d3
	fmadd	d1, d1, d4, d2
	fmsub	d0, d0, d1, d6
	str	d3, [sp, #10928]
	str	d0, [sp, #10936]
	add	x9, sp, #2, lsl #12             ; =8192
	add	x9, x9, #2464
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x26]
	ldr	x9, [sp, #4744]                 ; 8-byte Folded Reload
	ldp	q0, q1, [x9]
	str	q1, [sp, #10384]
	str	q0, [sp, #10368]
	ldr	d0, [x19, #6480]
	ldr	d3, [x19, #6544]
	ldr	d4, [x19, #6552]
	ldr	d1, [x19, #6560]
	ldr	d5, [x19, #6568]
	ldr	d6, [x19, #6576]
	fneg	d7, d1
	ldr	d17, [sp, #10680]
	ldr	d16, [sp, #10384]
	ldr	d2, [sp, #10392]
	ldr	x9, [sp, #880]                  ; 8-byte Folded Reload
	fmov	d18, d2
	ldr	x26, [sp, #552]                 ; 8-byte Folded Reload
LBB17_58:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d17, d4, d17
	ldr	d19, [x9]
	fmadd	d17, d3, d19, d17
	ldur	d20, [x9, #-16]
	fmadd	d17, d3, d20, d17
	fmul	d20, d6, d18
	fmadd	d16, d5, d16, d20
	fmul	d20, d16, d7
	fmov	d16, d18
	fmadd	d18, d0, d17, d20
	str	d18, [x26, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d17, d19
	cmp	x8, #256
	b.ne	LBB17_58
; %bb.59:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #2, lsl #12             ; =8192
	add	x9, x9, #2176
	ldp	q0, q3, [x9, #256]
	ldr	x9, [sp, #4744]                 ; 8-byte Folded Reload
	stp	q0, q3, [x9]
	ldr	x9, [sp, #4736]                 ; 8-byte Folded Reload
	ldp	q3, q0, [x9]
	str	q0, [sp, #10096]
	str	q3, [sp, #10080]
	ldr	d4, [x19, #6616]
	ldr	d5, [x19, #6624]
	ldr	d0, [x19, #6632]
	ldr	d6, [x19, #6640]
	ldr	d7, [x19, #6648]
	fneg	d16, d0
	ldr	q3, [sp, #10096]
	mov	d18, v3[1]
	mov	x9, x26
	fmov	d17, d3
	ldr	x26, [sp, #496]                 ; 8-byte Folded Reload
LBB17_60:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d2, d5, d2
	ldr	d19, [x9]
	fmadd	d2, d4, d19, d2
	ldur	d20, [x9, #-16]
	fmadd	d2, d4, d20, d2
	fmul	d20, d7, d18
	fmadd	d17, d6, d17, d20
	fmul	d20, d17, d16
	fmov	d17, d18
	fmadd	d18, d1, d2, d20
	str	d18, [x26, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d2, d19
	cmp	x8, #256
	b.ne	LBB17_60
; %bb.61:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #2, lsl #12             ; =8192
	add	x9, x9, #1888
	ldp	q1, q2, [x9, #256]
	ldr	x9, [sp, #4736]                 ; 8-byte Folded Reload
	stp	q1, q2, [x9]
	ldr	d1, [x19, #6688]
	ldr	d2, [x19, #6696]
	ldr	q4, [sp, #10112]
	ldr	q5, [sp, #10128]
	ext.16b	v6, v3, v4, #8
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v4, v1[0]
	fmla.2d	v6, v3, v1[0]
	fmul.2d	v3, v6, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #9824]
	str	q4, [sp, #9840]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #10144]
	ldr	q6, [sp, #10160]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #9856]
	str	q4, [sp, #9872]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #10176]
	ldr	q5, [sp, #10192]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #9888]
	str	q4, [sp, #9904]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #10208]
	ldr	q6, [sp, #10224]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #9920]
	str	q4, [sp, #9936]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #10240]
	ldr	q5, [sp, #10256]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #9952]
	str	q4, [sp, #9968]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #10272]
	ldr	q6, [sp, #10288]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v5, v5, v2[0]
	fmla.2d	v5, v6, v1[0]
	fmla.2d	v5, v4, v1[0]
	fmul.2d	v4, v5, v0[0]
	str	q3, [sp, #9984]
	str	q4, [sp, #10000]
	dup.2d	v3, v6[1]
	ldr	q4, [sp, #10304]
	ldr	q5, [sp, #10320]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v6, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v6, v4[1]
	zip1.2d	v6, v6, v5
	fmul.2d	v6, v6, v2[0]
	fmla.2d	v6, v5, v1[0]
	fmla.2d	v6, v4, v1[0]
	fmul.2d	v4, v6, v0[0]
	str	q3, [sp, #10016]
	str	q4, [sp, #10032]
	dup.2d	v3, v5[1]
	ldr	q4, [sp, #10336]
	ldr	q6, [sp, #10352]
	zip1.2d	v3, v3, v4
	fmul.2d	v3, v3, v2[0]
	fmla.2d	v3, v4, v1[0]
	fmla.2d	v3, v5, v1[0]
	fmul.2d	v3, v3, v0[0]
	dup.2d	v5, v4[1]
	zip1.2d	v5, v5, v6
	fmul.2d	v2, v5, v2[0]
	fmla.2d	v2, v6, v1[0]
	fmla.2d	v2, v4, v1[0]
	fmul.2d	v0, v2, v0[0]
	str	q3, [sp, #10048]
	str	q0, [sp, #10064]
	ldr	x26, [sp, #256]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x26]
	str	q0, [sp, #8400]
	str	q1, [sp, #8384]
	ldr	d0, [x19, #7008]
	ldr	d1, [x19, #7016]
	ldr	d2, [x19, #7024]
	ldr	d3, [sp, #8400]
	ldr	d4, [sp, #8408]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #9824]
	ldr	d6, [sp, #9832]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #8416]
	str	d4, [sp, #8424]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #9840]
	ldr	d6, [sp, #9848]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #8432]
	str	d4, [sp, #8440]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #9856]
	ldr	d6, [sp, #9864]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #8448]
	str	d4, [sp, #8456]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #9872]
	ldr	d6, [sp, #9880]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #8464]
	str	d4, [sp, #8472]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #9888]
	ldr	d6, [sp, #9896]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #8480]
	str	d4, [sp, #8488]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #9904]
	ldr	d6, [sp, #9912]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #8496]
	str	d4, [sp, #8504]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #9920]
	ldr	d6, [sp, #9928]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #8512]
	str	d4, [sp, #8520]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #9936]
	ldr	d6, [sp, #9944]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #8528]
	str	d4, [sp, #8536]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #9952]
	ldr	d6, [sp, #9960]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #8544]
	str	d4, [sp, #8552]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #9968]
	ldr	d6, [sp, #9976]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #8560]
	str	d4, [sp, #8568]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #9984]
	ldr	d6, [sp, #9992]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #8576]
	str	d4, [sp, #8584]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #10000]
	ldr	d6, [sp, #10008]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #8592]
	str	d4, [sp, #8600]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #10016]
	ldr	d6, [sp, #10024]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #8608]
	str	d4, [sp, #8616]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #10032]
	ldr	d6, [sp, #10040]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #8624]
	str	d4, [sp, #8632]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #10048]
	ldr	d6, [sp, #10056]
	fmsub	d3, d0, d3, d5
	fmul	d5, d2, d3
	fmadd	d4, d1, d4, d5
	fmsub	d4, d0, d4, d6
	str	d3, [sp, #8640]
	str	d4, [sp, #8648]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d5, [sp, #10064]
	ldr	d6, [sp, #10072]
	fmsub	d3, d0, d3, d5
	fmul	d2, d2, d3
	fmadd	d1, d1, d4, d2
	fmsub	d0, d0, d1, d6
	str	d3, [sp, #8656]
	str	d0, [sp, #8664]
	add	x9, sp, #2, lsl #12             ; =8192
	add	x9, x9, #192
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x26]
	ldr	x9, [sp, #4728]                 ; 8-byte Folded Reload
	ldp	q0, q1, [x9]
	str	q1, [sp, #8112]
	str	q0, [sp, #8096]
	ldr	d2, [x19, #7008]
	ldr	d3, [x19, #7072]
	ldr	d4, [x19, #7080]
	ldr	d0, [x19, #7088]
	ldr	d5, [x19, #7096]
	ldr	d6, [x19, #7104]
	fneg	d7, d0
	ldr	d17, [sp, #8408]
	ldr	d16, [sp, #8112]
	ldr	d1, [sp, #8120]
	ldr	x9, [sp, #752]                  ; 8-byte Folded Reload
	fmov	d18, d1
	ldr	x26, [sp, #560]                 ; 8-byte Folded Reload
LBB17_62:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d17, d4, d17
	ldr	d19, [x9]
	fmadd	d17, d3, d19, d17
	ldur	d20, [x9, #-16]
	fmadd	d17, d3, d20, d17
	fmul	d20, d6, d18
	fmadd	d16, d5, d16, d20
	fmul	d20, d16, d7
	fmov	d16, d18
	fmadd	d18, d2, d17, d20
	str	d18, [x26, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d17, d19
	cmp	x8, #256
	b.ne	LBB17_62
; %bb.63:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #4000
	ldp	q2, q3, [x9, #256]
	ldr	x9, [sp, #4728]                 ; 8-byte Folded Reload
	stp	q2, q3, [x9]
	ldr	x9, [sp, #4720]                 ; 8-byte Folded Reload
	ldp	q3, q2, [x9]
	str	q2, [sp, #7824]
	str	q3, [sp, #7808]
	ldr	d3, [x19, #7144]
	ldr	d4, [x19, #7152]
	ldr	d2, [x19, #7160]
	ldr	d5, [x19, #7168]
	ldr	d6, [x19, #7176]
	str	q2, [sp, #4240]                 ; 16-byte Folded Spill
	fneg	d7, d2
	ldr	q2, [sp, #7824]
	mov	d17, v2[1]
	mov	x9, x26
	fmov	d16, d2
	ldr	x26, [sp, #504]                 ; 8-byte Folded Reload
LBB17_64:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d1, d4, d1
	ldr	d18, [x9]
	fmadd	d1, d3, d18, d1
	ldur	d19, [x9, #-16]
	fmadd	d1, d3, d19, d1
	fmul	d19, d6, d17
	fmadd	d16, d5, d16, d19
	fmul	d19, d16, d7
	fmov	d16, d17
	fmadd	d17, d0, d1, d19
	str	d17, [x26, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d1, d18
	cmp	x8, #256
	b.ne	LBB17_64
; %bb.65:                               ;   in Loop: Header=BB17_7 Depth=1
	ldr	d1, [x19, #7216]
	mov	x8, #0                          ; =0x0
	ldr	d3, [x19, #7224]
	ldr	q4, [sp, #7840]
	ldr	q5, [sp, #7856]
	ext.16b	v0, v2, v4, #8
	fmul.2d	v16, v0, v3[0]
	fmla.2d	v16, v4, v1[0]
	fmla.2d	v16, v2, v1[0]
	dup.2d	v2, v4[1]
	zip1.2d	v2, v2, v5
	fmul.2d	v15, v2, v3[0]
	fmla.2d	v15, v5, v1[0]
	fmla.2d	v15, v4, v1[0]
	dup.2d	v2, v5[1]
	ldr	q4, [sp, #7872]
	ldr	q6, [sp, #7888]
	zip1.2d	v2, v2, v4
	fmul.2d	v14, v2, v3[0]
	fmla.2d	v14, v4, v1[0]
	dup.2d	v2, v4[1]
	fmla.2d	v14, v5, v1[0]
	zip1.2d	v2, v2, v6
	fmul.2d	v13, v2, v3[0]
	fmla.2d	v13, v6, v1[0]
	dup.2d	v2, v6[1]
	fmla.2d	v13, v4, v1[0]
	ldr	q4, [sp, #7904]
	ldr	q5, [sp, #7920]
	zip1.2d	v2, v2, v4
	fmul.2d	v12, v2, v3[0]
	fmla.2d	v12, v4, v1[0]
	fmla.2d	v12, v6, v1[0]
	dup.2d	v2, v4[1]
	zip1.2d	v2, v2, v5
	fmul.2d	v11, v2, v3[0]
	fmla.2d	v11, v5, v1[0]
	fmla.2d	v11, v4, v1[0]
	dup.2d	v2, v5[1]
	ldr	q4, [sp, #7936]
	ldr	q6, [sp, #7952]
	zip1.2d	v2, v2, v4
	fmul.2d	v10, v2, v3[0]
	fmla.2d	v10, v4, v1[0]
	fmla.2d	v10, v5, v1[0]
	dup.2d	v2, v4[1]
	zip1.2d	v2, v2, v6
	fmul.2d	v9, v2, v3[0]
	fmla.2d	v9, v6, v1[0]
	fmla.2d	v9, v4, v1[0]
	dup.2d	v2, v6[1]
	ldr	q4, [sp, #7968]
	ldr	q5, [sp, #7984]
	zip1.2d	v2, v2, v4
	fmul.2d	v8, v2, v3[0]
	fmla.2d	v8, v4, v1[0]
	dup.2d	v2, v4[1]
	fmla.2d	v8, v6, v1[0]
	zip1.2d	v2, v2, v5
	fmul.2d	v31, v2, v3[0]
	fmla.2d	v31, v5, v1[0]
	dup.2d	v2, v5[1]
	fmla.2d	v31, v4, v1[0]
	ldr	q4, [sp, #8000]
	ldr	q6, [sp, #8016]
	zip1.2d	v2, v2, v4
	fmul.2d	v30, v2, v3[0]
	fmla.2d	v30, v4, v1[0]
	fmla.2d	v30, v5, v1[0]
	dup.2d	v2, v4[1]
	zip1.2d	v2, v2, v6
	fmul.2d	v29, v2, v3[0]
	fmla.2d	v29, v6, v1[0]
	fmla.2d	v29, v4, v1[0]
	dup.2d	v2, v6[1]
	ldr	q4, [sp, #8032]
	ldr	q5, [sp, #8048]
	zip1.2d	v2, v2, v4
	fmul.2d	v28, v2, v3[0]
	fmla.2d	v28, v4, v1[0]
	fmla.2d	v28, v6, v1[0]
	dup.2d	v2, v4[1]
	zip1.2d	v2, v2, v5
	fmul.2d	v27, v2, v3[0]
	fmla.2d	v27, v5, v1[0]
	fmla.2d	v27, v4, v1[0]
	dup.2d	v2, v5[1]
	ldr	q4, [sp, #8064]
	ldr	q6, [sp, #8080]
	zip1.2d	v2, v2, v4
	fmul.2d	v26, v2, v3[0]
	fmla.2d	v26, v4, v1[0]
	dup.2d	v2, v4[1]
	fmla.2d	v26, v5, v1[0]
	zip1.2d	v2, v2, v6
	fmul.2d	v25, v2, v3[0]
	fmla.2d	v25, v6, v1[0]
	fmla.2d	v25, v4, v1[0]
	ldr	x20, [sp, #72]                  ; 8-byte Folded Reload
	ldp	q0, q1, [x20]
	str	q0, [sp, #2624]                 ; 16-byte Folded Spill
	str	q1, [sp, #36816]
	ldp	d1, d2, [x19, #368]
	ldr	d3, [x19, #400]
	add	x9, sp, #4056
	ldr	d4, [x9, #32760]
	add	x9, sp, #4064
	ldr	d5, [x9, #32760]
	fmul	d6, d3, d5
	fmadd	d4, d2, d4, d6
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #232
	ldr	d6, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #240
	ldr	d7, [x9, #32760]
	fmsub	d0, d1, d4, d6
	str	d0, [sp, #2616]                 ; 8-byte Folded Spill
	fmul	d4, d3, d0
	fmadd	d4, d2, d5, d4
	fmsub	d7, d1, d4, d7
	str	d7, [sp, #2608]                 ; 8-byte Folded Spill
	fmul	d4, d3, d7
	fmadd	d4, d2, d0, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #248
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #256
	ldr	d6, [x9, #32760]
	fmsub	d0, d1, d4, d5
	str	d0, [sp, #2600]                 ; 8-byte Folded Spill
	fmul	d4, d3, d0
	fmadd	d4, d2, d7, d4
	fmsub	d7, d1, d4, d6
	str	d7, [sp, #2592]                 ; 8-byte Folded Spill
	fmul	d4, d3, d7
	fmadd	d4, d2, d0, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #264
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #272
	ldr	d6, [x9, #32760]
	fmsub	d0, d1, d4, d5
	str	d0, [sp, #2584]                 ; 8-byte Folded Spill
	fmul	d4, d3, d0
	fmadd	d4, d2, d7, d4
	fmsub	d7, d1, d4, d6
	str	d7, [sp, #2576]                 ; 8-byte Folded Spill
	fmul	d4, d3, d7
	fmadd	d4, d2, d0, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #280
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #288
	ldr	d6, [x9, #32760]
	fmsub	d0, d1, d4, d5
	str	d0, [sp, #2568]                 ; 8-byte Folded Spill
	fmul	d4, d3, d0
	fmadd	d4, d2, d7, d4
	fmsub	d7, d1, d4, d6
	str	d7, [sp, #2560]                 ; 8-byte Folded Spill
	fmul	d4, d3, d7
	fmadd	d4, d2, d0, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #296
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #304
	ldr	d6, [x9, #32760]
	fmsub	d0, d1, d4, d5
	str	d0, [sp, #2552]                 ; 8-byte Folded Spill
	fmul	d4, d3, d0
	fmadd	d4, d2, d7, d4
	fmsub	d7, d1, d4, d6
	str	d7, [sp, #2544]                 ; 8-byte Folded Spill
	fmul	d4, d3, d7
	fmadd	d4, d2, d0, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #312
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #320
	ldr	d6, [x9, #32760]
	fmsub	d0, d1, d4, d5
	str	d0, [sp, #2536]                 ; 8-byte Folded Spill
	fmul	d4, d3, d0
	fmadd	d4, d2, d7, d4
	fmsub	d7, d1, d4, d6
	str	d7, [sp, #2528]                 ; 8-byte Folded Spill
	fmul	d4, d3, d7
	fmadd	d4, d2, d0, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #328
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #336
	ldr	d6, [x9, #32760]
	fmsub	d0, d1, d4, d5
	str	d0, [sp, #2520]                 ; 8-byte Folded Spill
	fmul	d4, d3, d0
	fmadd	d4, d2, d7, d4
	fmsub	d7, d1, d4, d6
	str	d7, [sp, #2512]                 ; 8-byte Folded Spill
	fmul	d4, d3, d7
	fmadd	d4, d2, d0, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #344
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #352
	ldr	d6, [x9, #32760]
	fmsub	d0, d1, d4, d5
	str	d0, [sp, #2504]                 ; 8-byte Folded Spill
	fmul	d4, d3, d0
	fmadd	d4, d2, d7, d4
	fmsub	d7, d1, d4, d6
	str	d7, [sp, #2496]                 ; 8-byte Folded Spill
	fmul	d4, d3, d7
	fmadd	d4, d2, d0, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #360
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #368
	ldr	d6, [x9, #32760]
	fmsub	d0, d1, d4, d5
	str	d0, [sp, #2488]                 ; 8-byte Folded Spill
	fmul	d4, d3, d0
	fmadd	d4, d2, d7, d4
	fmsub	d7, d1, d4, d6
	str	d7, [sp, #2480]                 ; 8-byte Folded Spill
	fmul	d4, d3, d7
	fmadd	d4, d2, d0, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #376
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #384
	ldr	d6, [x9, #32760]
	fmsub	d0, d1, d4, d5
	str	d0, [sp, #2472]                 ; 8-byte Folded Spill
	fmul	d4, d3, d0
	fmadd	d4, d2, d7, d4
	fmsub	d7, d1, d4, d6
	str	d7, [sp, #2464]                 ; 8-byte Folded Spill
	fmul	d4, d3, d7
	fmadd	d4, d2, d0, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #392
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #400
	ldr	d6, [x9, #32760]
	fmsub	d0, d1, d4, d5
	str	d0, [sp, #2456]                 ; 8-byte Folded Spill
	fmul	d4, d3, d0
	fmadd	d4, d2, d7, d4
	fmsub	d7, d1, d4, d6
	str	d7, [sp, #2448]                 ; 8-byte Folded Spill
	fmul	d4, d3, d7
	fmadd	d4, d2, d0, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #408
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #416
	ldr	d6, [x9, #32760]
	fmsub	d0, d1, d4, d5
	str	d0, [sp, #2440]                 ; 8-byte Folded Spill
	fmul	d4, d3, d0
	fmadd	d4, d2, d7, d4
	fmsub	d7, d1, d4, d6
	str	d7, [sp, #2432]                 ; 8-byte Folded Spill
	fmul	d4, d3, d7
	fmadd	d4, d2, d0, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #424
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #432
	ldr	d6, [x9, #32760]
	fmsub	d0, d1, d4, d5
	str	d0, [sp, #2424]                 ; 8-byte Folded Spill
	fmul	d4, d3, d0
	fmadd	d4, d2, d7, d4
	fmsub	d7, d1, d4, d6
	str	d7, [sp, #2416]                 ; 8-byte Folded Spill
	fmul	d4, d3, d7
	fmadd	d4, d2, d0, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #440
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #448
	ldr	d6, [x9, #32760]
	fmsub	d0, d1, d4, d5
	str	d0, [sp, #2400]                 ; 8-byte Folded Spill
	fmul	d4, d3, d0
	fmadd	d4, d2, d7, d4
	fmsub	d7, d1, d4, d6
	str	d7, [sp, #2392]                 ; 8-byte Folded Spill
	fmul	d4, d3, d7
	fmadd	d4, d2, d0, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #456
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #464
	ldr	d6, [x9, #32760]
	fmsub	d0, d1, d4, d5
	str	d0, [sp, #2360]                 ; 8-byte Folded Spill
	fmul	d4, d3, d0
	fmadd	d4, d2, d7, d4
	fmsub	d7, d1, d4, d6
	str	d7, [sp, #2336]                 ; 8-byte Folded Spill
	fmul	d4, d3, d7
	fmadd	d4, d2, d0, d4
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #472
	ldr	d5, [x9, #32760]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #480
	ldr	d6, [x9, #32760]
	fmsub	d0, d1, d4, d5
	str	d0, [sp, #2352]                 ; 8-byte Folded Spill
	fmul	d3, d3, d0
	fmadd	d2, d2, d7, d3
	fmsub	d0, d1, d2, d6
	str	d0, [sp, #2344]                 ; 8-byte Folded Spill
	ldr	x21, [sp, #64]                  ; 8-byte Folded Reload
	ldp	q0, q1, [x21]
	str	q0, [sp, #2368]                 ; 16-byte Folded Spill
	str	q1, [sp, #34544]
	ldr	d1, [x19, #920]
	ldr	d2, [x19, #944]
	add	x9, sp, #1784
	ldr	d3, [x9, #32760]
	add	x9, sp, #1792
	ldr	d4, [x9, #32760]
	fmul	d5, d2, d4
	fmadd	d3, d1, d3, d5
	ldr	d23, [x19, #912]
	add	x9, sp, #2056
	ldr	d5, [x9, #32760]
	add	x9, sp, #2064
	ldr	d6, [x9, #32760]
	fmsub	d0, d23, d3, d5
	str	d0, [sp, #2328]                 ; 8-byte Folded Spill
	fmul	d3, d2, d0
	fmadd	d3, d1, d4, d3
	fmsub	d6, d23, d3, d6
	str	d6, [sp, #2320]                 ; 8-byte Folded Spill
	fmul	d3, d2, d6
	fmadd	d3, d1, d0, d3
	add	x9, sp, #2072
	ldr	d4, [x9, #32760]
	add	x9, sp, #2080
	ldr	d5, [x9, #32760]
	fmsub	d0, d23, d3, d4
	str	d0, [sp, #2312]                 ; 8-byte Folded Spill
	fmul	d3, d2, d0
	fmadd	d3, d1, d6, d3
	fmsub	d6, d23, d3, d5
	str	d6, [sp, #2304]                 ; 8-byte Folded Spill
	fmul	d3, d2, d6
	fmadd	d3, d1, d0, d3
	add	x9, sp, #2088
	ldr	d4, [x9, #32760]
	add	x9, sp, #2096
	ldr	d5, [x9, #32760]
	fmsub	d0, d23, d3, d4
	str	d0, [sp, #2296]                 ; 8-byte Folded Spill
	fmul	d3, d2, d0
	fmadd	d3, d1, d6, d3
	fmsub	d6, d23, d3, d5
	str	d6, [sp, #2288]                 ; 8-byte Folded Spill
	fmul	d3, d2, d6
	fmadd	d3, d1, d0, d3
	add	x9, sp, #2104
	ldr	d4, [x9, #32760]
	add	x9, sp, #2112
	ldr	d5, [x9, #32760]
	fmsub	d0, d23, d3, d4
	str	d0, [sp, #2280]                 ; 8-byte Folded Spill
	fmul	d3, d2, d0
	fmadd	d3, d1, d6, d3
	fmsub	d6, d23, d3, d5
	str	d6, [sp, #2272]                 ; 8-byte Folded Spill
	fmul	d3, d2, d6
	fmadd	d3, d1, d0, d3
	add	x9, sp, #2120
	ldr	d4, [x9, #32760]
	add	x9, sp, #2128
	ldr	d5, [x9, #32760]
	fmsub	d0, d23, d3, d4
	str	d0, [sp, #2264]                 ; 8-byte Folded Spill
	fmul	d3, d2, d0
	fmadd	d3, d1, d6, d3
	fmsub	d6, d23, d3, d5
	str	d6, [sp, #2256]                 ; 8-byte Folded Spill
	fmul	d3, d2, d6
	fmadd	d3, d1, d0, d3
	add	x9, sp, #2136
	ldr	d4, [x9, #32760]
	add	x9, sp, #2144
	ldr	d5, [x9, #32760]
	fmsub	d0, d23, d3, d4
	str	d0, [sp, #2248]                 ; 8-byte Folded Spill
	fmul	d3, d2, d0
	fmadd	d3, d1, d6, d3
	fmsub	d6, d23, d3, d5
	str	d6, [sp, #2240]                 ; 8-byte Folded Spill
	fmul	d3, d2, d6
	fmadd	d3, d1, d0, d3
	add	x9, sp, #2152
	ldr	d4, [x9, #32760]
	add	x9, sp, #2160
	ldr	d5, [x9, #32760]
	fmsub	d0, d23, d3, d4
	str	d0, [sp, #2232]                 ; 8-byte Folded Spill
	fmul	d3, d2, d0
	fmadd	d3, d1, d6, d3
	fmsub	d6, d23, d3, d5
	str	d6, [sp, #2224]                 ; 8-byte Folded Spill
	fmul	d3, d2, d6
	fmadd	d3, d1, d0, d3
	add	x9, sp, #2168
	ldr	d4, [x9, #32760]
	add	x9, sp, #2176
	ldr	d5, [x9, #32760]
	fmsub	d0, d23, d3, d4
	str	d0, [sp, #2216]                 ; 8-byte Folded Spill
	fmul	d3, d2, d0
	fmadd	d3, d1, d6, d3
	fmsub	d6, d23, d3, d5
	str	d6, [sp, #2208]                 ; 8-byte Folded Spill
	fmul	d3, d2, d6
	fmadd	d3, d1, d0, d3
	add	x9, sp, #2184
	ldr	d4, [x9, #32760]
	add	x9, sp, #2192
	ldr	d5, [x9, #32760]
	fmsub	d0, d23, d3, d4
	str	d0, [sp, #2200]                 ; 8-byte Folded Spill
	fmul	d3, d2, d0
	fmadd	d3, d1, d6, d3
	fmsub	d6, d23, d3, d5
	str	d6, [sp, #2192]                 ; 8-byte Folded Spill
	fmul	d3, d2, d6
	fmadd	d3, d1, d0, d3
	add	x9, sp, #2200
	ldr	d4, [x9, #32760]
	add	x9, sp, #2208
	ldr	d5, [x9, #32760]
	fmsub	d0, d23, d3, d4
	str	d0, [sp, #2184]                 ; 8-byte Folded Spill
	fmul	d3, d2, d0
	fmadd	d3, d1, d6, d3
	fmsub	d6, d23, d3, d5
	str	d6, [sp, #2176]                 ; 8-byte Folded Spill
	fmul	d3, d2, d6
	fmadd	d3, d1, d0, d3
	add	x9, sp, #2216
	ldr	d4, [x9, #32760]
	add	x9, sp, #2224
	ldr	d5, [x9, #32760]
	fmsub	d0, d23, d3, d4
	str	d0, [sp, #2168]                 ; 8-byte Folded Spill
	fmul	d3, d2, d0
	fmadd	d3, d1, d6, d3
	fmsub	d6, d23, d3, d5
	str	d6, [sp, #2160]                 ; 8-byte Folded Spill
	fmul	d3, d2, d6
	fmadd	d3, d1, d0, d3
	add	x9, sp, #2232
	ldr	d4, [x9, #32760]
	add	x9, sp, #2240
	ldr	d5, [x9, #32760]
	fmsub	d0, d23, d3, d4
	str	d0, [sp, #2152]                 ; 8-byte Folded Spill
	fmul	d3, d2, d0
	fmadd	d3, d1, d6, d3
	fmsub	d6, d23, d3, d5
	str	d6, [sp, #2144]                 ; 8-byte Folded Spill
	fmul	d3, d2, d6
	fmadd	d3, d1, d0, d3
	add	x9, sp, #2248
	ldr	d4, [x9, #32760]
	add	x9, sp, #2256
	ldr	d5, [x9, #32760]
	fmsub	d19, d23, d3, d4
	fmul	d3, d2, d19
	fmadd	d3, d1, d6, d3
	fmsub	d18, d23, d3, d5
	fmul	d3, d2, d18
	fmadd	d3, d1, d19, d3
	add	x9, sp, #2264
	ldr	d4, [x9, #32760]
	add	x9, sp, #2272
	ldr	d5, [x9, #32760]
	fmsub	d17, d23, d3, d4
	fmul	d3, d2, d17
	fmadd	d3, d1, d18, d3
	fmsub	d7, d23, d3, d5
	fmul	d3, d2, d7
	fmadd	d3, d1, d17, d3
	add	x9, sp, #2280
	ldr	d4, [x9, #32760]
	add	x9, sp, #2288
	ldr	d22, [x9, #32760]
	fmsub	d6, d23, d3, d4
	fmul	d3, d2, d6
	fmadd	d3, d1, d7, d3
	fmsub	d5, d23, d3, d22
	fmul	d22, d2, d5
	fmadd	d22, d1, d6, d22
	add	x9, sp, #2296
	ldr	d24, [x9, #32760]
	add	x9, sp, #2304
	ldr	d21, [x9, #32760]
	fmsub	d0, d23, d22, d24
	str	d0, [sp, #2120]                 ; 8-byte Folded Spill
	fmul	d2, d2, d0
	fmadd	d1, d1, d5, d2
	fmsub	d0, d23, d1, d21
	str	d0, [sp, #2096]                 ; 8-byte Folded Spill
	ldr	x10, [sp, #56]                  ; 8-byte Folded Reload
	ldp	q0, q1, [x10]
	str	q0, [sp, #2128]                 ; 16-byte Folded Spill
	str	q1, [sp, #32272]
	ldr	d24, [x19, #1448]
	ldr	d23, [x19, #1472]
	ldr	d1, [sp, #32272]
	ldr	d21, [sp, #32280]
	fmul	d2, d23, d21
	fmadd	d1, d24, d1, d2
	ldr	d22, [x19, #1440]
	ldr	d2, [sp, #32544]
	ldr	d20, [sp, #32552]
	fmsub	d4, d22, d1, d2
	fmul	d1, d23, d4
	fmadd	d1, d24, d21, d1
	fmsub	d3, d22, d1, d20
	fmul	d20, d23, d3
	fmadd	d20, d24, d4, d20
	ldr	d21, [sp, #32560]
	ldr	d0, [sp, #32568]
	fmsub	d1, d22, d20, d21
	str	d1, [sp, #4232]                 ; 8-byte Folded Spill
	fmul	d20, d23, d1
	fmadd	d20, d24, d3, d20
	fmsub	d2, d22, d20, d0
	str	d2, [sp, #4224]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d20, [sp, #32576]
	ldr	d21, [sp, #32584]
	fmsub	d1, d22, d0, d20
	str	d1, [sp, #4216]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d21
	str	d2, [sp, #4208]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d20, [sp, #32592]
	ldr	d21, [sp, #32600]
	fmsub	d1, d22, d0, d20
	str	d1, [sp, #4200]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d21
	str	d2, [sp, #4192]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d20, [sp, #32608]
	ldr	d21, [sp, #32616]
	fmsub	d1, d22, d0, d20
	str	d1, [sp, #4184]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d21
	str	d2, [sp, #4176]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d20, [sp, #32624]
	ldr	d21, [sp, #32632]
	fmsub	d1, d22, d0, d20
	str	d1, [sp, #4168]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d21
	str	d2, [sp, #4160]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d20, [sp, #32640]
	ldr	d21, [sp, #32648]
	fmsub	d1, d22, d0, d20
	str	d1, [sp, #4152]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d21
	str	d2, [sp, #4144]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d20, [sp, #32656]
	ldr	d21, [sp, #32664]
	fmsub	d1, d22, d0, d20
	str	d1, [sp, #4136]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d21
	str	d2, [sp, #4128]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d20, [sp, #32672]
	ldr	d21, [sp, #32680]
	fmsub	d1, d22, d0, d20
	str	d1, [sp, #4120]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d21
	str	d2, [sp, #4112]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d20, [sp, #32688]
	ldr	d21, [sp, #32696]
	fmsub	d1, d22, d0, d20
	str	d1, [sp, #4104]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d21
	str	d2, [sp, #4096]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d20, [sp, #32704]
	ldr	d21, [sp, #32712]
	fmsub	d1, d22, d0, d20
	str	d1, [sp, #4088]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d21
	str	d2, [sp, #4080]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d20, [sp, #32720]
	ldr	d21, [sp, #32728]
	fmsub	d1, d22, d0, d20
	str	d1, [sp, #4072]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d21
	str	d2, [sp, #4064]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d20, [sp, #32736]
	ldr	d21, [sp, #32744]
	fmsub	d1, d22, d0, d20
	str	d1, [sp, #4056]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d21
	str	d2, [sp, #4048]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d20, [sp, #32752]
	ldr	d21, [sp, #32760]
	fmsub	d1, d22, d0, d20
	str	d1, [sp, #4040]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d21
	str	d2, [sp, #4032]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	add	x9, sp, #8
	ldr	d20, [x9, #32760]
	add	x9, sp, #16
	ldr	d21, [x9, #32760]
	fmsub	d1, d22, d0, d20
	str	d1, [sp, #4008]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d21
	str	d2, [sp, #3984]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	add	x9, sp, #24
	ldr	d20, [x9, #32760]
	add	x9, sp, #32
	ldr	d21, [x9, #32760]
	fmsub	d0, d22, d0, d20
	str	d0, [sp, #4000]                 ; 8-byte Folded Spill
	fmul	d0, d23, d0
	fmadd	d0, d24, d2, d0
	fmsub	d0, d22, d0, d21
	str	d0, [sp, #3992]                 ; 8-byte Folded Spill
	ldr	x11, [sp, #48]                  ; 8-byte Folded Reload
	ldp	q1, q0, [x11]
	str	q1, [sp, #4016]                 ; 16-byte Folded Spill
	str	q0, [sp, #30000]
	ldr	d24, [x19, #1976]
	ldr	d23, [x19, #2000]
	ldr	d0, [sp, #30000]
	ldr	d20, [sp, #30008]
	fmul	d21, d23, d20
	fmadd	d0, d24, d0, d21
	ldr	d22, [x19, #1968]
	ldr	d21, [sp, #30272]
	ldr	d1, [sp, #30280]
	fmsub	d2, d22, d0, d21
	str	d2, [sp, #3976]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d20, d0
	fmsub	d21, d22, d0, d1
	str	d21, [sp, #3968]                ; 8-byte Folded Spill
	fmul	d0, d23, d21
	fmadd	d0, d24, d2, d0
	ldr	d1, [sp, #30288]
	ldr	d20, [sp, #30296]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3960]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d21, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3952]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #30304]
	ldr	d20, [sp, #30312]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3944]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3936]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #30320]
	ldr	d20, [sp, #30328]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3928]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3920]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #30336]
	ldr	d20, [sp, #30344]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3912]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3904]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #30352]
	ldr	d20, [sp, #30360]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3896]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3888]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #30368]
	ldr	d20, [sp, #30376]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3880]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3872]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #30384]
	ldr	d20, [sp, #30392]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3864]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3856]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #30400]
	ldr	d20, [sp, #30408]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3848]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3840]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #30416]
	ldr	d20, [sp, #30424]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3832]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3824]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #30432]
	ldr	d20, [sp, #30440]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3816]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3808]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #30448]
	ldr	d20, [sp, #30456]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3800]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3792]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #30464]
	ldr	d20, [sp, #30472]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3784]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3776]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #30480]
	ldr	d20, [sp, #30488]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3768]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3760]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #30496]
	ldr	d20, [sp, #30504]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3736]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3712]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #30512]
	ldr	d20, [sp, #30520]
	fmsub	d0, d22, d0, d1
	str	d0, [sp, #3728]                 ; 8-byte Folded Spill
	fmul	d0, d23, d0
	fmadd	d0, d24, d2, d0
	fmsub	d0, d22, d0, d20
	str	d0, [sp, #3720]                 ; 8-byte Folded Spill
	ldr	x12, [sp, #40]                  ; 8-byte Folded Reload
	ldp	q1, q0, [x12]
	str	q1, [sp, #3744]                 ; 16-byte Folded Spill
	str	q0, [sp, #27728]
	ldr	d24, [x19, #2504]
	ldr	d23, [x19, #2528]
	ldr	d0, [sp, #27728]
	ldr	d1, [sp, #27736]
	fmul	d20, d23, d1
	fmadd	d0, d24, d0, d20
	ldr	d22, [x19, #2496]
	ldr	d20, [sp, #28000]
	ldr	d21, [sp, #28008]
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3704]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	fmsub	d21, d22, d0, d21
	str	d21, [sp, #3696]                ; 8-byte Folded Spill
	fmul	d0, d23, d21
	fmadd	d0, d24, d2, d0
	ldr	d1, [sp, #28016]
	ldr	d20, [sp, #28024]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3688]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d21, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3680]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #28032]
	ldr	d20, [sp, #28040]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3672]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3664]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #28048]
	ldr	d20, [sp, #28056]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3656]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3648]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #28064]
	ldr	d20, [sp, #28072]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3640]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3632]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #28080]
	ldr	d20, [sp, #28088]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3624]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3616]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #28096]
	ldr	d20, [sp, #28104]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3608]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3600]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #28112]
	ldr	d20, [sp, #28120]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3592]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3584]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #28128]
	ldr	d20, [sp, #28136]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3576]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3568]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #28144]
	ldr	d20, [sp, #28152]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3560]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3552]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #28160]
	ldr	d20, [sp, #28168]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3544]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3536]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #28176]
	ldr	d20, [sp, #28184]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3528]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3520]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #28192]
	ldr	d20, [sp, #28200]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3512]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3504]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #28208]
	ldr	d20, [sp, #28216]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3496]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3488]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #28224]
	ldr	d20, [sp, #28232]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3464]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3440]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #28240]
	ldr	d20, [sp, #28248]
	fmsub	d0, d22, d0, d1
	str	d0, [sp, #3456]                 ; 8-byte Folded Spill
	fmul	d0, d23, d0
	fmadd	d0, d24, d2, d0
	fmsub	d0, d22, d0, d20
	str	d0, [sp, #3448]                 ; 8-byte Folded Spill
	ldr	x14, [sp, #32]                  ; 8-byte Folded Reload
	ldp	q1, q0, [x14]
	str	q1, [sp, #3472]                 ; 16-byte Folded Spill
	str	q0, [sp, #25456]
	ldr	d24, [x19, #3032]
	ldr	d23, [x19, #3056]
	ldr	d0, [sp, #25456]
	ldr	d1, [sp, #25464]
	fmul	d20, d23, d1
	fmadd	d0, d24, d0, d20
	ldr	d22, [x19, #3024]
	ldr	d20, [sp, #25728]
	ldr	d21, [sp, #25736]
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3432]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	fmsub	d21, d22, d0, d21
	str	d21, [sp, #3424]                ; 8-byte Folded Spill
	fmul	d0, d23, d21
	fmadd	d0, d24, d2, d0
	ldr	d1, [sp, #25744]
	ldr	d20, [sp, #25752]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3416]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d21, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3408]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #25760]
	ldr	d20, [sp, #25768]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3400]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3392]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #25776]
	ldr	d20, [sp, #25784]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3384]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3376]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #25792]
	ldr	d20, [sp, #25800]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3368]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3360]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #25808]
	ldr	d20, [sp, #25816]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3352]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3344]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #25824]
	ldr	d20, [sp, #25832]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3336]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3328]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #25840]
	ldr	d20, [sp, #25848]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3320]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3312]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #25856]
	ldr	d20, [sp, #25864]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3304]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3296]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #25872]
	ldr	d20, [sp, #25880]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3288]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3280]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #25888]
	ldr	d20, [sp, #25896]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3272]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3264]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #25904]
	ldr	d20, [sp, #25912]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3256]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3248]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #25920]
	ldr	d20, [sp, #25928]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3240]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3232]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #25936]
	ldr	d20, [sp, #25944]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3224]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3216]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #25952]
	ldr	d20, [sp, #25960]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3192]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3168]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #25968]
	ldr	d20, [sp, #25976]
	fmsub	d0, d22, d0, d1
	str	d0, [sp, #3184]                 ; 8-byte Folded Spill
	fmul	d0, d23, d0
	fmadd	d0, d24, d2, d0
	fmsub	d0, d22, d0, d20
	str	d0, [sp, #3176]                 ; 8-byte Folded Spill
	ldr	x16, [sp, #24]                  ; 8-byte Folded Reload
	ldp	q1, q0, [x16]
	str	q1, [sp, #3200]                 ; 16-byte Folded Spill
	str	q0, [sp, #23184]
	ldr	d24, [x19, #3560]
	ldr	d23, [x19, #3584]
	ldr	d0, [sp, #23184]
	ldr	d1, [sp, #23192]
	fmul	d20, d23, d1
	fmadd	d0, d24, d0, d20
	ldr	d22, [x19, #3552]
	ldr	d20, [sp, #23456]
	ldr	d21, [sp, #23464]
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3160]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	fmsub	d21, d22, d0, d21
	str	d21, [sp, #3152]                ; 8-byte Folded Spill
	fmul	d0, d23, d21
	fmadd	d0, d24, d2, d0
	ldr	d1, [sp, #23472]
	ldr	d20, [sp, #23480]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3144]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d21, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3136]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #23488]
	ldr	d20, [sp, #23496]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3128]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3120]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #23504]
	ldr	d20, [sp, #23512]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3112]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3104]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #23520]
	ldr	d20, [sp, #23528]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3096]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3088]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #23536]
	ldr	d20, [sp, #23544]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3080]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3072]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #23552]
	ldr	d20, [sp, #23560]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3064]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3056]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #23568]
	ldr	d20, [sp, #23576]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3048]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3040]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #23584]
	ldr	d20, [sp, #23592]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3032]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3024]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #23600]
	ldr	d20, [sp, #23608]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3016]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #3008]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #23616]
	ldr	d20, [sp, #23624]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #3000]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #2992]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #23632]
	ldr	d20, [sp, #23640]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #2984]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #2976]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #23648]
	ldr	d20, [sp, #23656]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #2968]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #2960]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #23664]
	ldr	d20, [sp, #23672]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #2952]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #2944]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #23680]
	ldr	d20, [sp, #23688]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #2920]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #2896]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #23696]
	ldr	d20, [sp, #23704]
	fmsub	d0, d22, d0, d1
	str	d0, [sp, #2912]                 ; 8-byte Folded Spill
	fmul	d0, d23, d0
	fmadd	d0, d24, d2, d0
	fmsub	d0, d22, d0, d20
	str	d0, [sp, #2904]                 ; 8-byte Folded Spill
	ldr	x26, [sp, #248]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x26]
	str	q1, [sp, #2928]                 ; 16-byte Folded Spill
	str	q0, [sp, #20912]
	ldr	d24, [x19, #4088]
	ldr	d23, [x19, #4112]
	ldr	d0, [sp, #20912]
	ldr	d1, [sp, #20920]
	fmul	d20, d23, d1
	fmadd	d0, d24, d0, d20
	ldr	d22, [x19, #4080]
	ldr	d20, [sp, #21184]
	ldr	d21, [sp, #21192]
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #2888]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	fmsub	d21, d22, d0, d21
	str	d21, [sp, #2880]                ; 8-byte Folded Spill
	fmul	d0, d23, d21
	fmadd	d0, d24, d2, d0
	ldr	d1, [sp, #21200]
	ldr	d20, [sp, #21208]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #2872]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d21, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #2864]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #21216]
	ldr	d20, [sp, #21224]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #2856]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #2848]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #21232]
	ldr	d20, [sp, #21240]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #2840]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #2832]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #21248]
	ldr	d20, [sp, #21256]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #2824]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #2816]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #21264]
	ldr	d20, [sp, #21272]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #2808]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #2800]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #21280]
	ldr	d20, [sp, #21288]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #2792]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #2784]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #21296]
	ldr	d20, [sp, #21304]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #2776]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #2768]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #21312]
	ldr	d20, [sp, #21320]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #2760]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #2752]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #21328]
	ldr	d20, [sp, #21336]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #2744]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #2736]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #21344]
	ldr	d20, [sp, #21352]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #2728]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #2720]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #21360]
	ldr	d20, [sp, #21368]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #2712]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #2704]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #21376]
	ldr	d20, [sp, #21384]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #2696]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #2688]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #21392]
	ldr	d20, [sp, #21400]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #2680]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #2672]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #21408]
	ldr	d20, [sp, #21416]
	fmsub	d1, d22, d0, d1
	str	d1, [sp, #2664]                 ; 8-byte Folded Spill
	fmul	d0, d23, d1
	fmadd	d0, d24, d2, d0
	fmsub	d2, d22, d0, d20
	str	d2, [sp, #2640]                 ; 8-byte Folded Spill
	fmul	d0, d23, d2
	fmadd	d0, d24, d1, d0
	ldr	d1, [sp, #21424]
	ldr	d20, [sp, #21432]
	fmsub	d0, d22, d0, d1
	str	d0, [sp, #2656]                 ; 8-byte Folded Spill
	fmul	d0, d23, d0
	fmadd	d0, d24, d2, d0
	fmsub	d0, d22, d0, d20
	str	d0, [sp, #2648]                 ; 8-byte Folded Spill
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #3712
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4720]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	q20, [sp, #4240]                ; 16-byte Folded Reload
	fmul.2d	v0, v16, v20[0]
	fmul.2d	v1, v15, v20[0]
	str	q0, [sp, #7552]
	str	q1, [sp, #7568]
	fmul.2d	v0, v14, v20[0]
	fmul.2d	v1, v13, v20[0]
	str	q0, [sp, #7584]
	str	q1, [sp, #7600]
	fmul.2d	v0, v12, v20[0]
	fmul.2d	v1, v11, v20[0]
	str	q0, [sp, #7616]
	str	q1, [sp, #7632]
	fmul.2d	v0, v10, v20[0]
	fmul.2d	v1, v9, v20[0]
	str	q0, [sp, #7648]
	str	q1, [sp, #7664]
	fmul.2d	v0, v8, v20[0]
	fmul.2d	v1, v31, v20[0]
	str	q0, [sp, #7680]
	str	q1, [sp, #7696]
	fmul.2d	v0, v30, v20[0]
	fmul.2d	v1, v29, v20[0]
	str	q0, [sp, #7712]
	str	q1, [sp, #7728]
	fmul.2d	v0, v28, v20[0]
	fmul.2d	v1, v27, v20[0]
	str	q0, [sp, #7744]
	str	q1, [sp, #7760]
	fmul.2d	v0, v26, v20[0]
	fmul.2d	v1, v25, v20[0]
	str	q0, [sp, #7776]
	str	q1, [sp, #7792]
	ldr	q0, [sp, #2624]                 ; 16-byte Folded Reload
	str	q0, [sp, #36800]
	ldr	d0, [sp, #2616]                 ; 8-byte Folded Reload
	add	x9, sp, #4072
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2608]                 ; 8-byte Folded Reload
	add	x9, sp, #4080
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2600]                 ; 8-byte Folded Reload
	add	x9, sp, #4088
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2592]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2584]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #8
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2576]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #16
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2568]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #24
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2560]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #32
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2552]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #40
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2544]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #48
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2536]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #56
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2528]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #64
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2520]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #72
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2512]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #80
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2504]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #88
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2496]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #96
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2488]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #104
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2480]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #112
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2472]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #120
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2464]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #128
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2456]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #136
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2448]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #144
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2440]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #152
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2432]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #160
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2424]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #168
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2416]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #176
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2400]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #184
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2392]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #192
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2360]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #200
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2336]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #208
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2352]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #216
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2344]                 ; 8-byte Folded Reload
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #224
	str	d0, [x9, #32760]
	add	x9, sp, #8, lsl #12             ; =32768
	add	x9, x9, #4032
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x20]
	ldr	q0, [sp, #2368]                 ; 16-byte Folded Reload
	str	q0, [sp, #34528]
	ldr	d0, [sp, #2328]                 ; 8-byte Folded Reload
	add	x9, sp, #1800
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2320]                 ; 8-byte Folded Reload
	add	x9, sp, #1808
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2312]                 ; 8-byte Folded Reload
	add	x9, sp, #1816
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2304]                 ; 8-byte Folded Reload
	add	x9, sp, #1824
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2296]                 ; 8-byte Folded Reload
	add	x9, sp, #1832
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2288]                 ; 8-byte Folded Reload
	add	x9, sp, #1840
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2280]                 ; 8-byte Folded Reload
	add	x9, sp, #1848
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2272]                 ; 8-byte Folded Reload
	add	x9, sp, #1856
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2264]                 ; 8-byte Folded Reload
	add	x9, sp, #1864
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2256]                 ; 8-byte Folded Reload
	add	x9, sp, #1872
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2248]                 ; 8-byte Folded Reload
	add	x9, sp, #1880
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2240]                 ; 8-byte Folded Reload
	add	x9, sp, #1888
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2232]                 ; 8-byte Folded Reload
	add	x9, sp, #1896
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2224]                 ; 8-byte Folded Reload
	add	x9, sp, #1904
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2216]                 ; 8-byte Folded Reload
	add	x9, sp, #1912
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2208]                 ; 8-byte Folded Reload
	add	x9, sp, #1920
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2200]                 ; 8-byte Folded Reload
	add	x9, sp, #1928
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2192]                 ; 8-byte Folded Reload
	add	x9, sp, #1936
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2184]                 ; 8-byte Folded Reload
	add	x9, sp, #1944
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2176]                 ; 8-byte Folded Reload
	add	x9, sp, #1952
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2168]                 ; 8-byte Folded Reload
	add	x9, sp, #1960
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2160]                 ; 8-byte Folded Reload
	add	x9, sp, #1968
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2152]                 ; 8-byte Folded Reload
	add	x9, sp, #1976
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2144]                 ; 8-byte Folded Reload
	add	x9, sp, #1984
	str	d0, [x9, #32760]
	add	x9, sp, #1992
	str	d19, [x9, #32760]
	add	x9, sp, #2000
	str	d18, [x9, #32760]
	add	x9, sp, #2008
	str	d17, [x9, #32760]
	add	x9, sp, #2016
	str	d7, [x9, #32760]
	add	x9, sp, #2024
	str	d6, [x9, #32760]
	add	x9, sp, #2032
	str	d5, [x9, #32760]
	ldr	d0, [sp, #2120]                 ; 8-byte Folded Reload
	add	x9, sp, #2040
	str	d0, [x9, #32760]
	ldr	d0, [sp, #2096]                 ; 8-byte Folded Reload
	add	x9, sp, #2048
	str	d0, [x9, #32760]
	add	x9, sp, #8, lsl #12             ; =32768
	add	x9, x9, #1760
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x21]
	ldr	q0, [sp, #2128]                 ; 16-byte Folded Reload
	str	q0, [sp, #32256]
	str	d4, [sp, #32288]
	str	d3, [sp, #32296]
	ldr	x28, [sp, #240]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x28]
	str	q1, [sp, #4240]                 ; 16-byte Folded Spill
	str	q0, [sp, #18640]
	ldr	d0, [x19, #4616]
	ldr	d1, [x19, #4640]
	ldr	d2, [sp, #18640]
	ldr	d3, [sp, #18648]
	fmul	d4, d1, d3
	fmadd	d4, d0, d2, d4
	ldr	d2, [x19, #4608]
	ldr	d5, [sp, #18912]
	ldr	d6, [sp, #18920]
	fmsub	d5, d2, d4, d5
	str	d5, [sp, #2624]                 ; 8-byte Folded Spill
	fmul	d4, d1, d5
	fmadd	d3, d0, d3, d4
	fmsub	d6, d2, d3, d6
	str	d6, [sp, #2616]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d5, d3
	ldr	d4, [sp, #18928]
	ldr	d5, [sp, #18936]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2608]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2600]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #18944]
	ldr	d5, [sp, #18952]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2592]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2584]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #18960]
	ldr	d5, [sp, #18968]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2576]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2568]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #18976]
	ldr	d5, [sp, #18984]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2560]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2552]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #18992]
	ldr	d5, [sp, #19000]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2544]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2536]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #19008]
	ldr	d5, [sp, #19016]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2528]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2520]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #19024]
	ldr	d5, [sp, #19032]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2512]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2504]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #19040]
	ldr	d5, [sp, #19048]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2496]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2488]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #19056]
	ldr	d5, [sp, #19064]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2480]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2472]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #19072]
	ldr	d5, [sp, #19080]
	fmsub	d7, d2, d3, d4
	str	d7, [sp, #2464]                 ; 8-byte Folded Spill
	fmul	d3, d1, d7
	fmadd	d3, d0, d6, d3
	fmsub	d3, d2, d3, d5
	str	d3, [sp, #18824]
	fmul	d4, d1, d3
	fmadd	d4, d0, d7, d4
	ldr	d5, [sp, #19088]
	ldr	d6, [sp, #19096]
	fmsub	d5, d2, d4, d5
	str	d5, [sp, #2456]                 ; 8-byte Folded Spill
	fmul	d4, d1, d5
	fmadd	d3, d0, d3, d4
	fmsub	d6, d2, d3, d6
	str	d6, [sp, #2448]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d5, d3
	ldr	d4, [sp, #19104]
	ldr	d5, [sp, #19112]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2440]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2432]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #19120]
	ldr	d5, [sp, #19128]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2424]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2416]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #19136]
	ldr	d5, [sp, #19144]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2392]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2352]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #19152]
	ldr	d5, [sp, #19160]
	fmsub	d3, d2, d3, d4
	str	d3, [sp, #2368]                 ; 8-byte Folded Spill
	fmul	d1, d1, d3
	fmadd	d0, d0, d6, d1
	fmsub	d0, d2, d0, d5
	str	d0, [sp, #2360]                 ; 8-byte Folded Spill
	ldr	x23, [sp, #224]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x23]
	str	q1, [sp, #2400]                 ; 16-byte Folded Spill
	str	q0, [sp, #16368]
	ldr	d0, [x19, #5144]
	ldr	d1, [x19, #5168]
	ldr	d2, [sp, #16368]
	ldr	d3, [sp, #16376]
	fmul	d4, d1, d3
	fmadd	d4, d0, d2, d4
	ldr	d2, [x19, #5136]
	ldr	d5, [sp, #16640]
	ldr	d6, [sp, #16648]
	fmsub	d5, d2, d4, d5
	str	d5, [sp, #2344]                 ; 8-byte Folded Spill
	fmul	d4, d1, d5
	fmadd	d3, d0, d3, d4
	fmsub	d6, d2, d3, d6
	str	d6, [sp, #2336]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d5, d3
	ldr	d4, [sp, #16656]
	ldr	d5, [sp, #16664]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2328]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2320]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #16672]
	ldr	d5, [sp, #16680]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2312]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2304]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #16688]
	ldr	d5, [sp, #16696]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2296]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2288]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #16704]
	ldr	d5, [sp, #16712]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2280]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2272]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #16720]
	ldr	d5, [sp, #16728]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2264]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2256]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #16736]
	ldr	d5, [sp, #16744]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2248]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2240]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #16752]
	ldr	d5, [sp, #16760]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2232]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2224]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #16768]
	ldr	d5, [sp, #16776]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2216]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2208]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #16784]
	ldr	d5, [sp, #16792]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2200]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2192]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #16800]
	ldr	d5, [sp, #16808]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2184]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2176]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #16816]
	ldr	d5, [sp, #16824]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2168]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2160]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #16832]
	ldr	d5, [sp, #16840]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2152]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2144]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #16848]
	ldr	d5, [sp, #16856]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2128]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2120]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #16864]
	ldr	d5, [sp, #16872]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2088]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2064]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #16880]
	ldr	d5, [sp, #16888]
	fmsub	d3, d2, d3, d4
	str	d3, [sp, #2080]                 ; 8-byte Folded Spill
	fmul	d1, d1, d3
	fmadd	d0, d0, d6, d1
	fmsub	d0, d2, d0, d5
	str	d0, [sp, #2072]                 ; 8-byte Folded Spill
	ldr	x22, [sp, #216]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x22]
	str	q1, [sp, #2096]                 ; 16-byte Folded Spill
	str	q0, [sp, #14096]
	ldr	d0, [x19, #5672]
	ldr	d1, [x19, #5696]
	ldr	d2, [sp, #14096]
	ldr	d3, [sp, #14104]
	fmul	d4, d1, d3
	fmadd	d4, d0, d2, d4
	ldr	d2, [x19, #5664]
	ldr	d5, [sp, #14368]
	ldr	d6, [sp, #14376]
	fmsub	d5, d2, d4, d5
	str	d5, [sp, #2056]                 ; 8-byte Folded Spill
	fmul	d4, d1, d5
	fmadd	d3, d0, d3, d4
	fmsub	d6, d2, d3, d6
	str	d6, [sp, #2048]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d5, d3
	ldr	d4, [sp, #14384]
	ldr	d5, [sp, #14392]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2040]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2032]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #14400]
	ldr	d5, [sp, #14408]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2024]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2016]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #14416]
	ldr	d5, [sp, #14424]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #2008]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #2000]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #14432]
	ldr	d5, [sp, #14440]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1992]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1984]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #14448]
	ldr	d5, [sp, #14456]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1976]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1968]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #14464]
	ldr	d5, [sp, #14472]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1960]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1952]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #14480]
	ldr	d5, [sp, #14488]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1944]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1936]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #14496]
	ldr	d5, [sp, #14504]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1928]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1920]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #14512]
	ldr	d5, [sp, #14520]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1912]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1904]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #14528]
	ldr	d5, [sp, #14536]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1896]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1888]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #14544]
	ldr	d5, [sp, #14552]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1880]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1872]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #14560]
	ldr	d5, [sp, #14568]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1864]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1856]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #14576]
	ldr	d5, [sp, #14584]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1848]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1840]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #14592]
	ldr	d5, [sp, #14600]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1816]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1800]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #14608]
	ldr	d5, [sp, #14616]
	fmsub	d3, d2, d3, d4
	str	d3, [sp, #1792]                 ; 8-byte Folded Spill
	fmul	d1, d1, d3
	fmadd	d0, d0, d6, d1
	fmsub	d0, d2, d0, d5
	str	d0, [sp, #1808]                 ; 8-byte Folded Spill
	ldr	x25, [sp, #200]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x25]
	str	q1, [sp, #1824]                 ; 16-byte Folded Spill
	str	q0, [sp, #11824]
	ldr	d0, [x19, #6200]
	ldr	d1, [x19, #6224]
	ldr	d2, [sp, #11824]
	ldr	d3, [sp, #11832]
	fmul	d4, d1, d3
	fmadd	d4, d0, d2, d4
	ldr	d2, [x19, #6192]
	ldr	d5, [sp, #12096]
	ldr	d6, [sp, #12104]
	fmsub	d5, d2, d4, d5
	str	d5, [sp, #1784]                 ; 8-byte Folded Spill
	fmul	d4, d1, d5
	fmadd	d3, d0, d3, d4
	fmsub	d6, d2, d3, d6
	str	d6, [sp, #1776]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d5, d3
	ldr	d4, [sp, #12112]
	ldr	d5, [sp, #12120]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1768]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1760]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #12128]
	ldr	d5, [sp, #12136]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1752]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1744]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #12144]
	ldr	d5, [sp, #12152]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1736]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1728]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #12160]
	ldr	d5, [sp, #12168]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1720]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1712]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #12176]
	ldr	d5, [sp, #12184]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1704]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1696]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #12192]
	ldr	d5, [sp, #12200]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1688]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1680]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #12208]
	ldr	d5, [sp, #12216]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1672]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1664]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #12224]
	ldr	d5, [sp, #12232]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1656]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1648]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #12240]
	ldr	d5, [sp, #12248]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1640]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1632]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #12256]
	ldr	d5, [sp, #12264]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1624]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1616]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #12272]
	ldr	d5, [sp, #12280]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1608]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1600]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #12288]
	ldr	d5, [sp, #12296]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1592]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1584]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #12304]
	ldr	d5, [sp, #12312]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1576]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1568]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #12320]
	ldr	d5, [sp, #12328]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1544]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1520]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #12336]
	ldr	d5, [sp, #12344]
	fmsub	d3, d2, d3, d4
	str	d3, [sp, #1536]                 ; 8-byte Folded Spill
	fmul	d1, d1, d3
	fmadd	d0, d0, d6, d1
	fmsub	d0, d2, d0, d5
	str	d0, [sp, #1528]                 ; 8-byte Folded Spill
	ldr	x20, [sp, #192]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x20]
	str	q1, [sp, #1552]                 ; 16-byte Folded Spill
	str	q0, [sp, #9552]
	ldr	d0, [x19, #6728]
	ldr	d1, [x19, #6752]
	ldr	d2, [sp, #9552]
	ldr	d3, [sp, #9560]
	fmul	d4, d1, d3
	fmadd	d4, d0, d2, d4
	ldr	d2, [x19, #6720]
	ldr	d5, [sp, #9824]
	ldr	d6, [sp, #9832]
	fmsub	d5, d2, d4, d5
	str	d5, [sp, #1512]                 ; 8-byte Folded Spill
	fmul	d4, d1, d5
	fmadd	d3, d0, d3, d4
	fmsub	d6, d2, d3, d6
	str	d6, [sp, #1504]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d5, d3
	ldr	d4, [sp, #9840]
	ldr	d5, [sp, #9848]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1496]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1488]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #9856]
	ldr	d5, [sp, #9864]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1480]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1472]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #9872]
	ldr	d5, [sp, #9880]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1464]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1456]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #9888]
	ldr	d5, [sp, #9896]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1448]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1440]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #9904]
	ldr	d5, [sp, #9912]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1432]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1424]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #9920]
	ldr	d5, [sp, #9928]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1416]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1408]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #9936]
	ldr	d5, [sp, #9944]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1400]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1384]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #9952]
	ldr	d5, [sp, #9960]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1368]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1320]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #9968]
	ldr	d5, [sp, #9976]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1296]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1256]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #9984]
	ldr	d5, [sp, #9992]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1232]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1192]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #10000]
	ldr	d5, [sp, #10008]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1168]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1128]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #10016]
	ldr	d5, [sp, #10024]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1096]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1056]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #10032]
	ldr	d5, [sp, #10040]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1048]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #1040]                 ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #10048]
	ldr	d5, [sp, #10056]
	fmsub	d4, d2, d3, d4
	str	d4, [sp, #1016]                 ; 8-byte Folded Spill
	fmul	d3, d1, d4
	fmadd	d3, d0, d6, d3
	fmsub	d6, d2, d3, d5
	str	d6, [sp, #992]                  ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d0, d4, d3
	ldr	d4, [sp, #10064]
	ldr	d5, [sp, #10072]
	fmsub	d3, d2, d3, d4
	str	d3, [sp, #1008]                 ; 8-byte Folded Spill
	fmul	d1, d1, d3
	fmadd	d0, d0, d6, d1
	fmsub	d0, d2, d0, d5
	str	d0, [sp, #1000]                 ; 8-byte Folded Spill
	ldr	x21, [sp, #184]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x21]
	str	q1, [sp, #1024]                 ; 16-byte Folded Spill
	str	q0, [sp, #7280]
	ldr	d2, [x19, #7256]
	ldr	d1, [x19, #7280]
	ldr	d0, [sp, #7280]
	ldr	d3, [sp, #7288]
	fmul	d4, d1, d3
	fmadd	d4, d2, d0, d4
	ldr	d0, [x19, #7248]
	ldr	d5, [sp, #7552]
	ldr	d6, [sp, #7552]
	str	d6, [sp, #1392]                 ; 8-byte Folded Spill
	fmsub	d6, d0, d4, d5
	str	d6, [sp, #984]                  ; 8-byte Folded Spill
	fmul	d4, d1, d6
	fmadd	d3, d2, d3, d4
	ldr	d4, [sp, #7560]
	ldr	d5, [sp, #7560]
	str	d5, [sp, #1376]                 ; 8-byte Folded Spill
	fmsub	d7, d0, d3, d4
	str	d7, [sp, #976]                  ; 8-byte Folded Spill
	fmul	d3, d1, d7
	fmadd	d3, d2, d6, d3
	ldr	d4, [sp, #7568]
	ldr	d5, [sp, #7568]
	str	d5, [sp, #1360]                 ; 8-byte Folded Spill
	fmsub	d6, d0, d3, d4
	str	d6, [sp, #968]                  ; 8-byte Folded Spill
	fmul	d3, d1, d6
	fmadd	d3, d2, d7, d3
	ldr	d4, [sp, #7576]
	ldr	d5, [sp, #7576]
	str	d5, [sp, #1352]                 ; 8-byte Folded Spill
	fmsub	d7, d0, d3, d4
	str	d7, [sp, #960]                  ; 8-byte Folded Spill
	fmul	d3, d1, d7
	fmadd	d3, d2, d6, d3
	ldr	d4, [sp, #7584]
	ldr	d5, [sp, #7584]
	str	d5, [sp, #1344]                 ; 8-byte Folded Spill
	fmsub	d14, d0, d3, d4
	fmul	d3, d1, d14
	fmadd	d3, d2, d7, d3
	ldr	d4, [sp, #7592]
	ldr	d5, [sp, #7592]
	str	d5, [sp, #1336]                 ; 8-byte Folded Spill
	fmsub	d13, d0, d3, d4
	fmul	d3, d1, d13
	fmadd	d3, d2, d14, d3
	ldr	d4, [sp, #7600]
	ldr	d5, [sp, #7600]
	str	d5, [sp, #1328]                 ; 8-byte Folded Spill
	fmsub	d12, d0, d3, d4
	fmul	d3, d1, d12
	fmadd	d3, d2, d13, d3
	ldr	d4, [sp, #7608]
	ldr	d5, [sp, #7608]
	str	d5, [sp, #1312]                 ; 8-byte Folded Spill
	fmsub	d11, d0, d3, d4
	fmul	d3, d1, d11
	fmadd	d3, d2, d12, d3
	ldr	d4, [sp, #7616]
	ldr	d5, [sp, #7616]
	str	d5, [sp, #1304]                 ; 8-byte Folded Spill
	fmsub	d10, d0, d3, d4
	fmul	d3, d1, d10
	fmadd	d3, d2, d11, d3
	ldr	d4, [sp, #7624]
	ldr	d5, [sp, #7624]
	str	d5, [sp, #1288]                 ; 8-byte Folded Spill
	fmsub	d9, d0, d3, d4
	fmul	d3, d1, d9
	fmadd	d3, d2, d10, d3
	ldr	d4, [sp, #7632]
	ldr	d5, [sp, #7632]
	str	d5, [sp, #1280]                 ; 8-byte Folded Spill
	fmsub	d8, d0, d3, d4
	fmul	d3, d1, d8
	fmadd	d3, d2, d9, d3
	ldr	d4, [sp, #7640]
	ldr	d5, [sp, #7640]
	str	d5, [sp, #1272]                 ; 8-byte Folded Spill
	fmsub	d31, d0, d3, d4
	fmul	d3, d1, d31
	fmadd	d3, d2, d8, d3
	ldr	d4, [sp, #7648]
	ldr	d5, [sp, #7648]
	str	d5, [sp, #1264]                 ; 8-byte Folded Spill
	fmsub	d30, d0, d3, d4
	fmul	d3, d1, d30
	fmadd	d3, d2, d31, d3
	ldr	d4, [sp, #7656]
	ldr	d5, [sp, #7656]
	str	d5, [sp, #1248]                 ; 8-byte Folded Spill
	fmsub	d29, d0, d3, d4
	fmul	d3, d1, d29
	fmadd	d3, d2, d30, d3
	ldr	d4, [sp, #7664]
	ldr	d5, [sp, #7664]
	str	d5, [sp, #1240]                 ; 8-byte Folded Spill
	fmsub	d28, d0, d3, d4
	fmul	d3, d1, d28
	fmadd	d3, d2, d29, d3
	ldr	d4, [sp, #7672]
	ldr	d5, [sp, #7672]
	str	d5, [sp, #1224]                 ; 8-byte Folded Spill
	fmsub	d27, d0, d3, d4
	fmul	d3, d1, d27
	fmadd	d3, d2, d28, d3
	ldr	d4, [sp, #7680]
	ldr	d5, [sp, #7680]
	str	d5, [sp, #1216]                 ; 8-byte Folded Spill
	fmsub	d26, d0, d3, d4
	fmul	d3, d1, d26
	fmadd	d3, d2, d27, d3
	ldr	d4, [sp, #7688]
	ldr	d5, [sp, #7688]
	str	d5, [sp, #1208]                 ; 8-byte Folded Spill
	fmsub	d25, d0, d3, d4
	fmul	d3, d1, d25
	fmadd	d3, d2, d26, d3
	ldr	d4, [sp, #7696]
	ldr	d5, [sp, #7696]
	str	d5, [sp, #1200]                 ; 8-byte Folded Spill
	fmsub	d24, d0, d3, d4
	fmul	d3, d1, d24
	fmadd	d3, d2, d25, d3
	ldr	d4, [sp, #7704]
	ldr	d5, [sp, #7704]
	str	d5, [sp, #1184]                 ; 8-byte Folded Spill
	fmsub	d23, d0, d3, d4
	fmul	d3, d1, d23
	fmadd	d3, d2, d24, d3
	ldr	d4, [sp, #7712]
	ldr	d5, [sp, #7712]
	str	d5, [sp, #1176]                 ; 8-byte Folded Spill
	fmsub	d22, d0, d3, d4
	fmul	d3, d1, d22
	fmadd	d3, d2, d23, d3
	ldr	d4, [sp, #7720]
	ldr	d5, [sp, #7720]
	str	d5, [sp, #1160]                 ; 8-byte Folded Spill
	fmsub	d21, d0, d3, d4
	fmul	d3, d1, d21
	fmadd	d3, d2, d22, d3
	ldr	d4, [sp, #7728]
	ldr	d5, [sp, #7728]
	str	d5, [sp, #1152]                 ; 8-byte Folded Spill
	fmsub	d20, d0, d3, d4
	fmul	d3, d1, d20
	fmadd	d3, d2, d21, d3
	ldr	d4, [sp, #7736]
	ldr	d5, [sp, #7736]
	str	d5, [sp, #1144]                 ; 8-byte Folded Spill
	fmsub	d18, d0, d3, d4
	fmul	d3, d1, d18
	fmadd	d3, d2, d20, d3
	ldr	d4, [sp, #7744]
	ldr	d5, [sp, #7744]
	str	d5, [sp, #1136]                 ; 8-byte Folded Spill
	fmsub	d19, d0, d3, d4
	fmul	d3, d1, d19
	fmadd	d3, d2, d18, d3
	ldr	d4, [sp, #7752]
	ldr	d5, [sp, #7752]
	str	d5, [sp, #1112]                 ; 8-byte Folded Spill
	fmsub	d17, d0, d3, d4
	fmul	d3, d1, d17
	fmadd	d3, d2, d19, d3
	ldr	d4, [sp, #7760]
	ldr	d5, [sp, #7760]
	str	d5, [sp, #1104]                 ; 8-byte Folded Spill
	fmsub	d16, d0, d3, d4
	fmul	d3, d1, d16
	fmadd	d3, d2, d17, d3
	ldr	d4, [sp, #7768]
	ldr	d5, [sp, #7768]
	str	d5, [sp, #1080]                 ; 8-byte Folded Spill
	fmsub	d7, d0, d3, d4
	fmul	d3, d1, d7
	fmadd	d3, d2, d16, d3
	ldr	d4, [sp, #7776]
	ldr	d5, [sp, #7776]
	str	d5, [sp, #1088]                 ; 8-byte Folded Spill
	fmsub	d5, d0, d3, d4
	fmul	d4, d1, d5
	fmadd	d4, d2, d7, d4
	ldr	d3, [sp, #7784]
	ldr	d6, [sp, #7784]
	str	d6, [sp, #1064]                 ; 8-byte Folded Spill
	fmsub	d6, d0, d4, d3
	fmul	d3, d1, d6
	fmadd	d4, d2, d5, d3
	ldr	d3, [sp, #7792]
	ldr	d15, [sp, #7792]
	str	d15, [sp, #1072]                ; 8-byte Folded Spill
	fmsub	d15, d0, d4, d3
	fmul	d1, d1, d15
	fmadd	d1, d2, d6, d1
	ldr	d2, [sp, #7800]
	ldr	d3, [sp, #7800]
	str	d3, [sp, #1120]                 ; 8-byte Folded Spill
	fmsub	d3, d0, d1, d2
	ldr	d0, [sp, #4232]                 ; 8-byte Folded Reload
	str	d0, [sp, #32304]
	ldr	d0, [sp, #4224]                 ; 8-byte Folded Reload
	str	d0, [sp, #32312]
	ldr	d0, [sp, #4216]                 ; 8-byte Folded Reload
	str	d0, [sp, #32320]
	ldr	d0, [sp, #4208]                 ; 8-byte Folded Reload
	str	d0, [sp, #32328]
	ldr	d0, [sp, #4200]                 ; 8-byte Folded Reload
	str	d0, [sp, #32336]
	ldr	d0, [sp, #4192]                 ; 8-byte Folded Reload
	str	d0, [sp, #32344]
	ldr	d0, [sp, #4184]                 ; 8-byte Folded Reload
	str	d0, [sp, #32352]
	ldr	d0, [sp, #4176]                 ; 8-byte Folded Reload
	str	d0, [sp, #32360]
	ldr	d0, [sp, #4168]                 ; 8-byte Folded Reload
	str	d0, [sp, #32368]
	ldr	d0, [sp, #4160]                 ; 8-byte Folded Reload
	str	d0, [sp, #32376]
	ldr	d0, [sp, #4152]                 ; 8-byte Folded Reload
	str	d0, [sp, #32384]
	ldr	d0, [sp, #4144]                 ; 8-byte Folded Reload
	str	d0, [sp, #32392]
	ldr	d0, [sp, #4136]                 ; 8-byte Folded Reload
	str	d0, [sp, #32400]
	ldr	d0, [sp, #4128]                 ; 8-byte Folded Reload
	str	d0, [sp, #32408]
	ldr	d0, [sp, #4120]                 ; 8-byte Folded Reload
	str	d0, [sp, #32416]
	ldr	d0, [sp, #4112]                 ; 8-byte Folded Reload
	str	d0, [sp, #32424]
	ldr	d0, [sp, #4104]                 ; 8-byte Folded Reload
	str	d0, [sp, #32432]
	ldr	d0, [sp, #4096]                 ; 8-byte Folded Reload
	str	d0, [sp, #32440]
	ldr	d0, [sp, #4088]                 ; 8-byte Folded Reload
	str	d0, [sp, #32448]
	ldr	d0, [sp, #4080]                 ; 8-byte Folded Reload
	str	d0, [sp, #32456]
	ldr	d0, [sp, #4072]                 ; 8-byte Folded Reload
	str	d0, [sp, #32464]
	ldr	d0, [sp, #4064]                 ; 8-byte Folded Reload
	str	d0, [sp, #32472]
	ldr	d0, [sp, #4056]                 ; 8-byte Folded Reload
	str	d0, [sp, #32480]
	ldr	d0, [sp, #4048]                 ; 8-byte Folded Reload
	str	d0, [sp, #32488]
	ldr	d0, [sp, #4040]                 ; 8-byte Folded Reload
	str	d0, [sp, #32496]
	ldr	d0, [sp, #4032]                 ; 8-byte Folded Reload
	str	d0, [sp, #32504]
	ldr	d0, [sp, #4008]                 ; 8-byte Folded Reload
	str	d0, [sp, #32512]
	ldr	d0, [sp, #3984]                 ; 8-byte Folded Reload
	str	d0, [sp, #32520]
	ldr	d0, [sp, #4000]                 ; 8-byte Folded Reload
	str	d0, [sp, #32528]
	ldr	d0, [sp, #3992]                 ; 8-byte Folded Reload
	str	d0, [sp, #32536]
	add	x9, sp, #7, lsl #12             ; =28672
	add	x9, x9, #3584
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x10]
	ldr	q0, [sp, #4016]                 ; 16-byte Folded Reload
	str	q0, [sp, #29984]
	ldr	d0, [sp, #3976]                 ; 8-byte Folded Reload
	str	d0, [sp, #30016]
	ldr	d0, [sp, #3968]                 ; 8-byte Folded Reload
	str	d0, [sp, #30024]
	ldr	d0, [sp, #3960]                 ; 8-byte Folded Reload
	str	d0, [sp, #30032]
	ldr	d0, [sp, #3952]                 ; 8-byte Folded Reload
	str	d0, [sp, #30040]
	ldr	d0, [sp, #3944]                 ; 8-byte Folded Reload
	str	d0, [sp, #30048]
	ldr	d0, [sp, #3936]                 ; 8-byte Folded Reload
	str	d0, [sp, #30056]
	ldr	d0, [sp, #3928]                 ; 8-byte Folded Reload
	str	d0, [sp, #30064]
	ldr	d0, [sp, #3920]                 ; 8-byte Folded Reload
	str	d0, [sp, #30072]
	ldr	d0, [sp, #3912]                 ; 8-byte Folded Reload
	str	d0, [sp, #30080]
	ldr	d0, [sp, #3904]                 ; 8-byte Folded Reload
	str	d0, [sp, #30088]
	ldr	d0, [sp, #3896]                 ; 8-byte Folded Reload
	str	d0, [sp, #30096]
	ldr	d0, [sp, #3888]                 ; 8-byte Folded Reload
	str	d0, [sp, #30104]
	ldr	d0, [sp, #3880]                 ; 8-byte Folded Reload
	str	d0, [sp, #30112]
	ldr	d0, [sp, #3872]                 ; 8-byte Folded Reload
	str	d0, [sp, #30120]
	ldr	d0, [sp, #3864]                 ; 8-byte Folded Reload
	str	d0, [sp, #30128]
	ldr	d0, [sp, #3856]                 ; 8-byte Folded Reload
	str	d0, [sp, #30136]
	ldr	d0, [sp, #3848]                 ; 8-byte Folded Reload
	str	d0, [sp, #30144]
	ldr	d0, [sp, #3840]                 ; 8-byte Folded Reload
	str	d0, [sp, #30152]
	ldr	d0, [sp, #3832]                 ; 8-byte Folded Reload
	str	d0, [sp, #30160]
	ldr	d0, [sp, #3824]                 ; 8-byte Folded Reload
	str	d0, [sp, #30168]
	ldr	d0, [sp, #3816]                 ; 8-byte Folded Reload
	str	d0, [sp, #30176]
	ldr	d0, [sp, #3808]                 ; 8-byte Folded Reload
	str	d0, [sp, #30184]
	ldr	d0, [sp, #3800]                 ; 8-byte Folded Reload
	str	d0, [sp, #30192]
	ldr	d0, [sp, #3792]                 ; 8-byte Folded Reload
	str	d0, [sp, #30200]
	ldr	d0, [sp, #3784]                 ; 8-byte Folded Reload
	str	d0, [sp, #30208]
	ldr	d0, [sp, #3776]                 ; 8-byte Folded Reload
	str	d0, [sp, #30216]
	ldr	d0, [sp, #3768]                 ; 8-byte Folded Reload
	str	d0, [sp, #30224]
	ldr	d0, [sp, #3760]                 ; 8-byte Folded Reload
	str	d0, [sp, #30232]
	ldr	d0, [sp, #3736]                 ; 8-byte Folded Reload
	str	d0, [sp, #30240]
	ldr	d0, [sp, #3712]                 ; 8-byte Folded Reload
	str	d0, [sp, #30248]
	ldr	d0, [sp, #3728]                 ; 8-byte Folded Reload
	str	d0, [sp, #30256]
	ldr	d0, [sp, #3720]                 ; 8-byte Folded Reload
	str	d0, [sp, #30264]
	add	x9, sp, #7, lsl #12             ; =28672
	add	x9, x9, #1312
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x11]
	ldr	q0, [sp, #3744]                 ; 16-byte Folded Reload
	str	q0, [sp, #27712]
	ldr	d0, [sp, #3704]                 ; 8-byte Folded Reload
	str	d0, [sp, #27744]
	ldr	d0, [sp, #3696]                 ; 8-byte Folded Reload
	str	d0, [sp, #27752]
	ldr	d0, [sp, #3688]                 ; 8-byte Folded Reload
	str	d0, [sp, #27760]
	ldr	d0, [sp, #3680]                 ; 8-byte Folded Reload
	str	d0, [sp, #27768]
	ldr	d0, [sp, #3672]                 ; 8-byte Folded Reload
	str	d0, [sp, #27776]
	ldr	d0, [sp, #3664]                 ; 8-byte Folded Reload
	str	d0, [sp, #27784]
	ldr	d0, [sp, #3656]                 ; 8-byte Folded Reload
	str	d0, [sp, #27792]
	ldr	d0, [sp, #3648]                 ; 8-byte Folded Reload
	str	d0, [sp, #27800]
	ldr	d0, [sp, #3640]                 ; 8-byte Folded Reload
	str	d0, [sp, #27808]
	ldr	d0, [sp, #3632]                 ; 8-byte Folded Reload
	str	d0, [sp, #27816]
	ldr	d0, [sp, #3624]                 ; 8-byte Folded Reload
	str	d0, [sp, #27824]
	ldr	d0, [sp, #3616]                 ; 8-byte Folded Reload
	str	d0, [sp, #27832]
	ldr	d0, [sp, #3608]                 ; 8-byte Folded Reload
	str	d0, [sp, #27840]
	ldr	d0, [sp, #3600]                 ; 8-byte Folded Reload
	str	d0, [sp, #27848]
	ldr	d0, [sp, #3592]                 ; 8-byte Folded Reload
	str	d0, [sp, #27856]
	ldr	d0, [sp, #3584]                 ; 8-byte Folded Reload
	str	d0, [sp, #27864]
	ldr	d0, [sp, #3576]                 ; 8-byte Folded Reload
	str	d0, [sp, #27872]
	ldr	d0, [sp, #3568]                 ; 8-byte Folded Reload
	str	d0, [sp, #27880]
	ldr	d0, [sp, #3560]                 ; 8-byte Folded Reload
	str	d0, [sp, #27888]
	ldr	d0, [sp, #3552]                 ; 8-byte Folded Reload
	str	d0, [sp, #27896]
	ldr	d0, [sp, #3544]                 ; 8-byte Folded Reload
	str	d0, [sp, #27904]
	ldr	d0, [sp, #3536]                 ; 8-byte Folded Reload
	str	d0, [sp, #27912]
	ldr	d0, [sp, #3528]                 ; 8-byte Folded Reload
	str	d0, [sp, #27920]
	ldr	d0, [sp, #3520]                 ; 8-byte Folded Reload
	str	d0, [sp, #27928]
	ldr	d0, [sp, #3512]                 ; 8-byte Folded Reload
	str	d0, [sp, #27936]
	ldr	d0, [sp, #3504]                 ; 8-byte Folded Reload
	str	d0, [sp, #27944]
	ldr	d0, [sp, #3496]                 ; 8-byte Folded Reload
	str	d0, [sp, #27952]
	ldr	d0, [sp, #3488]                 ; 8-byte Folded Reload
	str	d0, [sp, #27960]
	ldr	d0, [sp, #3464]                 ; 8-byte Folded Reload
	str	d0, [sp, #27968]
	ldr	d0, [sp, #3440]                 ; 8-byte Folded Reload
	str	d0, [sp, #27976]
	ldr	d0, [sp, #3456]                 ; 8-byte Folded Reload
	str	d0, [sp, #27984]
	ldr	d0, [sp, #3448]                 ; 8-byte Folded Reload
	str	d0, [sp, #27992]
	add	x9, sp, #6, lsl #12             ; =24576
	add	x9, x9, #3136
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x12]
	ldr	q0, [sp, #3472]                 ; 16-byte Folded Reload
	str	q0, [sp, #25440]
	ldr	d0, [sp, #3432]                 ; 8-byte Folded Reload
	str	d0, [sp, #25472]
	ldr	d0, [sp, #3424]                 ; 8-byte Folded Reload
	str	d0, [sp, #25480]
	ldr	d0, [sp, #3416]                 ; 8-byte Folded Reload
	str	d0, [sp, #25488]
	ldr	d0, [sp, #3408]                 ; 8-byte Folded Reload
	str	d0, [sp, #25496]
	ldr	d0, [sp, #3400]                 ; 8-byte Folded Reload
	str	d0, [sp, #25504]
	ldr	d0, [sp, #3392]                 ; 8-byte Folded Reload
	str	d0, [sp, #25512]
	ldr	d0, [sp, #3384]                 ; 8-byte Folded Reload
	str	d0, [sp, #25520]
	ldr	d0, [sp, #3376]                 ; 8-byte Folded Reload
	str	d0, [sp, #25528]
	ldr	d0, [sp, #3368]                 ; 8-byte Folded Reload
	str	d0, [sp, #25536]
	ldr	d0, [sp, #3360]                 ; 8-byte Folded Reload
	str	d0, [sp, #25544]
	ldr	d0, [sp, #3352]                 ; 8-byte Folded Reload
	str	d0, [sp, #25552]
	ldr	d0, [sp, #3344]                 ; 8-byte Folded Reload
	str	d0, [sp, #25560]
	ldr	d0, [sp, #3336]                 ; 8-byte Folded Reload
	str	d0, [sp, #25568]
	ldr	d0, [sp, #3328]                 ; 8-byte Folded Reload
	str	d0, [sp, #25576]
	ldr	d0, [sp, #3320]                 ; 8-byte Folded Reload
	str	d0, [sp, #25584]
	ldr	d0, [sp, #3312]                 ; 8-byte Folded Reload
	str	d0, [sp, #25592]
	ldr	d0, [sp, #3304]                 ; 8-byte Folded Reload
	str	d0, [sp, #25600]
	ldr	d0, [sp, #3296]                 ; 8-byte Folded Reload
	str	d0, [sp, #25608]
	ldr	d0, [sp, #3288]                 ; 8-byte Folded Reload
	str	d0, [sp, #25616]
	ldr	d0, [sp, #3280]                 ; 8-byte Folded Reload
	str	d0, [sp, #25624]
	ldr	d0, [sp, #3272]                 ; 8-byte Folded Reload
	str	d0, [sp, #25632]
	ldr	d0, [sp, #3264]                 ; 8-byte Folded Reload
	str	d0, [sp, #25640]
	ldr	d0, [sp, #3256]                 ; 8-byte Folded Reload
	str	d0, [sp, #25648]
	ldr	d0, [sp, #3248]                 ; 8-byte Folded Reload
	str	d0, [sp, #25656]
	ldr	d0, [sp, #3240]                 ; 8-byte Folded Reload
	str	d0, [sp, #25664]
	ldr	d0, [sp, #3232]                 ; 8-byte Folded Reload
	str	d0, [sp, #25672]
	ldr	d0, [sp, #3224]                 ; 8-byte Folded Reload
	str	d0, [sp, #25680]
	ldr	d0, [sp, #3216]                 ; 8-byte Folded Reload
	str	d0, [sp, #25688]
	ldr	d0, [sp, #3192]                 ; 8-byte Folded Reload
	str	d0, [sp, #25696]
	ldr	d0, [sp, #3168]                 ; 8-byte Folded Reload
	str	d0, [sp, #25704]
	ldr	d0, [sp, #3184]                 ; 8-byte Folded Reload
	str	d0, [sp, #25712]
	ldr	d0, [sp, #3176]                 ; 8-byte Folded Reload
	str	d0, [sp, #25720]
	add	x9, sp, #6, lsl #12             ; =24576
	add	x9, x9, #864
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x14]
	ldr	q0, [sp, #3200]                 ; 16-byte Folded Reload
	str	q0, [sp, #23168]
	ldr	d0, [sp, #3160]                 ; 8-byte Folded Reload
	str	d0, [sp, #23200]
	ldr	d0, [sp, #3152]                 ; 8-byte Folded Reload
	str	d0, [sp, #23208]
	ldr	d0, [sp, #3144]                 ; 8-byte Folded Reload
	str	d0, [sp, #23216]
	ldr	d0, [sp, #3136]                 ; 8-byte Folded Reload
	str	d0, [sp, #23224]
	ldr	d0, [sp, #3128]                 ; 8-byte Folded Reload
	str	d0, [sp, #23232]
	ldr	d0, [sp, #3120]                 ; 8-byte Folded Reload
	str	d0, [sp, #23240]
	ldr	d0, [sp, #3112]                 ; 8-byte Folded Reload
	str	d0, [sp, #23248]
	ldr	d0, [sp, #3104]                 ; 8-byte Folded Reload
	str	d0, [sp, #23256]
	ldr	d0, [sp, #3096]                 ; 8-byte Folded Reload
	str	d0, [sp, #23264]
	ldr	d0, [sp, #3088]                 ; 8-byte Folded Reload
	str	d0, [sp, #23272]
	ldr	d0, [sp, #3080]                 ; 8-byte Folded Reload
	str	d0, [sp, #23280]
	ldr	d0, [sp, #3072]                 ; 8-byte Folded Reload
	str	d0, [sp, #23288]
	ldr	d0, [sp, #3064]                 ; 8-byte Folded Reload
	str	d0, [sp, #23296]
	ldr	d0, [sp, #3056]                 ; 8-byte Folded Reload
	str	d0, [sp, #23304]
	ldr	d0, [sp, #3048]                 ; 8-byte Folded Reload
	str	d0, [sp, #23312]
	ldr	d0, [sp, #3040]                 ; 8-byte Folded Reload
	str	d0, [sp, #23320]
	ldr	d0, [sp, #3032]                 ; 8-byte Folded Reload
	str	d0, [sp, #23328]
	ldr	d0, [sp, #3024]                 ; 8-byte Folded Reload
	str	d0, [sp, #23336]
	ldr	d0, [sp, #3016]                 ; 8-byte Folded Reload
	str	d0, [sp, #23344]
	ldr	d0, [sp, #3008]                 ; 8-byte Folded Reload
	str	d0, [sp, #23352]
	ldr	d0, [sp, #3000]                 ; 8-byte Folded Reload
	str	d0, [sp, #23360]
	ldr	d0, [sp, #2992]                 ; 8-byte Folded Reload
	str	d0, [sp, #23368]
	ldr	d0, [sp, #2984]                 ; 8-byte Folded Reload
	str	d0, [sp, #23376]
	ldr	d0, [sp, #2976]                 ; 8-byte Folded Reload
	str	d0, [sp, #23384]
	ldr	d0, [sp, #2968]                 ; 8-byte Folded Reload
	str	d0, [sp, #23392]
	ldr	d0, [sp, #2960]                 ; 8-byte Folded Reload
	str	d0, [sp, #23400]
	ldr	d0, [sp, #2952]                 ; 8-byte Folded Reload
	str	d0, [sp, #23408]
	ldr	d0, [sp, #2944]                 ; 8-byte Folded Reload
	str	d0, [sp, #23416]
	ldr	d0, [sp, #2920]                 ; 8-byte Folded Reload
	str	d0, [sp, #23424]
	ldr	d0, [sp, #2896]                 ; 8-byte Folded Reload
	str	d0, [sp, #23432]
	ldr	d0, [sp, #2912]                 ; 8-byte Folded Reload
	str	d0, [sp, #23440]
	ldr	d0, [sp, #2904]                 ; 8-byte Folded Reload
	str	d0, [sp, #23448]
	add	x9, sp, #5, lsl #12             ; =20480
	add	x9, x9, #2688
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x16]
	ldr	q0, [sp, #2928]                 ; 16-byte Folded Reload
	str	q0, [sp, #20896]
	ldr	d0, [sp, #2888]                 ; 8-byte Folded Reload
	str	d0, [sp, #20928]
	ldr	d0, [sp, #2880]                 ; 8-byte Folded Reload
	str	d0, [sp, #20936]
	ldr	d0, [sp, #2872]                 ; 8-byte Folded Reload
	str	d0, [sp, #20944]
	ldr	d0, [sp, #2864]                 ; 8-byte Folded Reload
	str	d0, [sp, #20952]
	ldr	d0, [sp, #2856]                 ; 8-byte Folded Reload
	str	d0, [sp, #20960]
	ldr	d0, [sp, #2848]                 ; 8-byte Folded Reload
	str	d0, [sp, #20968]
	ldr	d0, [sp, #2840]                 ; 8-byte Folded Reload
	str	d0, [sp, #20976]
	ldr	d0, [sp, #2832]                 ; 8-byte Folded Reload
	str	d0, [sp, #20984]
	ldr	d0, [sp, #2824]                 ; 8-byte Folded Reload
	str	d0, [sp, #20992]
	ldr	d0, [sp, #2816]                 ; 8-byte Folded Reload
	str	d0, [sp, #21000]
	ldr	d0, [sp, #2808]                 ; 8-byte Folded Reload
	str	d0, [sp, #21008]
	ldr	d0, [sp, #2800]                 ; 8-byte Folded Reload
	str	d0, [sp, #21016]
	ldr	d0, [sp, #2792]                 ; 8-byte Folded Reload
	str	d0, [sp, #21024]
	ldr	d0, [sp, #2784]                 ; 8-byte Folded Reload
	str	d0, [sp, #21032]
	ldr	d0, [sp, #2776]                 ; 8-byte Folded Reload
	str	d0, [sp, #21040]
	ldr	d0, [sp, #2768]                 ; 8-byte Folded Reload
	str	d0, [sp, #21048]
	ldr	d0, [sp, #2760]                 ; 8-byte Folded Reload
	str	d0, [sp, #21056]
	ldr	d0, [sp, #2752]                 ; 8-byte Folded Reload
	str	d0, [sp, #21064]
	ldr	d0, [sp, #2744]                 ; 8-byte Folded Reload
	str	d0, [sp, #21072]
	ldr	d0, [sp, #2736]                 ; 8-byte Folded Reload
	str	d0, [sp, #21080]
	ldr	d0, [sp, #2728]                 ; 8-byte Folded Reload
	str	d0, [sp, #21088]
	ldr	d0, [sp, #2720]                 ; 8-byte Folded Reload
	str	d0, [sp, #21096]
	ldr	d0, [sp, #2712]                 ; 8-byte Folded Reload
	str	d0, [sp, #21104]
	ldr	d0, [sp, #2704]                 ; 8-byte Folded Reload
	str	d0, [sp, #21112]
	ldr	d0, [sp, #2696]                 ; 8-byte Folded Reload
	str	d0, [sp, #21120]
	ldr	d0, [sp, #2688]                 ; 8-byte Folded Reload
	str	d0, [sp, #21128]
	ldr	d0, [sp, #2680]                 ; 8-byte Folded Reload
	str	d0, [sp, #21136]
	ldr	d0, [sp, #2672]                 ; 8-byte Folded Reload
	str	d0, [sp, #21144]
	ldr	d0, [sp, #2664]                 ; 8-byte Folded Reload
	str	d0, [sp, #21152]
	ldr	d0, [sp, #2640]                 ; 8-byte Folded Reload
	str	d0, [sp, #21160]
	ldr	d0, [sp, #2656]                 ; 8-byte Folded Reload
	str	d0, [sp, #21168]
	ldr	d0, [sp, #2648]                 ; 8-byte Folded Reload
	str	d0, [sp, #21176]
	add	x9, sp, #5, lsl #12             ; =20480
	add	x9, x9, #416
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x26]
	ldr	q0, [sp, #4240]                 ; 16-byte Folded Reload
	str	q0, [sp, #18624]
	ldr	d0, [sp, #2624]                 ; 8-byte Folded Reload
	str	d0, [sp, #18656]
	ldr	d0, [sp, #2616]                 ; 8-byte Folded Reload
	str	d0, [sp, #18664]
	ldr	d0, [sp, #2608]                 ; 8-byte Folded Reload
	str	d0, [sp, #18672]
	ldr	d0, [sp, #2600]                 ; 8-byte Folded Reload
	str	d0, [sp, #18680]
	ldr	d0, [sp, #2592]                 ; 8-byte Folded Reload
	str	d0, [sp, #18688]
	ldr	d0, [sp, #2584]                 ; 8-byte Folded Reload
	str	d0, [sp, #18696]
	ldr	d0, [sp, #2576]                 ; 8-byte Folded Reload
	str	d0, [sp, #18704]
	ldr	d0, [sp, #2568]                 ; 8-byte Folded Reload
	str	d0, [sp, #18712]
	ldr	d0, [sp, #2560]                 ; 8-byte Folded Reload
	str	d0, [sp, #18720]
	ldr	d0, [sp, #2552]                 ; 8-byte Folded Reload
	str	d0, [sp, #18728]
	ldr	d0, [sp, #2544]                 ; 8-byte Folded Reload
	str	d0, [sp, #18736]
	ldr	d0, [sp, #2536]                 ; 8-byte Folded Reload
	str	d0, [sp, #18744]
	ldr	d0, [sp, #2528]                 ; 8-byte Folded Reload
	str	d0, [sp, #18752]
	ldr	d0, [sp, #2520]                 ; 8-byte Folded Reload
	str	d0, [sp, #18760]
	ldr	d0, [sp, #2512]                 ; 8-byte Folded Reload
	str	d0, [sp, #18768]
	ldr	d0, [sp, #2504]                 ; 8-byte Folded Reload
	str	d0, [sp, #18776]
	ldr	d0, [sp, #2496]                 ; 8-byte Folded Reload
	str	d0, [sp, #18784]
	ldr	d0, [sp, #2488]                 ; 8-byte Folded Reload
	str	d0, [sp, #18792]
	ldr	d0, [sp, #2480]                 ; 8-byte Folded Reload
	str	d0, [sp, #18800]
	ldr	d0, [sp, #2472]                 ; 8-byte Folded Reload
	str	d0, [sp, #18808]
	ldr	d0, [sp, #2464]                 ; 8-byte Folded Reload
	str	d0, [sp, #18816]
	ldr	d0, [sp, #2456]                 ; 8-byte Folded Reload
	str	d0, [sp, #18832]
	ldr	d0, [sp, #2448]                 ; 8-byte Folded Reload
	str	d0, [sp, #18840]
	ldr	d0, [sp, #2440]                 ; 8-byte Folded Reload
	str	d0, [sp, #18848]
	ldr	d0, [sp, #2432]                 ; 8-byte Folded Reload
	str	d0, [sp, #18856]
	ldr	d0, [sp, #2424]                 ; 8-byte Folded Reload
	str	d0, [sp, #18864]
	ldr	d0, [sp, #2416]                 ; 8-byte Folded Reload
	str	d0, [sp, #18872]
	ldr	d0, [sp, #2392]                 ; 8-byte Folded Reload
	str	d0, [sp, #18880]
	ldr	d0, [sp, #2352]                 ; 8-byte Folded Reload
	str	d0, [sp, #18888]
	ldr	d0, [sp, #2368]                 ; 8-byte Folded Reload
	str	d0, [sp, #18896]
	ldr	d0, [sp, #2360]                 ; 8-byte Folded Reload
	str	d0, [sp, #18904]
	add	x9, sp, #4, lsl #12             ; =16384
	add	x9, x9, #2240
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x28]
	ldr	q0, [sp, #2400]                 ; 16-byte Folded Reload
	str	q0, [sp, #16352]
	ldr	d0, [sp, #2344]                 ; 8-byte Folded Reload
	str	d0, [sp, #16384]
	ldr	d0, [sp, #2336]                 ; 8-byte Folded Reload
	str	d0, [sp, #16392]
	ldr	d0, [sp, #2328]                 ; 8-byte Folded Reload
	str	d0, [sp, #16400]
	ldr	d0, [sp, #2320]                 ; 8-byte Folded Reload
	str	d0, [sp, #16408]
	ldr	d0, [sp, #2312]                 ; 8-byte Folded Reload
	str	d0, [sp, #16416]
	ldr	d0, [sp, #2304]                 ; 8-byte Folded Reload
	str	d0, [sp, #16424]
	ldr	d0, [sp, #2296]                 ; 8-byte Folded Reload
	str	d0, [sp, #16432]
	ldr	d0, [sp, #2288]                 ; 8-byte Folded Reload
	str	d0, [sp, #16440]
	ldr	d0, [sp, #2280]                 ; 8-byte Folded Reload
	str	d0, [sp, #16448]
	ldr	d0, [sp, #2272]                 ; 8-byte Folded Reload
	str	d0, [sp, #16456]
	ldr	d0, [sp, #2264]                 ; 8-byte Folded Reload
	str	d0, [sp, #16464]
	ldr	d0, [sp, #2256]                 ; 8-byte Folded Reload
	str	d0, [sp, #16472]
	ldr	d0, [sp, #2248]                 ; 8-byte Folded Reload
	str	d0, [sp, #16480]
	ldr	d0, [sp, #2240]                 ; 8-byte Folded Reload
	str	d0, [sp, #16488]
	ldr	d0, [sp, #2232]                 ; 8-byte Folded Reload
	str	d0, [sp, #16496]
	ldr	d0, [sp, #2224]                 ; 8-byte Folded Reload
	str	d0, [sp, #16504]
	ldr	d0, [sp, #2216]                 ; 8-byte Folded Reload
	str	d0, [sp, #16512]
	ldr	d0, [sp, #2208]                 ; 8-byte Folded Reload
	str	d0, [sp, #16520]
	ldr	d0, [sp, #2200]                 ; 8-byte Folded Reload
	str	d0, [sp, #16528]
	ldr	d0, [sp, #2192]                 ; 8-byte Folded Reload
	str	d0, [sp, #16536]
	ldr	d0, [sp, #2184]                 ; 8-byte Folded Reload
	str	d0, [sp, #16544]
	ldr	d0, [sp, #2176]                 ; 8-byte Folded Reload
	str	d0, [sp, #16552]
	ldr	d0, [sp, #2168]                 ; 8-byte Folded Reload
	str	d0, [sp, #16560]
	ldr	d0, [sp, #2160]                 ; 8-byte Folded Reload
	str	d0, [sp, #16568]
	ldr	d0, [sp, #2152]                 ; 8-byte Folded Reload
	str	d0, [sp, #16576]
	ldr	d0, [sp, #2144]                 ; 8-byte Folded Reload
	str	d0, [sp, #16584]
	ldr	d0, [sp, #2128]                 ; 8-byte Folded Reload
	str	d0, [sp, #16592]
	ldr	d0, [sp, #2120]                 ; 8-byte Folded Reload
	str	d0, [sp, #16600]
	ldr	d0, [sp, #2088]                 ; 8-byte Folded Reload
	str	d0, [sp, #16608]
	ldr	d0, [sp, #2064]                 ; 8-byte Folded Reload
	str	d0, [sp, #16616]
	ldr	d0, [sp, #2080]                 ; 8-byte Folded Reload
	str	d0, [sp, #16624]
	ldr	d0, [sp, #2072]                 ; 8-byte Folded Reload
	str	d0, [sp, #16632]
	add	x9, sp, #3, lsl #12             ; =12288
	add	x9, x9, #4064
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x23]
	ldr	q0, [sp, #2096]                 ; 16-byte Folded Reload
	str	q0, [sp, #14080]
	ldr	d0, [sp, #2056]                 ; 8-byte Folded Reload
	str	d0, [sp, #14112]
	ldr	d0, [sp, #2048]                 ; 8-byte Folded Reload
	str	d0, [sp, #14120]
	ldr	d0, [sp, #2040]                 ; 8-byte Folded Reload
	str	d0, [sp, #14128]
	ldr	d0, [sp, #2032]                 ; 8-byte Folded Reload
	str	d0, [sp, #14136]
	ldr	d0, [sp, #2024]                 ; 8-byte Folded Reload
	str	d0, [sp, #14144]
	ldr	d0, [sp, #2016]                 ; 8-byte Folded Reload
	str	d0, [sp, #14152]
	ldr	d0, [sp, #2008]                 ; 8-byte Folded Reload
	str	d0, [sp, #14160]
	ldr	d0, [sp, #2000]                 ; 8-byte Folded Reload
	str	d0, [sp, #14168]
	ldr	d0, [sp, #1992]                 ; 8-byte Folded Reload
	str	d0, [sp, #14176]
	ldr	d0, [sp, #1984]                 ; 8-byte Folded Reload
	str	d0, [sp, #14184]
	ldr	d0, [sp, #1976]                 ; 8-byte Folded Reload
	str	d0, [sp, #14192]
	ldr	d0, [sp, #1968]                 ; 8-byte Folded Reload
	str	d0, [sp, #14200]
	ldr	d0, [sp, #1960]                 ; 8-byte Folded Reload
	str	d0, [sp, #14208]
	ldr	d0, [sp, #1952]                 ; 8-byte Folded Reload
	str	d0, [sp, #14216]
	ldr	d0, [sp, #1944]                 ; 8-byte Folded Reload
	str	d0, [sp, #14224]
	ldr	d0, [sp, #1936]                 ; 8-byte Folded Reload
	str	d0, [sp, #14232]
	ldr	d0, [sp, #1928]                 ; 8-byte Folded Reload
	str	d0, [sp, #14240]
	ldr	d0, [sp, #1920]                 ; 8-byte Folded Reload
	str	d0, [sp, #14248]
	ldr	d0, [sp, #1912]                 ; 8-byte Folded Reload
	str	d0, [sp, #14256]
	ldr	d0, [sp, #1904]                 ; 8-byte Folded Reload
	str	d0, [sp, #14264]
	ldr	d0, [sp, #1896]                 ; 8-byte Folded Reload
	str	d0, [sp, #14272]
	ldr	d0, [sp, #1888]                 ; 8-byte Folded Reload
	str	d0, [sp, #14280]
	ldr	d0, [sp, #1880]                 ; 8-byte Folded Reload
	str	d0, [sp, #14288]
	ldr	d0, [sp, #1872]                 ; 8-byte Folded Reload
	str	d0, [sp, #14296]
	ldr	d0, [sp, #1864]                 ; 8-byte Folded Reload
	str	d0, [sp, #14304]
	ldr	d0, [sp, #1856]                 ; 8-byte Folded Reload
	str	d0, [sp, #14312]
	ldr	d0, [sp, #1816]                 ; 8-byte Folded Reload
	str	d0, [sp, #14336]
	ldr	d0, [sp, #1792]                 ; 8-byte Folded Reload
	str	d0, [sp, #14352]
	ldr	d0, [sp, #1848]                 ; 8-byte Folded Reload
	str	d0, [sp, #14320]
	ldr	d0, [sp, #1840]                 ; 8-byte Folded Reload
	str	d0, [sp, #14328]
	ldr	d0, [sp, #1800]                 ; 8-byte Folded Reload
	str	d0, [sp, #14344]
	ldr	d0, [sp, #1808]                 ; 8-byte Folded Reload
	str	d0, [sp, #14360]
	add	x9, sp, #3, lsl #12             ; =12288
	add	x9, x9, #1792
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x22]
	ldr	q0, [sp, #1824]                 ; 16-byte Folded Reload
	str	q0, [sp, #11808]
	ldr	d0, [sp, #1784]                 ; 8-byte Folded Reload
	str	d0, [sp, #11840]
	ldr	d0, [sp, #1776]                 ; 8-byte Folded Reload
	str	d0, [sp, #11848]
	ldr	d0, [sp, #1768]                 ; 8-byte Folded Reload
	str	d0, [sp, #11856]
	ldr	d0, [sp, #1760]                 ; 8-byte Folded Reload
	str	d0, [sp, #11864]
	ldr	d0, [sp, #1752]                 ; 8-byte Folded Reload
	str	d0, [sp, #11872]
	ldr	d0, [sp, #1744]                 ; 8-byte Folded Reload
	str	d0, [sp, #11880]
	ldr	d0, [sp, #1736]                 ; 8-byte Folded Reload
	str	d0, [sp, #11888]
	ldr	d0, [sp, #1728]                 ; 8-byte Folded Reload
	str	d0, [sp, #11896]
	ldr	d0, [sp, #1720]                 ; 8-byte Folded Reload
	str	d0, [sp, #11904]
	ldr	d0, [sp, #1712]                 ; 8-byte Folded Reload
	str	d0, [sp, #11912]
	ldr	d0, [sp, #1704]                 ; 8-byte Folded Reload
	str	d0, [sp, #11920]
	ldr	d0, [sp, #1696]                 ; 8-byte Folded Reload
	str	d0, [sp, #11928]
	ldr	d0, [sp, #1688]                 ; 8-byte Folded Reload
	str	d0, [sp, #11936]
	ldr	d0, [sp, #1680]                 ; 8-byte Folded Reload
	str	d0, [sp, #11944]
	ldr	d0, [sp, #1672]                 ; 8-byte Folded Reload
	str	d0, [sp, #11952]
	ldr	d0, [sp, #1664]                 ; 8-byte Folded Reload
	str	d0, [sp, #11960]
	ldr	d0, [sp, #1656]                 ; 8-byte Folded Reload
	str	d0, [sp, #11968]
	ldr	d0, [sp, #1648]                 ; 8-byte Folded Reload
	str	d0, [sp, #11976]
	ldr	d0, [sp, #1640]                 ; 8-byte Folded Reload
	str	d0, [sp, #11984]
	ldr	d0, [sp, #1632]                 ; 8-byte Folded Reload
	str	d0, [sp, #11992]
	ldr	d0, [sp, #1624]                 ; 8-byte Folded Reload
	str	d0, [sp, #12000]
	ldr	d0, [sp, #1616]                 ; 8-byte Folded Reload
	str	d0, [sp, #12008]
	ldr	d0, [sp, #1608]                 ; 8-byte Folded Reload
	str	d0, [sp, #12016]
	ldr	d0, [sp, #1600]                 ; 8-byte Folded Reload
	str	d0, [sp, #12024]
	ldr	d0, [sp, #1592]                 ; 8-byte Folded Reload
	str	d0, [sp, #12032]
	ldr	d0, [sp, #1584]                 ; 8-byte Folded Reload
	str	d0, [sp, #12040]
	ldr	d0, [sp, #1544]                 ; 8-byte Folded Reload
	str	d0, [sp, #12064]
	ldr	d0, [sp, #1576]                 ; 8-byte Folded Reload
	str	d0, [sp, #12048]
	ldr	d0, [sp, #1568]                 ; 8-byte Folded Reload
	str	d0, [sp, #12056]
	ldr	d0, [sp, #1520]                 ; 8-byte Folded Reload
	str	d0, [sp, #12072]
	ldr	d0, [sp, #1536]                 ; 8-byte Folded Reload
	str	d0, [sp, #12080]
	ldr	d0, [sp, #1528]                 ; 8-byte Folded Reload
	str	d0, [sp, #12088]
	add	x9, sp, #2, lsl #12             ; =8192
	add	x9, x9, #3616
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x25]
	ldr	q0, [sp, #1552]                 ; 16-byte Folded Reload
	str	q0, [sp, #9536]
	ldr	d0, [sp, #1512]                 ; 8-byte Folded Reload
	str	d0, [sp, #9568]
	ldr	d0, [sp, #1504]                 ; 8-byte Folded Reload
	str	d0, [sp, #9576]
	ldr	d0, [sp, #1496]                 ; 8-byte Folded Reload
	str	d0, [sp, #9584]
	ldr	d0, [sp, #1488]                 ; 8-byte Folded Reload
	str	d0, [sp, #9592]
	ldr	d0, [sp, #1480]                 ; 8-byte Folded Reload
	str	d0, [sp, #9600]
	ldr	d0, [sp, #1472]                 ; 8-byte Folded Reload
	str	d0, [sp, #9608]
	ldr	d0, [sp, #1464]                 ; 8-byte Folded Reload
	str	d0, [sp, #9616]
	ldr	d0, [sp, #1456]                 ; 8-byte Folded Reload
	str	d0, [sp, #9624]
	ldr	d0, [sp, #1448]                 ; 8-byte Folded Reload
	str	d0, [sp, #9632]
	ldr	d0, [sp, #1440]                 ; 8-byte Folded Reload
	str	d0, [sp, #9640]
	ldr	d0, [sp, #1432]                 ; 8-byte Folded Reload
	str	d0, [sp, #9648]
	ldr	d0, [sp, #1424]                 ; 8-byte Folded Reload
	str	d0, [sp, #9656]
	ldr	d0, [sp, #1416]                 ; 8-byte Folded Reload
	str	d0, [sp, #9664]
	ldr	d0, [sp, #1408]                 ; 8-byte Folded Reload
	str	d0, [sp, #9672]
	ldr	d0, [sp, #1400]                 ; 8-byte Folded Reload
	str	d0, [sp, #9680]
	ldr	d0, [sp, #1384]                 ; 8-byte Folded Reload
	str	d0, [sp, #9688]
	ldr	d0, [sp, #1368]                 ; 8-byte Folded Reload
	str	d0, [sp, #9696]
	ldr	d0, [sp, #1320]                 ; 8-byte Folded Reload
	str	d0, [sp, #9704]
	ldr	d0, [sp, #1296]                 ; 8-byte Folded Reload
	str	d0, [sp, #9712]
	ldr	d0, [sp, #1256]                 ; 8-byte Folded Reload
	str	d0, [sp, #9720]
	ldr	d0, [sp, #1232]                 ; 8-byte Folded Reload
	str	d0, [sp, #9728]
	ldr	d0, [sp, #1192]                 ; 8-byte Folded Reload
	str	d0, [sp, #9736]
	ldr	d0, [sp, #1168]                 ; 8-byte Folded Reload
	str	d0, [sp, #9744]
	ldr	d0, [sp, #1128]                 ; 8-byte Folded Reload
	str	d0, [sp, #9752]
	ldr	d0, [sp, #1096]                 ; 8-byte Folded Reload
	str	d0, [sp, #9760]
	ldr	d0, [sp, #1056]                 ; 8-byte Folded Reload
	str	d0, [sp, #9768]
	ldr	d0, [sp, #1048]                 ; 8-byte Folded Reload
	str	d0, [sp, #9776]
	ldr	d0, [sp, #1040]                 ; 8-byte Folded Reload
	str	d0, [sp, #9784]
	ldr	d0, [sp, #1016]                 ; 8-byte Folded Reload
	str	d0, [sp, #9792]
	ldr	d0, [sp, #992]                  ; 8-byte Folded Reload
	str	d0, [sp, #9800]
	ldr	d0, [sp, #1008]                 ; 8-byte Folded Reload
	str	d0, [sp, #9808]
	ldr	d0, [sp, #1000]                 ; 8-byte Folded Reload
	str	d0, [sp, #9816]
	add	x9, sp, #2, lsl #12             ; =8192
	add	x9, x9, #1344
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x20]
	ldr	q0, [sp, #1024]                 ; 16-byte Folded Reload
	str	q0, [sp, #7264]
	ldr	d0, [sp, #984]                  ; 8-byte Folded Reload
	str	d0, [sp, #7296]
	ldr	d0, [sp, #976]                  ; 8-byte Folded Reload
	str	d0, [sp, #7304]
	ldr	d0, [sp, #968]                  ; 8-byte Folded Reload
	str	d0, [sp, #7312]
	ldr	d0, [sp, #960]                  ; 8-byte Folded Reload
	str	d0, [sp, #7320]
	str	d14, [sp, #7328]
	str	d13, [sp, #7336]
	str	d12, [sp, #7344]
	str	d11, [sp, #7352]
	str	d10, [sp, #7360]
	str	d9, [sp, #7368]
	str	d8, [sp, #7376]
	str	d31, [sp, #7384]
	str	d30, [sp, #7392]
	str	d29, [sp, #7400]
	str	d28, [sp, #7408]
	str	d27, [sp, #7416]
	str	d26, [sp, #7424]
	str	d25, [sp, #7432]
	str	d24, [sp, #7440]
	str	d23, [sp, #7448]
	str	d22, [sp, #7456]
	str	d21, [sp, #7464]
	str	d20, [sp, #7472]
	str	d18, [sp, #7480]
	str	d5, [sp, #7520]
	ldr	x20, [sp, #176]                 ; 8-byte Folded Reload
	ldp	q0, q1, [x20]
	str	q1, [sp, #6128]
	str	d19, [sp, #7488]
	ldr	d1, [x19, #7536]
	ldr	d4, [sp, #6128]
	str	d17, [sp, #7496]
	str	d16, [sp, #7504]
	str	d7, [sp, #7512]
	str	d6, [sp, #7528]
	str	d15, [sp, #7536]
	ldr	d2, [x19, #7544]
	str	d3, [sp, #7544]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #3168
	ldp	q3, q5, [x9, #256]
	stp	q3, q5, [x21]
	ldr	d3, [x19, #7552]
	str	q0, [sp, #6112]
	ldr	d0, [sp, #6136]
	fmul	d5, d3, d0
	fmadd	d4, d2, d4, d5
	ldr	d5, [sp, #1392]                 ; 8-byte Folded Reload
	fmsub	d4, d1, d4, d5
	fmul	d5, d3, d4
	fmadd	d0, d2, d0, d5
	ldr	d5, [sp, #1376]                 ; 8-byte Folded Reload
	fmsub	d0, d1, d0, d5
	fmul	d5, d3, d0
	fmadd	d5, d2, d4, d5
	ldr	d6, [sp, #1360]                 ; 8-byte Folded Reload
	fmsub	d5, d1, d5, d6
	str	d4, [sp, #6144]
	str	d0, [sp, #6152]
	fmul	d4, d3, d5
	fmadd	d0, d2, d0, d4
	ldr	d4, [sp, #1352]                 ; 8-byte Folded Reload
	fmsub	d0, d1, d0, d4
	fmul	d4, d3, d0
	fmadd	d4, d2, d5, d4
	ldr	d6, [sp, #1344]                 ; 8-byte Folded Reload
	fmsub	d4, d1, d4, d6
	str	d5, [sp, #6160]
	str	d0, [sp, #6168]
	fmul	d5, d3, d4
	fmadd	d0, d2, d0, d5
	ldr	d5, [sp, #1336]                 ; 8-byte Folded Reload
	fmsub	d0, d1, d0, d5
	fmul	d5, d3, d0
	fmadd	d5, d2, d4, d5
	str	d4, [sp, #6176]
	str	d0, [sp, #6184]
	ldr	d4, [sp, #1328]                 ; 8-byte Folded Reload
	fmsub	d4, d1, d5, d4
	fmul	d5, d3, d4
	fmadd	d0, d2, d0, d5
	ldr	d5, [sp, #1312]                 ; 8-byte Folded Reload
	fmsub	d0, d1, d0, d5
	fmul	d5, d3, d0
	fmadd	d5, d2, d4, d5
	str	d4, [sp, #6192]
	str	d0, [sp, #6200]
	ldr	d4, [sp, #1304]                 ; 8-byte Folded Reload
	fmsub	d4, d1, d5, d4
	fmul	d5, d3, d4
	fmadd	d0, d2, d0, d5
	ldr	d5, [sp, #1288]                 ; 8-byte Folded Reload
	fmsub	d0, d1, d0, d5
	fmul	d5, d3, d0
	fmadd	d5, d2, d4, d5
	str	d4, [sp, #6208]
	str	d0, [sp, #6216]
	ldr	d4, [sp, #1280]                 ; 8-byte Folded Reload
	fmsub	d4, d1, d5, d4
	fmul	d5, d3, d4
	fmadd	d0, d2, d0, d5
	ldr	d5, [sp, #1272]                 ; 8-byte Folded Reload
	fmsub	d0, d1, d0, d5
	fmul	d5, d3, d0
	fmadd	d5, d2, d4, d5
	str	d4, [sp, #6224]
	str	d0, [sp, #6232]
	ldr	d4, [sp, #1264]                 ; 8-byte Folded Reload
	fmsub	d4, d1, d5, d4
	fmul	d5, d3, d4
	fmadd	d0, d2, d0, d5
	ldr	d5, [sp, #1248]                 ; 8-byte Folded Reload
	fmsub	d0, d1, d0, d5
	fmul	d5, d3, d0
	fmadd	d5, d2, d4, d5
	str	d4, [sp, #6240]
	str	d0, [sp, #6248]
	ldr	d4, [sp, #1240]                 ; 8-byte Folded Reload
	fmsub	d4, d1, d5, d4
	fmul	d5, d3, d4
	fmadd	d0, d2, d0, d5
	ldr	d5, [sp, #1224]                 ; 8-byte Folded Reload
	fmsub	d0, d1, d0, d5
	fmul	d5, d3, d0
	fmadd	d5, d2, d4, d5
	str	d4, [sp, #6256]
	str	d0, [sp, #6264]
	ldr	d4, [sp, #1216]                 ; 8-byte Folded Reload
	fmsub	d4, d1, d5, d4
	fmul	d5, d3, d4
	fmadd	d0, d2, d0, d5
	ldr	d5, [sp, #1208]                 ; 8-byte Folded Reload
	fmsub	d0, d1, d0, d5
	fmul	d5, d3, d0
	fmadd	d5, d2, d4, d5
	str	d4, [sp, #6272]
	str	d0, [sp, #6280]
	ldr	d4, [sp, #1200]                 ; 8-byte Folded Reload
	fmsub	d4, d1, d5, d4
	fmul	d5, d3, d4
	fmadd	d0, d2, d0, d5
	ldr	d5, [sp, #1184]                 ; 8-byte Folded Reload
	fmsub	d0, d1, d0, d5
	fmul	d5, d3, d0
	fmadd	d5, d2, d4, d5
	str	d4, [sp, #6288]
	str	d0, [sp, #6296]
	ldr	d4, [sp, #1176]                 ; 8-byte Folded Reload
	fmsub	d4, d1, d5, d4
	fmul	d5, d3, d4
	fmadd	d0, d2, d0, d5
	ldr	d5, [sp, #1160]                 ; 8-byte Folded Reload
	fmsub	d0, d1, d0, d5
	fmul	d5, d3, d0
	fmadd	d5, d2, d4, d5
	str	d4, [sp, #6304]
	str	d0, [sp, #6312]
	ldr	d4, [sp, #1152]                 ; 8-byte Folded Reload
	fmsub	d4, d1, d5, d4
	fmul	d5, d3, d4
	fmadd	d0, d2, d0, d5
	ldr	d5, [sp, #1144]                 ; 8-byte Folded Reload
	fmsub	d0, d1, d0, d5
	str	d4, [sp, #6320]
	str	d0, [sp, #6328]
	fmul	d5, d3, d0
	fmadd	d4, d2, d4, d5
	ldr	d5, [sp, #1136]                 ; 8-byte Folded Reload
	fmsub	d4, d1, d4, d5
	fmul	d5, d3, d4
	fmadd	d0, d2, d0, d5
	ldr	d5, [sp, #1112]                 ; 8-byte Folded Reload
	fmsub	d0, d1, d0, d5
	str	d4, [sp, #6336]
	str	d0, [sp, #6344]
	fmul	d5, d3, d0
	fmadd	d4, d2, d4, d5
	ldr	d5, [sp, #1104]                 ; 8-byte Folded Reload
	fmsub	d4, d1, d4, d5
	fmul	d5, d3, d4
	fmadd	d0, d2, d0, d5
	ldr	d5, [sp, #1080]                 ; 8-byte Folded Reload
	fmsub	d0, d1, d0, d5
	ldr	x9, [sp, #4424]                 ; 8-byte Folded Reload
	str	d4, [sp, #6352]
	str	d0, [sp, #6360]
	fmul	d5, d3, d0
	fmadd	d4, d2, d4, d5
	ldr	d5, [sp, #1088]                 ; 8-byte Folded Reload
	fmsub	d17, d1, d4, d5
	fmul	d4, d3, d17
	fmadd	d0, d2, d0, d4
	ldr	d4, [sp, #1064]                 ; 8-byte Folded Reload
	fmsub	d18, d1, d0, d4
	fmul	d0, d3, d18
	fmadd	d4, d2, d17, d0
	ldp	q16, q0, [x9]
	str	q0, [sp, #36528]
	add	x9, sp, #3768
	ldr	d0, [x9, #32760]
	ldr	d5, [sp, #1072]                 ; 8-byte Folded Reload
	fmsub	d19, d1, d4, d5
	ldp	d6, d4, [x19, #464]
	ldr	d5, [x19, #480]
	fmov	d22, d6
	fneg	d6, d6
	add	x9, sp, #4064
	ldr	d7, [x9, #32760]
	fmul	d3, d3, d19
	fmadd	d2, d2, d18, d3
	ldr	d3, [sp, #1120]                 ; 8-byte Folded Reload
	fmsub	d3, d1, d2, d3
	ldp	d1, d2, [x19, #448]
	str	d17, [sp, #6368]
	str	d18, [sp, #6376]
	str	d19, [sp, #6384]
	str	d3, [sp, #6392]
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #2016
	ldp	q17, q18, [x9, #256]
	ldr	d3, [x19, #368]
	stp	q17, q18, [x20]
	str	q16, [sp, #36512]
	add	x9, sp, #3776
	ldr	d23, [x9, #32760]
	ldr	x9, [sp, #760]                  ; 8-byte Folded Reload
	fmov	d16, d23
	ldr	x26, [sp, #376]                 ; 8-byte Folded Reload
LBB17_66:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d7, d2, d7
	ldr	d17, [x9]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x9, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d5, d16
	fmadd	d0, d4, d0, d18
	fmul	d18, d0, d6
	fmov	d0, d16
	fmadd	d16, d3, d7, d18
	str	d16, [x7, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d7, d17
	cmp	x8, #256
	b.ne	LBB17_66
; %bb.67:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #8, lsl #12             ; =32768
	add	x9, x9, #3744
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4424]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4416]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #34256]
	str	q1, [sp, #34240]
	ldr	d2, [x19, #912]
	ldr	d3, [x19, #992]
	ldr	d4, [x19, #1000]
	ldr	d5, [x19, #1008]
	ldr	d0, [x19, #1016]
	ldr	d1, [x19, #1024]
	str	d5, [sp, #4240]                 ; 8-byte Folded Spill
	fneg	d5, d5
	add	x9, sp, #1792
	ldr	d7, [x9, #32760]
	add	x9, sp, #1496
	ldr	d6, [x9, #32760]
	add	x9, sp, #1504
	ldr	d24, [x9, #32760]
	ldr	x9, [sp, #792]                  ; 8-byte Folded Reload
	fmov	d16, d24
	ldr	x7, [sp, #4856]                 ; 8-byte Folded Reload
	ldr	x21, [sp, #168]                 ; 8-byte Folded Reload
LBB17_68:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d7, d4, d7
	ldr	d17, [x9]
	fmadd	d7, d3, d17, d7
	ldur	d18, [x9, #-16]
	fmadd	d7, d3, d18, d7
	fmul	d18, d1, d16
	fmadd	d6, d0, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d2, d7, d18
	str	d16, [x7, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d7, d17
	cmp	x8, #256
	b.ne	LBB17_68
; %bb.69:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #8, lsl #12             ; =32768
	add	x9, x9, #1472
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4416]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4408]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #31984]
	str	q1, [sp, #31968]
	ldr	d3, [x19, #1440]
	ldr	d4, [x19, #1520]
	ldr	d5, [x19, #1528]
	ldr	d2, [x19, #1536]
	ldr	d0, [x19, #1544]
	ldr	d1, [x19, #1552]
	str	d2, [sp, #4232]                 ; 8-byte Folded Spill
	fneg	d2, d2
	ldr	d7, [sp, #32280]
	ldr	d6, [sp, #31984]
	ldr	d25, [sp, #31992]
	ldr	x9, [sp, #808]                  ; 8-byte Folded Reload
	fmov	d16, d25
	ldr	x28, [sp, #232]                 ; 8-byte Folded Reload
	ldr	x23, [sp, #656]                 ; 8-byte Folded Reload
	ldr	x22, [sp, #208]                 ; 8-byte Folded Reload
	ldr	x25, [sp, #4832]                ; 8-byte Folded Reload
	ldr	x20, [sp, #648]                 ; 8-byte Folded Reload
	ldr	x10, [sp, #640]                 ; 8-byte Folded Reload
	add	x11, sp, #1, lsl #12            ; =4096
	add	x11, x11, #2304
	ldr	x12, [sp, #632]                 ; 8-byte Folded Reload
	ldr	x14, [sp, #624]                 ; 8-byte Folded Reload
	ldr	x16, [sp, #616]                 ; 8-byte Folded Reload
LBB17_70:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d7, d5, d7
	ldr	d17, [x9]
	fmadd	d7, d4, d17, d7
	ldur	d18, [x9, #-16]
	fmadd	d7, d4, d18, d7
	fmul	d18, d1, d16
	fmadd	d6, d0, d6, d18
	fmul	d18, d6, d2
	fmov	d6, d16
	fmadd	d16, d3, d7, d18
	str	d16, [x27, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d7, d17
	cmp	x8, #256
	b.ne	LBB17_70
; %bb.71:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #7, lsl #12             ; =28672
	add	x9, x9, #3296
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4408]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4400]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #29712]
	str	q1, [sp, #29696]
	ldr	d4, [x19, #1968]
	ldr	d5, [x19, #2048]
	ldr	d6, [x19, #2056]
	ldr	d2, [x19, #2064]
	ldr	d0, [x19, #2072]
	ldr	d1, [x19, #2080]
	str	d2, [sp, #4224]                 ; 8-byte Folded Spill
	fneg	d2, d2
	ldr	d7, [sp, #30008]
	ldr	d3, [sp, #29712]
	ldr	d26, [sp, #29720]
	ldr	x9, [sp, #888]                  ; 8-byte Folded Reload
	fmov	d16, d26
	ldr	x7, [sp, #840]                  ; 8-byte Folded Reload
	ldr	x27, [sp, #4848]                ; 8-byte Folded Reload
LBB17_72:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d7, d6, d7
	ldr	d17, [x9]
	fmadd	d7, d5, d17, d7
	ldur	d18, [x9, #-16]
	fmadd	d7, d5, d18, d7
	fmul	d18, d1, d16
	fmadd	d3, d0, d3, d18
	fmul	d18, d3, d2
	fmov	d3, d16
	fmadd	d16, d4, d7, d18
	str	d16, [x27, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d7, d17
	cmp	x8, #256
	b.ne	LBB17_72
; %bb.73:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #7, lsl #12             ; =28672
	add	x9, x9, #1024
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4400]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4392]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #27440]
	str	q1, [sp, #27424]
	ldr	d5, [x19, #2496]
	ldr	d6, [x19, #2576]
	ldr	d7, [x19, #2584]
	ldr	d2, [x19, #2592]
	ldr	d0, [x19, #2600]
	ldr	d1, [x19, #2608]
	str	d2, [sp, #4216]                 ; 8-byte Folded Spill
	fneg	d2, d2
	ldr	d4, [sp, #27736]
	ldr	d3, [sp, #27440]
	ldr	d27, [sp, #27448]
	ldr	x9, [sp, #784]                  ; 8-byte Folded Reload
	fmov	d16, d27
LBB17_74:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d4, d7, d4
	ldr	d17, [x9]
	fmadd	d4, d6, d17, d4
	ldur	d18, [x9, #-16]
	fmadd	d4, d6, d18, d4
	fmul	d18, d1, d16
	fmadd	d3, d0, d3, d18
	fmul	d18, d3, d2
	fmov	d3, d16
	fmadd	d16, d5, d4, d18
	str	d16, [x7, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d4, d17
	cmp	x8, #256
	b.ne	LBB17_74
; %bb.75:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #6, lsl #12             ; =24576
	add	x9, x9, #2848
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4392]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4384]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #25168]
	str	q1, [sp, #25152]
	ldr	d6, [x19, #3024]
	ldr	d7, [x19, #3104]
	ldr	d16, [x19, #3112]
	ldr	d2, [x19, #3120]
	ldr	d0, [x19, #3128]
	ldr	d1, [x19, #3136]
	str	d2, [sp, #4208]                 ; 8-byte Folded Spill
	fneg	d2, d2
	ldr	d4, [sp, #25464]
	ldr	d3, [sp, #25168]
	ldr	d28, [sp, #25176]
	ldr	x9, [sp, #800]                  ; 8-byte Folded Reload
	fmov	d5, d28
	ldr	x27, [sp, #4912]                ; 8-byte Folded Reload
LBB17_76:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d4, d16, d4
	ldr	d17, [x9]
	fmadd	d4, d7, d17, d4
	ldur	d18, [x9, #-16]
	fmadd	d4, d7, d18, d4
	fmul	d18, d1, d5
	fmadd	d3, d0, d3, d18
	fmul	d18, d3, d2
	fmov	d3, d5
	fmadd	d5, d6, d4, d18
	str	d5, [x6, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d4, d17
	cmp	x8, #256
	b.ne	LBB17_76
; %bb.77:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #6, lsl #12             ; =24576
	add	x9, x9, #576
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4384]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4376]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #22896]
	str	q1, [sp, #22880]
	ldr	d7, [x19, #3552]
	ldr	d16, [x19, #3632]
	ldr	d17, [x19, #3640]
	ldr	d2, [x19, #3648]
	ldr	d0, [x19, #3656]
	ldr	d1, [x19, #3664]
	str	d2, [sp, #4200]                 ; 8-byte Folded Spill
	fneg	d2, d2
	ldr	d4, [sp, #23192]
	ldr	d3, [sp, #22896]
	ldr	d30, [sp, #22904]
	ldr	x9, [sp, #896]                  ; 8-byte Folded Reload
	fmov	d5, d30
	ldr	x6, [sp, #4864]                 ; 8-byte Folded Reload
LBB17_78:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d4, d17, d4
	ldr	d6, [x9]
	fmadd	d4, d16, d6, d4
	ldur	d18, [x9, #-16]
	fmadd	d4, d16, d18, d4
	fmul	d18, d1, d5
	fmadd	d3, d0, d3, d18
	fmul	d18, d3, d2
	fmov	d3, d5
	fmadd	d5, d7, d4, d18
	str	d5, [x6, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d4, d6
	cmp	x8, #256
	b.ne	LBB17_78
; %bb.79:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #5, lsl #12             ; =20480
	add	x9, x9, #2400
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4376]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldp	q1, q0, [x21]
	str	q0, [sp, #20624]
	str	q1, [sp, #20608]
	ldr	d16, [x19, #4080]
	ldr	d17, [x19, #4160]
	ldr	d18, [x19, #4168]
	ldr	d2, [x19, #4176]
	ldr	d0, [x19, #4184]
	ldr	d1, [x19, #4192]
	str	d2, [sp, #4192]                 ; 8-byte Folded Spill
	fneg	d2, d2
	ldr	d4, [sp, #20920]
	ldr	d3, [sp, #20624]
	ldr	d31, [sp, #20632]
	ldr	x9, [sp, #816]                  ; 8-byte Folded Reload
	fmov	d5, d31
LBB17_80:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d4, d18, d4
	ldr	d6, [x9]
	fmadd	d4, d17, d6, d4
	ldur	d7, [x9, #-16]
	fmadd	d4, d17, d7, d4
	fmul	d7, d1, d5
	fmadd	d3, d0, d3, d7
	fmul	d7, d3, d2
	fmov	d3, d5
	fmadd	d5, d16, d4, d7
	str	d5, [x5, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d4, d6
	cmp	x8, #256
	b.ne	LBB17_80
; %bb.81:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #5, lsl #12             ; =20480
	add	x9, x9, #128
	ldp	q0, q1, [x9, #256]
	stp	q0, q1, [x21]
	ldr	x9, [sp, #4712]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #18352]
	str	q1, [sp, #18336]
	ldr	d17, [x19, #4608]
	ldr	d18, [x19, #4688]
	ldr	d19, [x19, #4696]
	ldr	d2, [x19, #4704]
	ldr	d0, [x19, #4712]
	ldr	d1, [x19, #4720]
	str	d2, [sp, #4184]                 ; 8-byte Folded Spill
	fneg	d2, d2
	ldr	d4, [sp, #18648]
	ldr	d3, [sp, #18352]
	ldr	d8, [sp, #18360]
	ldr	x9, [sp, #944]                  ; 8-byte Folded Reload
	fmov	d5, d8
	ldr	x5, [sp, #4872]                 ; 8-byte Folded Reload
	ldr	x6, [sp, #4928]                 ; 8-byte Folded Reload
LBB17_82:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d4, d19, d4
	ldr	d6, [x9]
	fmadd	d4, d18, d6, d4
	ldur	d7, [x9, #-16]
	fmadd	d4, d18, d7, d4
	fmul	d7, d1, d5
	fmadd	d3, d0, d3, d7
	fmul	d7, d3, d2
	fmov	d3, d5
	fmadd	d5, d17, d4, d7
	str	d5, [x5, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d4, d6
	cmp	x8, #256
	b.ne	LBB17_82
; %bb.83:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #4, lsl #12             ; =16384
	add	x9, x9, #1952
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4712]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4704]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #16080]
	str	q1, [sp, #16064]
	ldr	d18, [x19, #5136]
	ldr	d19, [x19, #5216]
	ldr	d20, [x19, #5224]
	ldr	d2, [x19, #5232]
	ldr	d0, [x19, #5240]
	ldr	d1, [x19, #5248]
	str	d2, [sp, #4176]                 ; 8-byte Folded Spill
	fneg	d2, d2
	ldr	d4, [sp, #16376]
	ldr	d3, [sp, #16080]
	ldr	d9, [sp, #16088]
	ldr	x9, [sp, #824]                  ; 8-byte Folded Reload
	fmov	d5, d9
LBB17_84:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d4, d20, d4
	ldr	d6, [x9]
	fmadd	d4, d19, d6, d4
	ldur	d7, [x9, #-16]
	fmadd	d4, d19, d7, d4
	fmul	d7, d1, d5
	fmadd	d3, d0, d3, d7
	fmul	d7, d3, d2
	fmov	d3, d5
	fmadd	d5, d18, d4, d7
	str	d5, [x3, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d4, d6
	cmp	x8, #256
	b.ne	LBB17_84
; %bb.85:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #3, lsl #12             ; =12288
	add	x9, x9, #3776
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4704]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4696]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #13808]
	str	q1, [sp, #13792]
	ldr	d19, [x19, #5664]
	ldr	d20, [x19, #5744]
	ldr	d21, [x19, #5752]
	ldr	d2, [x19, #5760]
	ldr	d0, [x19, #5768]
	ldr	d1, [x19, #5776]
	str	d2, [sp, #4168]                 ; 8-byte Folded Spill
	fneg	d2, d2
	ldr	d4, [sp, #14104]
	ldr	d3, [sp, #13808]
	ldr	d10, [sp, #13816]
	ldr	x9, [sp, #904]                  ; 8-byte Folded Reload
	fmov	d5, d10
	ldr	x3, [sp, #4880]                 ; 8-byte Folded Reload
	ldr	x5, [sp, #4936]                 ; 8-byte Folded Reload
	fmov	d17, d22
LBB17_86:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d4, d21, d4
	ldr	d6, [x9]
	fmadd	d4, d20, d6, d4
	ldur	d7, [x9, #-16]
	fmadd	d4, d20, d7, d4
	fmul	d7, d1, d5
	fmadd	d3, d0, d3, d7
	fmul	d7, d3, d2
	fmov	d3, d5
	fmadd	d5, d19, d4, d7
	str	d5, [x3, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d4, d6
	cmp	x8, #256
	b.ne	LBB17_86
; %bb.87:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #3, lsl #12             ; =12288
	add	x9, x9, #1504
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4696]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4688]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #11536]
	str	q1, [sp, #11520]
	ldr	d20, [x19, #6192]
	ldr	d21, [x19, #6272]
	ldr	d22, [x19, #6280]
	ldr	d2, [x19, #6288]
	ldr	d0, [x19, #6296]
	ldr	d1, [x19, #6304]
	str	d2, [sp, #4160]                 ; 8-byte Folded Spill
	fneg	d2, d2
	ldr	d4, [sp, #11832]
	ldr	d3, [sp, #11536]
	ldr	d11, [sp, #11544]
	ldr	x9, [sp, #832]                  ; 8-byte Folded Reload
	fmov	d5, d11
LBB17_88:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d4, d22, d4
	ldr	d6, [x9]
	fmadd	d4, d21, d6, d4
	ldur	d7, [x9, #-16]
	fmadd	d4, d21, d7, d4
	fmul	d7, d1, d5
	fmadd	d3, d0, d3, d7
	fmul	d7, d3, d2
	fmov	d3, d5
	fmadd	d5, d20, d4, d7
	str	d5, [x1, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d4, d6
	cmp	x8, #256
	b.ne	LBB17_88
; %bb.89:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #2, lsl #12             ; =8192
	add	x9, x9, #3328
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4688]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4680]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #9264]
	str	q1, [sp, #9248]
	ldr	d21, [x19, #6720]
	ldr	d22, [x19, #6800]
	ldr	d29, [x19, #6808]
	ldr	d2, [x19, #6816]
	ldr	d0, [x19, #6824]
	ldr	d1, [x19, #6832]
	str	d2, [sp, #4152]                 ; 8-byte Folded Spill
	fneg	d2, d2
	ldr	d4, [sp, #9560]
	ldr	d3, [sp, #9264]
	ldr	d12, [sp, #9272]
	ldr	x9, [sp, #568]                  ; 8-byte Folded Reload
	fmov	d5, d12
	ldr	x1, [sp, #4888]                 ; 8-byte Folded Reload
	ldr	x3, [sp, #4968]                 ; 8-byte Folded Reload
LBB17_90:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d4, d29, d4
	ldr	d6, [x9]
	fmadd	d4, d22, d6, d4
	ldur	d7, [x9, #-16]
	fmadd	d4, d22, d7, d4
	fmul	d7, d1, d5
	fmadd	d3, d0, d3, d7
	fmul	d7, d3, d2
	fmov	d3, d5
	fmadd	d5, d21, d4, d7
	str	d5, [x1, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d4, d6
	cmp	x8, #256
	b.ne	LBB17_90
; %bb.91:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #2, lsl #12             ; =8192
	add	x9, x9, #1056
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4680]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4672]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #6992]
	str	q1, [sp, #6976]
	ldr	d22, [x19, #7248]
	ldr	d29, [x19, #7328]
	ldr	d14, [x19, #7336]
	ldr	d2, [x19, #7344]
	ldr	d0, [x19, #7352]
	ldr	d1, [x19, #7360]
	fmov	d19, d2
	fneg	d2, d2
	ldr	d4, [sp, #7288]
	ldr	d3, [sp, #6992]
	ldr	d13, [sp, #7000]
	ldr	x9, [sp, #576]                  ; 8-byte Folded Reload
	fmov	d5, d13
LBB17_92:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d4, d14, d4
	ldr	d6, [x9]
	fmadd	d4, d29, d6, d4
	ldur	d7, [x9, #-16]
	fmadd	d4, d29, d7, d4
	fmul	d7, d1, d5
	fmadd	d3, d0, d3, d7
	fmul	d7, d3, d2
	fmov	d3, d5
	fmadd	d5, d22, d4, d7
	str	d5, [x13, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d4, d6
	cmp	x8, #256
	b.ne	LBB17_92
; %bb.93:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #2880
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4672]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4664]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #5840]
	str	q1, [sp, #5824]
	ldr	d29, [x19, #7536]
	ldr	d15, [x19, #7600]
	ldr	d0, [x19, #7608]
	ldr	d18, [x19, #7616]
	ldr	d1, [x19, #7624]
	ldr	d2, [x19, #7632]
	fneg	d3, d18
	ldr	d5, [sp, #6136]
	ldr	d4, [sp, #5840]
	ldr	d14, [sp, #5848]
	ldr	x9, [sp, #584]                  ; 8-byte Folded Reload
	fmov	d6, d14
	ldr	x1, [sp, #4944]                 ; 8-byte Folded Reload
LBB17_94:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d5, d0, d5
	ldr	d7, [x9]
	fmadd	d5, d15, d7, d5
	ldur	d16, [x9, #-16]
	fmadd	d5, d15, d16, d5
	fmul	d16, d2, d6
	fmadd	d4, d1, d4, d16
	fmul	d16, d4, d3
	fmov	d4, d6
	fmadd	d6, d29, d5, d16
	str	d6, [x17, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	fmov	d5, d7
	cmp	x8, #256
	b.ne	LBB17_94
; %bb.95:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #1728
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4664]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4368]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #36240]
	str	q1, [sp, #36224]
	ldr	d0, [x19, #528]
	ldr	d1, [x19, #536]
	ldr	d4, [x19, #544]
	ldr	d2, [x19, #552]
	ldr	d3, [x19, #560]
	str	d4, [sp, #4144]                 ; 8-byte Folded Spill
	fneg	d4, d4
	add	x9, sp, #3480
	ldr	d5, [x9, #32760]
	add	x9, sp, #3488
	ldr	d15, [x9, #32760]
	ldr	x9, [sp, #4920]                 ; 8-byte Folded Reload
	fmov	d6, d15
	ldr	x13, [sp, #4904]                ; 8-byte Folded Reload
LBB17_96:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d7, d1, d23
	ldr	d23, [x9]
	fmadd	d7, d0, d23, d7
	ldur	d16, [x9, #-16]
	fmadd	d7, d0, d16, d7
	fmul	d16, d3, d6
	fmadd	d5, d2, d5, d16
	fmul	d16, d5, d4
	fmov	d5, d6
	fmadd	d6, d17, d7, d16
	str	d6, [x13, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x8, #256
	b.ne	LBB17_96
; %bb.97:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #8, lsl #12             ; =32768
	add	x9, x9, #3456
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4368]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4360]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #33968]
	str	q1, [sp, #33952]
	ldr	d1, [x19, #1072]
	ldr	d2, [x19, #1080]
	ldr	d4, [x19, #1088]
	ldr	d3, [x19, #1096]
	ldr	d0, [x19, #1104]
	str	d4, [sp, #4136]                 ; 8-byte Folded Spill
	fneg	d4, d4
	add	x9, sp, #1208
	ldr	d5, [x9, #32760]
	add	x9, sp, #1216
	ldr	d23, [x9, #32760]
	ldr	x9, [sp, #4856]                 ; 8-byte Folded Reload
	fmov	d6, d23
	ldr	d17, [sp, #4240]                ; 8-byte Folded Reload
LBB17_98:                               ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d7, d2, d24
	ldr	d24, [x9]
	fmadd	d7, d1, d24, d7
	ldur	d16, [x9, #-16]
	fmadd	d7, d1, d16, d7
	fmul	d16, d0, d6
	fmadd	d5, d3, d5, d16
	fmul	d16, d5, d4
	fmov	d5, d6
	fmadd	d6, d17, d7, d16
	str	d6, [x20, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x8, #256
	b.ne	LBB17_98
; %bb.99:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #8, lsl #12             ; =32768
	add	x9, x9, #1184
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4360]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4352]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #31696]
	str	q1, [sp, #31680]
	ldr	d2, [x19, #1600]
	ldr	d3, [x19, #1608]
	ldr	d1, [x19, #1616]
	ldr	d4, [x19, #1624]
	ldr	d0, [x19, #1632]
	str	d1, [sp, #4128]                 ; 8-byte Folded Spill
	fneg	d1, d1
	ldr	d5, [sp, #31696]
	ldr	d24, [sp, #31704]
	mov	x9, x27
	fmov	d6, d24
	add	x13, sp, #8, lsl #12            ; =32768
	add	x13, x13, #896
	ldr	d17, [sp, #4232]                ; 8-byte Folded Reload
LBB17_100:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d7, d3, d25
	ldr	d25, [x9]
	fmadd	d7, d2, d25, d7
	ldur	d16, [x9, #-16]
	fmadd	d7, d2, d16, d7
	fmul	d16, d0, d6
	fmadd	d5, d4, d5, d16
	fmul	d16, d5, d1
	fmov	d5, d6
	fmadd	d6, d17, d7, d16
	str	d6, [x15, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x8, #256
	b.ne	LBB17_100
; %bb.101:                              ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #7, lsl #12             ; =28672
	add	x9, x9, #3008
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4352]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4344]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #29424]
	str	q1, [sp, #29408]
	ldr	d3, [x19, #2128]
	ldr	d4, [x19, #2136]
	ldr	d1, [x19, #2144]
	ldr	d5, [x19, #2152]
	ldr	d0, [x19, #2160]
	str	d1, [sp, #4232]                 ; 8-byte Folded Spill
	fneg	d1, d1
	ldr	d2, [sp, #29424]
	ldr	d25, [sp, #29432]
	ldr	x9, [sp, #4848]                 ; 8-byte Folded Reload
	fmov	d6, d25
	ldr	x15, [sp, #4896]                ; 8-byte Folded Reload
	ldr	d17, [sp, #4224]                ; 8-byte Folded Reload
LBB17_102:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d7, d4, d26
	ldr	d26, [x9]
	fmadd	d7, d3, d26, d7
	ldur	d16, [x9, #-16]
	fmadd	d7, d3, d16, d7
	fmul	d16, d0, d6
	fmadd	d2, d5, d2, d16
	fmul	d16, d2, d1
	fmov	d2, d6
	fmadd	d6, d17, d7, d16
	str	d6, [x15, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x8, #256
	b.ne	LBB17_102
; %bb.103:                              ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #7, lsl #12             ; =28672
	add	x9, x9, #736
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4344]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4336]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #27152]
	str	q1, [sp, #27136]
	ldr	d4, [x19, #2656]
	ldr	d5, [x19, #2664]
	ldr	d1, [x19, #2672]
	ldr	d6, [x19, #2680]
	ldr	d0, [x19, #2688]
	str	d1, [sp, #4224]                 ; 8-byte Folded Spill
	fneg	d1, d1
	ldr	d2, [sp, #27152]
	ldr	d26, [sp, #27160]
	mov	x9, x7
	fmov	d3, d26
	ldr	d17, [sp, #4216]                ; 8-byte Folded Reload
LBB17_104:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d7, d5, d27
	ldr	d27, [x9]
	fmadd	d7, d4, d27, d7
	ldur	d16, [x9, #-16]
	fmadd	d7, d4, d16, d7
	fmul	d16, d0, d3
	fmadd	d2, d6, d2, d16
	fmul	d16, d2, d1
	fmov	d2, d3
	fmadd	d3, d17, d7, d16
	str	d3, [x30, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x8, #256
	b.ne	LBB17_104
; %bb.105:                              ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #6, lsl #12             ; =24576
	add	x9, x9, #2560
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4336]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4328]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #24880]
	str	q1, [sp, #24864]
	ldr	d5, [x19, #3184]
	ldr	d6, [x19, #3192]
	ldr	d1, [x19, #3200]
	ldr	d7, [x19, #3208]
	ldr	d0, [x19, #3216]
	str	d1, [sp, #4216]                 ; 8-byte Folded Spill
	fneg	d1, d1
	ldr	d2, [sp, #24880]
	ldr	d27, [sp, #24888]
	mov	x9, x6
	fmov	d3, d27
	add	x15, sp, #6, lsl #12            ; =24576
	add	x15, x15, #2272
	ldr	d17, [sp, #4208]                ; 8-byte Folded Reload
LBB17_106:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d4, d6, d28
	ldr	d28, [x9]
	fmadd	d4, d5, d28, d4
	ldur	d16, [x9, #-16]
	fmadd	d4, d5, d16, d4
	fmul	d16, d0, d3
	fmadd	d2, d7, d2, d16
	fmul	d16, d2, d1
	fmov	d2, d3
	fmadd	d3, d17, d4, d16
	str	d3, [x26, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x8, #256
	b.ne	LBB17_106
; %bb.107:                              ;   in Loop: Header=BB17_7 Depth=1
	str	d18, [sp, #4240]                ; 8-byte Folded Spill
	mov	x8, #0                          ; =0x0
	add	x9, sp, #6, lsl #12             ; =24576
	add	x9, x9, #288
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4328]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4320]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #22608]
	str	q1, [sp, #22592]
	ldr	d6, [x19, #3712]
	ldr	d7, [x19, #3720]
	ldr	d1, [x19, #3728]
	ldr	d16, [x19, #3736]
	ldr	d0, [x19, #3744]
	str	d1, [sp, #4208]                 ; 8-byte Folded Spill
	fneg	d1, d1
	ldr	d2, [sp, #22608]
	ldr	d28, [sp, #22616]
	ldr	x9, [sp, #4864]                 ; 8-byte Folded Reload
	fmov	d3, d28
	ldr	x6, [sp, #592]                  ; 8-byte Folded Reload
	ldr	d5, [sp, #4200]                 ; 8-byte Folded Reload
LBB17_108:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d4, d7, d30
	ldr	d30, [x9]
	fmadd	d4, d6, d30, d4
	ldur	d17, [x9, #-16]
	fmadd	d4, d6, d17, d4
	fmul	d17, d0, d3
	fmadd	d2, d16, d2, d17
	fmul	d17, d2, d1
	fmov	d2, d3
	fmadd	d3, d5, d4, d17
	str	d3, [x6, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x8, #256
	b.ne	LBB17_108
; %bb.109:                              ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #5, lsl #12             ; =20480
	add	x9, x9, #2112
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4320]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4656]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #20336]
	str	q1, [sp, #20320]
	ldr	d7, [x19, #4240]
	ldr	d16, [x19, #4248]
	ldr	d1, [x19, #4256]
	ldr	d17, [x19, #4264]
	ldr	d0, [x19, #4272]
	str	d1, [sp, #4200]                 ; 8-byte Folded Spill
	fneg	d1, d1
	ldr	d2, [sp, #20336]
	ldr	d30, [sp, #20344]
	mov	x9, x5
	fmov	d3, d30
	ldr	d5, [sp, #4192]                 ; 8-byte Folded Reload
LBB17_110:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d4, d16, d31
	ldr	d31, [x9]
	fmadd	d4, d7, d31, d4
	ldur	d18, [x9, #-16]
	fmadd	d4, d7, d18, d4
	fmul	d18, d0, d3
	fmadd	d2, d17, d2, d18
	fmul	d18, d2, d1
	fmov	d2, d3
	fmadd	d3, d5, d4, d18
	str	d3, [x4, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x8, #256
	b.ne	LBB17_110
; %bb.111:                              ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #4, lsl #12             ; =16384
	add	x9, x9, #3936
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4656]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4648]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #18064]
	str	q1, [sp, #18048]
	ldr	d16, [x19, #4768]
	ldr	d17, [x19, #4776]
	ldr	d7, [x19, #4784]
	ldr	d18, [x19, #4792]
	ldr	d0, [x19, #4800]
	fneg	d1, d7
	ldr	d2, [sp, #18064]
	ldr	d31, [sp, #18072]
	ldr	x9, [sp, #4872]                 ; 8-byte Folded Reload
	fmov	d3, d31
	ldr	d5, [sp, #4184]                 ; 8-byte Folded Reload
	fmov	d6, d19
LBB17_112:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d4, d17, d8
	ldr	d8, [x9]
	fmadd	d4, d16, d8, d4
	ldur	d19, [x9, #-16]
	fmadd	d4, d16, d19, d4
	fmul	d19, d0, d3
	fmadd	d2, d18, d2, d19
	fmul	d19, d2, d1
	fmov	d2, d3
	fmadd	d3, d5, d4, d19
	str	d3, [x2, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x8, #256
	b.ne	LBB17_112
; %bb.113:                              ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #4, lsl #12             ; =16384
	add	x9, x9, #1664
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4648]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4640]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #15792]
	str	q1, [sp, #15776]
	ldr	d17, [x19, #5296]
	ldr	d18, [x19, #5304]
	ldr	d16, [x19, #5312]
	ldr	d19, [x19, #5320]
	ldr	d0, [x19, #5328]
	fneg	d1, d16
	ldr	d2, [sp, #15792]
	ldr	d8, [sp, #15800]
	mov	x9, x3
	fmov	d3, d8
	ldr	d5, [sp, #4176]                 ; 8-byte Folded Reload
LBB17_114:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d4, d18, d9
	ldr	d9, [x9]
	fmadd	d4, d17, d9, d4
	ldur	d20, [x9, #-16]
	fmadd	d4, d17, d20, d4
	fmul	d20, d0, d3
	fmadd	d2, d19, d2, d20
	fmul	d20, d2, d1
	fmov	d2, d3
	fmadd	d3, d5, d4, d20
	str	d3, [x0, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x8, #256
	b.ne	LBB17_114
; %bb.115:                              ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #3, lsl #12             ; =12288
	add	x9, x9, #3488
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4640]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4632]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #13520]
	str	q1, [sp, #13504]
	ldr	d18, [x19, #5824]
	ldr	d19, [x19, #5832]
	ldr	d17, [x19, #5840]
	ldr	d20, [x19, #5848]
	ldr	d0, [x19, #5856]
	fneg	d1, d17
	ldr	d2, [sp, #13520]
	ldr	d9, [sp, #13528]
	ldr	x9, [sp, #4880]                 ; 8-byte Folded Reload
	fmov	d3, d9
	ldr	x3, [sp, #608]                  ; 8-byte Folded Reload
	ldr	d5, [sp, #4168]                 ; 8-byte Folded Reload
LBB17_116:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d4, d19, d10
	ldr	d10, [x9]
	fmadd	d4, d18, d10, d4
	ldur	d21, [x9, #-16]
	fmadd	d4, d18, d21, d4
	fmul	d21, d0, d3
	fmadd	d2, d20, d2, d21
	fmul	d21, d2, d1
	fmov	d2, d3
	fmadd	d3, d5, d4, d21
	str	d3, [x3, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x8, #256
	b.ne	LBB17_116
; %bb.117:                              ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #3, lsl #12             ; =12288
	add	x9, x9, #1216
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4632]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4624]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #11248]
	str	q1, [sp, #11232]
	ldr	d19, [x19, #6352]
	ldr	d20, [x19, #6360]
	ldr	d18, [x19, #6368]
	ldr	d21, [x19, #6376]
	ldr	d0, [x19, #6384]
	fneg	d1, d18
	ldr	d2, [sp, #11248]
	ldr	d10, [sp, #11256]
	mov	x9, x1
	fmov	d3, d10
	ldr	d5, [sp, #4160]                 ; 8-byte Folded Reload
LBB17_118:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d4, d20, d11
	ldr	d11, [x9]
	fmadd	d4, d19, d11, d4
	ldur	d22, [x9, #-16]
	fmadd	d4, d19, d22, d4
	fmul	d22, d0, d3
	fmadd	d2, d21, d2, d22
	fmul	d22, d2, d1
	fmov	d2, d3
	fmadd	d3, d5, d4, d22
	str	d3, [x16, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x8, #256
	b.ne	LBB17_118
; %bb.119:                              ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #2, lsl #12             ; =8192
	add	x9, x9, #3040
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4624]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4616]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #8976]
	str	q1, [sp, #8960]
	ldr	d20, [x19, #6880]
	ldr	d21, [x19, #6888]
	ldr	d19, [x19, #6896]
	ldr	d22, [x19, #6904]
	ldr	d0, [x19, #6912]
	fneg	d1, d19
	ldr	d2, [sp, #8976]
	ldr	d11, [sp, #8984]
	ldr	x9, [sp, #4888]                 ; 8-byte Folded Reload
	fmov	d3, d11
	add	x1, sp, #4, lsl #12             ; =16384
	add	x1, x1, #1376
	ldr	d5, [sp, #4152]                 ; 8-byte Folded Reload
LBB17_120:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d4, d21, d12
	ldr	d12, [x9]
	fmadd	d4, d20, d12, d4
	ldur	d29, [x9, #-16]
	fmadd	d4, d20, d29, d4
	fmul	d29, d0, d3
	fmadd	d2, d22, d2, d29
	fmul	d29, d2, d1
	fmov	d2, d3
	fmadd	d3, d5, d4, d29
	str	d3, [x14, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x8, #256
	b.ne	LBB17_120
; %bb.121:                              ;   in Loop: Header=BB17_7 Depth=1
	str	d7, [sp, #4192]                 ; 8-byte Folded Spill
	mov	x8, #0                          ; =0x0
	add	x9, sp, #2, lsl #12             ; =8192
	add	x9, x9, #768
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4616]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4608]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #6704]
	str	q1, [sp, #6688]
	ldr	d21, [x19, #7408]
	ldr	d22, [x19, #7416]
	ldr	d20, [x19, #7424]
	ldr	d29, [x19, #7432]
	ldr	d0, [x19, #7440]
	fneg	d1, d20
	ldr	d2, [sp, #6704]
	ldr	d12, [sp, #6712]
	ldr	x9, [sp, #4952]                 ; 8-byte Folded Reload
	fmov	d3, d12
LBB17_122:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d4, d22, d13
	ldr	d13, [x9]
	fmadd	d4, d21, d13, d4
	ldur	d5, [x9, #-16]
	fmadd	d4, d21, d5, d4
	fmul	d5, d0, d3
	fmadd	d2, d29, d2, d5
	fmul	d5, d2, d1
	fmov	d2, d3
	fmadd	d3, d6, d4, d5
	str	d3, [x12, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x8, #256
	b.ne	LBB17_122
; %bb.123:                              ;   in Loop: Header=BB17_7 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #2592
	ldp	q0, q1, [x9, #256]
	ldr	x9, [sp, #4608]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9]
	ldr	x9, [sp, #4600]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x9]
	str	q0, [sp, #5552]
	str	q1, [sp, #5536]
	ldr	d22, [x19, #7672]
	ldr	d29, [x19, #7680]
	ldr	d21, [x19, #7688]
	ldr	d0, [x19, #7696]
	ldr	d1, [x19, #7704]
	fneg	d2, d21
	ldr	d3, [sp, #5552]
	ldr	d4, [sp, #5560]
	mov	x9, x17
	fmov	d13, d4
	ldr	d7, [sp, #4240]                 ; 8-byte Folded Reload
LBB17_124:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d5, d29, d14
	ldr	d14, [x9]
	fmadd	d5, d22, d14, d5
	ldur	d6, [x9, #-16]
	fmadd	d5, d22, d6, d5
	fmul	d6, d1, d13
	fmadd	d3, d0, d3, d6
	fmul	d6, d3, d2
	fmov	d3, d13
	fmadd	d13, d7, d5, d6
	str	d13, [x10, x8]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x8, #256
	b.ne	LBB17_124
; %bb.125:                              ;   in Loop: Header=BB17_7 Depth=1
	add	x8, sp, #1, lsl #12             ; =4096
	add	x8, x8, #1440
	ldp	q0, q1, [x8, #256]
	ldr	x8, [sp, #4600]                 ; 8-byte Folded Reload
	stp	q0, q1, [x8]
	ldp	q1, q0, [x19, #640]
	str	q0, [sp, #35952]
	str	q1, [sp, #35936]
	ldr	d0, [x19, #624]
	ldr	d1, [x19, #632]
	add	x8, sp, #3200
	ldr	d2, [x8, #32760]
	ldr	x8, [sp, #4904]                 ; 8-byte Folded Reload
	mov	w9, #32                         ; =0x20
	ldr	d6, [sp, #936]                  ; 8-byte Folded Reload
	ldr	d22, [sp, #344]                 ; 8-byte Folded Reload
	add	x17, sp, #8, lsl #12            ; =32768
	add	x17, x17, #3168
	ldr	d7, [sp, #4144]                 ; 8-byte Folded Reload
LBB17_126:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d3, d1, d15
	ldr	d15, [x8]
	fmadd	d3, d0, d15, d3
	ldur	d5, [x8, #-16]
	fmadd	d3, d0, d5, d3
	fmul	d3, d7, d3
	fabs	d3, d3
	fmul	d3, d22, d3
	fmadd	d2, d2, d6, d3
	str	d2, [x17, x9]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x9, #288
	b.ne	LBB17_126
; %bb.127:                              ;   in Loop: Header=BB17_7 Depth=1
	ldp	q0, q1, [x17, #256]
	stp	q0, q1, [x19, #640]
	ldr	x8, [sp, #4312]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x8]
	str	q0, [sp, #33680]
	str	q1, [sp, #33664]
	ldr	d0, [x19, #1152]
	ldr	d1, [x19, #1160]
	add	x8, sp, #928
	ldr	d2, [x8, #32760]
	mov	x8, x20
	mov	w9, #32                         ; =0x20
	ldr	d7, [sp, #4136]                 ; 8-byte Folded Reload
LBB17_128:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d3, d1, d23
	ldr	d23, [x8]
	fmadd	d3, d0, d23, d3
	ldur	d5, [x8, #-16]
	fmadd	d3, d0, d5, d3
	fmul	d3, d7, d3
	fabs	d3, d3
	fmul	d3, d22, d3
	fmadd	d2, d6, d2, d3
	str	d2, [x13, x9]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x9, #288
	b.ne	LBB17_128
; %bb.129:                              ;   in Loop: Header=BB17_7 Depth=1
	ldp	q0, q1, [x13, #256]
	ldr	x8, [sp, #4312]                 ; 8-byte Folded Reload
	stp	q0, q1, [x8]
	ldr	x8, [sp, #4304]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x8]
	str	q0, [sp, #31408]
	str	q1, [sp, #31392]
	ldr	d0, [x19, #1680]
	ldr	d1, [x19, #1688]
	ldr	d2, [sp, #31416]
	ldr	x8, [sp, #4960]                 ; 8-byte Folded Reload
	mov	w9, #32                         ; =0x20
	add	x13, sp, #7, lsl #12            ; =28672
	add	x13, x13, #2720
	add	x17, sp, #3, lsl #12            ; =12288
	add	x17, x17, #928
	ldr	d7, [sp, #4128]                 ; 8-byte Folded Reload
LBB17_130:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d3, d1, d24
	ldr	d24, [x8]
	fmadd	d3, d0, d24, d3
	ldur	d5, [x8, #-16]
	fmadd	d3, d0, d5, d3
	fmul	d3, d7, d3
	fabs	d3, d3
	fmul	d3, d22, d3
	fmadd	d2, d6, d2, d3
	str	d2, [x13, x9]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x9, #288
	b.ne	LBB17_130
; %bb.131:                              ;   in Loop: Header=BB17_7 Depth=1
	ldp	q0, q1, [x13, #256]
	ldr	x8, [sp, #4304]                 ; 8-byte Folded Reload
	stp	q0, q1, [x8]
	ldr	x8, [sp, #4296]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x8]
	str	q0, [sp, #29136]
	str	q1, [sp, #29120]
	ldr	d0, [x19, #2208]
	ldr	d1, [x19, #2216]
	ldr	d2, [sp, #29144]
	ldr	x8, [sp, #4896]                 ; 8-byte Folded Reload
	mov	w9, #32                         ; =0x20
	add	x13, sp, #7, lsl #12            ; =28672
	add	x13, x13, #448
	ldr	d7, [sp, #4232]                 ; 8-byte Folded Reload
LBB17_132:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d3, d1, d25
	ldr	d25, [x8]
	fmadd	d3, d0, d25, d3
	ldur	d5, [x8, #-16]
	fmadd	d3, d0, d5, d3
	fmul	d3, d7, d3
	fabs	d3, d3
	fmul	d3, d22, d3
	fmadd	d2, d6, d2, d3
	str	d2, [x13, x9]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x9, #288
	b.ne	LBB17_132
; %bb.133:                              ;   in Loop: Header=BB17_7 Depth=1
	ldp	q0, q1, [x13, #256]
	ldr	x8, [sp, #4296]                 ; 8-byte Folded Reload
	stp	q0, q1, [x8]
	ldr	x8, [sp, #4288]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x8]
	str	q0, [sp, #26864]
	str	q1, [sp, #26848]
	ldr	d0, [x19, #2736]
	ldr	d1, [x19, #2744]
	ldr	d2, [sp, #26872]
	mov	x8, x30
	mov	w9, #32                         ; =0x20
	ldr	d7, [sp, #4224]                 ; 8-byte Folded Reload
LBB17_134:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d3, d1, d26
	ldr	d26, [x8]
	fmadd	d3, d0, d26, d3
	ldur	d5, [x8, #-16]
	fmadd	d3, d0, d5, d3
	fmul	d3, d7, d3
	fabs	d3, d3
	fmul	d3, d22, d3
	fmadd	d2, d6, d2, d3
	str	d2, [x15, x9]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x9, #288
	b.ne	LBB17_134
; %bb.135:                              ;   in Loop: Header=BB17_7 Depth=1
	ldp	q0, q1, [x15, #256]
	ldr	x8, [sp, #4288]                 ; 8-byte Folded Reload
	stp	q0, q1, [x8]
	ldr	x8, [sp, #4280]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x8]
	str	q0, [sp, #24592]
	str	q1, [sp, #24576]
	ldr	d0, [x19, #3264]
	ldr	d1, [x19, #3272]
	ldr	d2, [sp, #24600]
	mov	x8, x26
	mov	w9, #32                         ; =0x20
	add	x13, sp, #6, lsl #12            ; =24576
	ldr	d7, [sp, #4216]                 ; 8-byte Folded Reload
LBB17_136:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d3, d1, d27
	ldr	d27, [x8]
	fmadd	d3, d0, d27, d3
	ldur	d5, [x8, #-16]
	fmadd	d3, d0, d5, d3
	fmul	d3, d7, d3
	fabs	d3, d3
	fmul	d3, d22, d3
	fmadd	d2, d6, d2, d3
	str	d2, [x13, x9]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x9, #288
	b.ne	LBB17_136
; %bb.137:                              ;   in Loop: Header=BB17_7 Depth=1
	ldp	q0, q1, [x13, #256]
	ldr	x8, [sp, #4280]                 ; 8-byte Folded Reload
	stp	q0, q1, [x8]
	ldr	x8, [sp, #4272]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x8]
	str	q0, [sp, #22320]
	str	q1, [sp, #22304]
	ldr	d0, [x19, #3792]
	ldr	d1, [x19, #3800]
	ldr	d2, [sp, #22328]
	mov	x8, x6
	mov	w9, #32                         ; =0x20
	add	x15, sp, #2, lsl #12            ; =8192
	add	x15, x15, #2752
	add	x13, sp, #5, lsl #12            ; =20480
	add	x13, x13, #1824
	ldr	d7, [sp, #4208]                 ; 8-byte Folded Reload
LBB17_138:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d3, d1, d28
	ldr	d28, [x8]
	fmadd	d3, d0, d28, d3
	ldur	d5, [x8, #-16]
	fmadd	d3, d0, d5, d3
	fmul	d3, d7, d3
	fabs	d3, d3
	fmul	d3, d22, d3
	fmadd	d2, d6, d2, d3
	str	d2, [x13, x9]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x9, #288
	b.ne	LBB17_138
; %bb.139:                              ;   in Loop: Header=BB17_7 Depth=1
	ldp	q0, q1, [x13, #256]
	ldr	x8, [sp, #4272]                 ; 8-byte Folded Reload
	stp	q0, q1, [x8]
	ldr	x8, [sp, #4592]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x8]
	str	q0, [sp, #20048]
	str	q1, [sp, #20032]
	ldr	d0, [x19, #4320]
	ldr	d1, [x19, #4328]
	ldr	d2, [sp, #20056]
	mov	x8, x4
	mov	w9, #32                         ; =0x20
	add	x13, sp, #2, lsl #12            ; =8192
	add	x13, x13, #480
	add	x4, sp, #4, lsl #12             ; =16384
	add	x4, x4, #3648
	ldr	d7, [sp, #4200]                 ; 8-byte Folded Reload
LBB17_140:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d3, d1, d30
	ldr	d30, [x8]
	fmadd	d3, d0, d30, d3
	ldur	d5, [x8, #-16]
	fmadd	d3, d0, d5, d3
	fmul	d3, d7, d3
	fabs	d3, d3
	fmul	d3, d22, d3
	fmadd	d2, d6, d2, d3
	str	d2, [x4, x9]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x9, #288
	b.ne	LBB17_140
; %bb.141:                              ;   in Loop: Header=BB17_7 Depth=1
	ldp	q0, q1, [x4, #256]
	ldr	x8, [sp, #4592]                 ; 8-byte Folded Reload
	stp	q0, q1, [x8]
	ldr	x8, [sp, #4584]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x8]
	str	q0, [sp, #17776]
	str	q1, [sp, #17760]
	ldr	d0, [x19, #4848]
	ldr	d1, [x19, #4856]
	ldr	d2, [sp, #17784]
	mov	x8, x2
	mov	w9, #32                         ; =0x20
	ldr	d7, [sp, #4192]                 ; 8-byte Folded Reload
LBB17_142:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d3, d1, d31
	ldr	d31, [x8]
	fmadd	d3, d0, d31, d3
	ldur	d5, [x8, #-16]
	fmadd	d3, d0, d5, d3
	fmul	d3, d7, d3
	fabs	d3, d3
	fmul	d3, d22, d3
	fmadd	d2, d6, d2, d3
	str	d2, [x1, x9]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x9, #288
	b.ne	LBB17_142
; %bb.143:                              ;   in Loop: Header=BB17_7 Depth=1
	ldp	q0, q1, [x1, #256]
	ldr	x8, [sp, #4584]                 ; 8-byte Folded Reload
	stp	q0, q1, [x8]
	ldr	x8, [sp, #4576]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x8]
	str	q0, [sp, #15504]
	str	q1, [sp, #15488]
	ldr	d0, [x19, #5376]
	ldr	d1, [x19, #5384]
	ldr	d2, [sp, #15512]
	mov	x8, x0
	mov	w9, #32                         ; =0x20
	add	x0, sp, #3, lsl #12             ; =12288
	add	x0, x0, #3200
LBB17_144:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d3, d1, d8
	ldr	d8, [x8]
	fmadd	d3, d0, d8, d3
	ldur	d5, [x8, #-16]
	fmadd	d3, d0, d5, d3
	fmul	d3, d16, d3
	fabs	d3, d3
	fmul	d3, d22, d3
	fmadd	d2, d6, d2, d3
	str	d2, [x0, x9]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x9, #288
	b.ne	LBB17_144
; %bb.145:                              ;   in Loop: Header=BB17_7 Depth=1
	ldp	q0, q1, [x0, #256]
	ldr	x8, [sp, #4576]                 ; 8-byte Folded Reload
	stp	q0, q1, [x8]
	ldr	x8, [sp, #4568]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x8]
	str	q0, [sp, #13232]
	str	q1, [sp, #13216]
	ldr	d0, [x19, #5904]
	ldr	d1, [x19, #5912]
	ldr	d2, [sp, #13240]
	mov	x8, x3
	mov	w9, #32                         ; =0x20
LBB17_146:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d3, d1, d9
	ldr	d9, [x8]
	fmadd	d3, d0, d9, d3
	ldur	d5, [x8, #-16]
	fmadd	d3, d0, d5, d3
	fmul	d3, d17, d3
	fabs	d3, d3
	fmul	d3, d22, d3
	fmadd	d2, d6, d2, d3
	str	d2, [x17, x9]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x9, #288
	b.ne	LBB17_146
; %bb.147:                              ;   in Loop: Header=BB17_7 Depth=1
	ldp	q0, q1, [x17, #256]
	ldr	x8, [sp, #4568]                 ; 8-byte Folded Reload
	stp	q0, q1, [x8]
	ldr	x8, [sp, #4560]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x8]
	str	q0, [sp, #10960]
	str	q1, [sp, #10944]
	ldr	d0, [x19, #6432]
	ldr	d1, [x19, #6440]
	ldr	d2, [sp, #10968]
	mov	x8, x16
	mov	w9, #32                         ; =0x20
LBB17_148:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d3, d1, d10
	ldr	d10, [x8]
	fmadd	d3, d0, d10, d3
	ldur	d5, [x8, #-16]
	fmadd	d3, d0, d5, d3
	fmul	d3, d18, d3
	fabs	d3, d3
	fmul	d3, d22, d3
	fmadd	d2, d6, d2, d3
	str	d2, [x15, x9]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x9, #288
	b.ne	LBB17_148
; %bb.149:                              ;   in Loop: Header=BB17_7 Depth=1
	ldp	q0, q1, [x15, #256]
	ldr	x8, [sp, #4560]                 ; 8-byte Folded Reload
	stp	q0, q1, [x8]
	ldr	x8, [sp, #4552]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x8]
	str	q0, [sp, #8688]
	str	q1, [sp, #8672]
	ldr	d0, [x19, #6960]
	ldr	d1, [x19, #6968]
	ldr	d2, [sp, #8696]
	mov	x8, x14
	mov	w9, #32                         ; =0x20
LBB17_150:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d3, d1, d11
	ldr	d11, [x8]
	fmadd	d3, d0, d11, d3
	ldur	d5, [x8, #-16]
	fmadd	d3, d0, d5, d3
	fmul	d3, d19, d3
	fabs	d3, d3
	fmul	d3, d22, d3
	fmadd	d2, d6, d2, d3
	str	d2, [x13, x9]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x9, #288
	b.ne	LBB17_150
; %bb.151:                              ;   in Loop: Header=BB17_7 Depth=1
	ldp	q0, q1, [x13, #256]
	ldr	x8, [sp, #4552]                 ; 8-byte Folded Reload
	stp	q0, q1, [x8]
	ldr	x8, [sp, #4544]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x8]
	str	q0, [sp, #6416]
	str	q1, [sp, #6400]
	ldr	d0, [x19, #7488]
	ldr	d1, [x19, #7496]
	ldr	d2, [sp, #6424]
	mov	x8, x12
	mov	w9, #32                         ; =0x20
LBB17_152:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d3, d1, d12
	ldr	d12, [x8]
	fmadd	d3, d0, d12, d3
	ldur	d5, [x8, #-16]
	fmadd	d3, d0, d5, d3
	fmul	d3, d20, d3
	fabs	d3, d3
	fmul	d3, d22, d3
	fmadd	d2, d6, d2, d3
	str	d2, [x11, x9]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x9, #288
	b.ne	LBB17_152
; %bb.153:                              ;   in Loop: Header=BB17_7 Depth=1
	ldp	q0, q1, [x11, #256]
	ldr	x8, [sp, #4544]                 ; 8-byte Folded Reload
	stp	q0, q1, [x8]
	ldr	x8, [sp, #4536]                 ; 8-byte Folded Reload
	ldp	q1, q0, [x8]
	str	q0, [sp, #5264]
	str	q1, [sp, #5248]
	ldr	d0, [x19, #7744]
	ldr	d1, [x19, #7752]
	ldr	d2, [sp, #5272]
	mov	x8, x10
	mov	w9, #32                         ; =0x20
	add	x10, sp, #1, lsl #12            ; =4096
	add	x10, x10, #1152
LBB17_154:                              ;   Parent Loop BB17_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d3, d1, d4
	ldr	d4, [x8]
	fmadd	d3, d0, d4, d3
	ldur	d5, [x8, #-16]
	fmadd	d3, d0, d5, d3
	fmul	d3, d21, d3
	fabs	d3, d3
	fmul	d3, d22, d3
	fmadd	d2, d6, d2, d3
	str	d2, [x10, x9]
	add	x9, x9, #8
	add	x8, x8, #8
	cmp	x9, #288
	b.ne	LBB17_154
; %bb.155:                              ;   in Loop: Header=BB17_7 Depth=1
	ldp	q0, q1, [x10, #256]
	ldr	x8, [sp, #4536]                 ; 8-byte Folded Reload
	stp	q0, q1, [x8]
	ldr	q0, [sp, #37280]
	ldr	q1, [sp, #37296]
	str	q0, [sp, #5184]
	str	q1, [sp, #5200]
	ldr	q0, [sp, #37312]
	ldr	q1, [sp, #37328]
	str	q0, [sp, #5216]
	str	q1, [sp, #5232]
	ldr	q0, [sp, #37216]
	ldr	q1, [sp, #37232]
	str	q0, [sp, #5120]
	str	q1, [sp, #5136]
	ldr	q0, [sp, #37248]
	ldr	q1, [sp, #37264]
	str	q0, [sp, #5152]
	str	q1, [sp, #5168]
	ldr	q0, [sp, #37152]
	ldr	q1, [sp, #37168]
	str	q0, [sp, #5056]
	str	q1, [sp, #5072]
	ldr	q0, [sp, #37184]
	ldr	q1, [sp, #37200]
	str	q0, [sp, #5088]
	str	q1, [sp, #5104]
	ldr	q0, [sp, #37088]
	ldr	q1, [sp, #37104]
	str	q0, [sp, #4992]
	str	q1, [sp, #5008]
	ldr	q0, [sp, #37120]
	ldr	q1, [sp, #37136]
	str	q0, [sp, #5024]
	str	q1, [sp, #5040]
	ldr	d0, [sp, #5528]
	str	d0, [sp, #4240]                 ; 8-byte Folded Spill
	ldr	d0, [sp, #6680]
	str	d0, [sp, #4232]                 ; 8-byte Folded Spill
	ldr	d0, [sp, #8952]
	str	d0, [sp, #4216]                 ; 8-byte Folded Spill
	ldr	d0, [sp, #11224]
	str	d0, [sp, #4200]                 ; 8-byte Folded Spill
	ldr	d0, [sp, #13496]
	str	d0, [sp, #4176]                 ; 8-byte Folded Spill
	ldr	d0, [sp, #15768]
	str	d0, [sp, #4160]                 ; 8-byte Folded Spill
	ldr	d0, [sp, #18040]
	str	d0, [sp, #4144]                 ; 8-byte Folded Spill
	ldr	d0, [sp, #20312]
	str	d0, [sp, #4128]                 ; 8-byte Folded Spill
	ldr	d11, [sp, #22584]
	ldr	d12, [sp, #24856]
	ldr	d13, [sp, #27128]
	ldr	d8, [sp, #29400]
	ldr	d14, [sp, #31672]
	add	x8, sp, #1184
	ldr	d15, [x8, #32760]
	add	x8, sp, #3456
	ldr	d0, [x8, #32760]
	bl	_log10
	ldr	d10, [sp, #384]                 ; 8-byte Folded Reload
	fmov	d9, #20.00000000
	fmadd	d0, d0, d9, d10
	fcvt	s0, d0
	str	s0, [sp, #4224]                 ; 4-byte Folded Spill
	fmov	d0, d15
	bl	_log10
	fmadd	d0, d0, d9, d10
	fcvt	s0, d0
	str	s0, [sp, #4208]                 ; 4-byte Folded Spill
	fmov	d0, d14
	bl	_log10
	fmadd	d0, d0, d9, d10
	fcvt	s0, d0
	str	s0, [sp, #4192]                 ; 4-byte Folded Spill
	fmov	d0, d8
	bl	_log10
	fmadd	d0, d0, d9, d10
	fcvt	s0, d0
	str	s0, [sp, #4184]                 ; 4-byte Folded Spill
	fmov	d0, d13
	bl	_log10
	fmadd	d0, d0, d9, d10
	fcvt	s0, d0
	str	s0, [sp, #4168]                 ; 4-byte Folded Spill
	fmov	d0, d12
	bl	_log10
	fmadd	d0, d0, d9, d10
	fcvt	s0, d0
	str	s0, [sp, #4152]                 ; 4-byte Folded Spill
	fmov	d0, d11
	bl	_log10
	fmadd	d0, d0, d9, d10
	fcvt	s0, d0
	str	s0, [sp, #4136]                 ; 4-byte Folded Spill
	ldr	d0, [sp, #4128]                 ; 8-byte Folded Reload
	bl	_log10
	fmadd	d0, d0, d9, d10
	fcvt	s0, d0
	str	s0, [sp, #4128]                 ; 4-byte Folded Spill
	ldr	d0, [sp, #4144]                 ; 8-byte Folded Reload
	bl	_log10
	fmadd	d0, d0, d9, d10
	fcvt	s11, d0
	ldr	d0, [sp, #4160]                 ; 8-byte Folded Reload
	bl	_log10
	fmadd	d0, d0, d9, d10
	fcvt	s15, d0
	ldr	d0, [sp, #4176]                 ; 8-byte Folded Reload
	bl	_log10
	fmadd	d0, d0, d9, d10
	fcvt	s14, d0
	ldr	d0, [sp, #4200]                 ; 8-byte Folded Reload
	bl	_log10
	fmadd	d0, d0, d9, d10
	fcvt	s8, d0
	ldr	d0, [sp, #4216]                 ; 8-byte Folded Reload
	bl	_log10
	fmadd	d0, d0, d9, d10
	fcvt	s13, d0
	ldr	d0, [sp, #4232]                 ; 8-byte Folded Reload
	bl	_log10
	fmadd	d0, d0, d9, d10
	fcvt	s12, d0
	ldr	d0, [sp, #4240]                 ; 8-byte Folded Reload
	bl	_log10
	ldr	s1, [sp, #4224]                 ; 4-byte Folded Reload
	str	s1, [x19, #7796]
	fmadd	d0, d0, d9, d10
	fcvt	s0, d0
	ldr	s1, [sp, #4208]                 ; 4-byte Folded Reload
	str	s1, [x19, #7800]
	ldr	s1, [sp, #4192]                 ; 4-byte Folded Reload
	str	s1, [x19, #7804]
	ldr	s1, [sp, #4184]                 ; 4-byte Folded Reload
	str	s1, [x19, #7808]
	ldr	s1, [sp, #4168]                 ; 4-byte Folded Reload
	str	s1, [x19, #7812]
	ldr	s1, [sp, #4152]                 ; 4-byte Folded Reload
	str	s1, [x19, #7816]
	ldr	s1, [sp, #4136]                 ; 4-byte Folded Reload
	str	s1, [x19, #7820]
	ldr	s1, [sp, #4128]                 ; 4-byte Folded Reload
	str	s1, [x19, #7824]
	str	s11, [x19, #7828]
	str	s15, [x19, #7832]
	str	s14, [x19, #7836]
	str	s8, [x19, #7840]
	str	s13, [x19, #7844]
	str	s12, [x19, #7848]
	str	s0, [x19, #7852]
	ldr	q1, [sp, #4992]
	ldr	q0, [sp, #4992]
	fcvtn	v4.2s, v1.2d
	ldr	q2, [sp, #5008]
	ldr	q1, [sp, #5008]
	fcvtn2	v4.4s, v2.2d
	ldr	q3, [sp, #5024]
	ldr	q2, [sp, #5024]
	fcvtn	v5.2s, v3.2d
	ldr	q6, [sp, #5040]
	ldr	q3, [sp, #5040]
	fcvtn2	v5.4s, v6.2d
	ldr	x8, [sp, #4264]                 ; 8-byte Folded Reload
	stp	q4, q5, [x8]
	ldr	q5, [sp, #5056]
	ldr	q4, [sp, #5056]
	fcvtn	v16.2s, v5.2d
	ldr	q6, [sp, #5072]
	ldr	q5, [sp, #5072]
	fcvtn2	v16.4s, v6.2d
	ldr	q7, [sp, #5088]
	ldr	q6, [sp, #5088]
	fcvtn	v17.2s, v7.2d
	ldr	q18, [sp, #5104]
	ldr	q7, [sp, #5104]
	fcvtn2	v17.4s, v18.2d
	stp	q16, q17, [x8, #32]
	ldr	q16, [sp, #5120]
	ldr	q17, [sp, #5120]
	fcvtn	v16.2s, v16.2d
	ldr	q18, [sp, #5136]
	ldr	q19, [sp, #5136]
	fcvtn2	v16.4s, v18.2d
	ldr	q18, [sp, #5152]
	ldr	q20, [sp, #5152]
	fcvtn	v18.2s, v18.2d
	ldr	q21, [sp, #5168]
	ldr	q22, [sp, #5168]
	fcvtn2	v18.4s, v21.2d
	ldr	q21, [sp, #5184]
	ldr	q23, [sp, #5184]
	fcvtn	v21.2s, v21.2d
	ldr	q24, [sp, #5200]
	ldr	q25, [sp, #5200]
	fcvtn2	v21.4s, v24.2d
	ldr	q24, [sp, #5216]
	ldr	q26, [sp, #5216]
	fcvtn	v24.2s, v24.2d
	ldr	q27, [sp, #5232]
	ldr	q28, [sp, #5232]
	fcvtn2	v24.4s, v27.2d
	stp	q16, q18, [x8, #64]
	fcvtn	v0.2s, v0.2d
	fcvtn2	v0.4s, v1.2d
	stp	q21, q24, [x8, #96]
	ldr	x10, [sp, #4840]                ; 8-byte Folded Reload
	ldr	x8, [sp, #400]                  ; 8-byte Folded Reload
	add	x8, x8, x10, lsl #2
	fcvtn	v1.2s, v2.2d
	fcvtn2	v1.4s, v3.2d
	fcvtn	v2.2s, v4.2d
	fcvtn2	v2.4s, v5.2d
	stp	q0, q1, [x8]
	fcvtn	v0.2s, v6.2d
	fcvtn2	v0.4s, v7.2d
	fcvtn	v1.2s, v17.2d
	stp	q2, q0, [x8, #32]
	fcvtn2	v1.4s, v19.2d
	fcvtn	v0.2s, v20.2d
	fcvtn2	v0.4s, v22.2d
	stp	q1, q0, [x8, #64]
	fcvtn	v0.2s, v23.2d
	fcvtn2	v0.4s, v25.2d
	fcvtn	v1.2s, v26.2d
	fcvtn2	v1.4s, v28.2d
	add	x10, x10, #32
	stp	q0, q1, [x8, #96]
	ldr	x8, [sp, #336]                  ; 8-byte Folded Reload
	cmp	x10, x8
	ldp	d9, d8, [sp, #320]              ; 16-byte Folded Reload
	ldp	d3, d10, [sp, #304]             ; 16-byte Folded Reload
	ldr	d2, [sp, #872]                  ; 8-byte Folded Reload
	fmov	d11, #1.00000000
	fmov	d12, #-1.00000000
	b.ls	LBB17_7
; %bb.156:
	ldr	d12, [sp, #936]                 ; 8-byte Folded Reload
	ldr	d13, [sp, #344]                 ; 8-byte Folded Reload
	ldr	x15, [sp, #920]                 ; 8-byte Folded Reload
	ldr	x3, [sp, #4968]                 ; 8-byte Folded Reload
	ldr	x0, [sp, #904]                  ; 8-byte Folded Reload
	ldr	x5, [sp, #896]                  ; 8-byte Folded Reload
	ldr	x7, [sp, #888]                  ; 8-byte Folded Reload
	ldr	x6, [sp, #880]                  ; 8-byte Folded Reload
	ldr	x30, [sp, #912]                 ; 8-byte Folded Reload
	ldr	x16, [sp, #776]                 ; 8-byte Folded Reload
	ldr	x17, [sp, #768]                 ; 8-byte Folded Reload
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	subs	w8, w8, w10
	b.le	LBB17_680
LBB17_157:
	ldur	q0, [x19, #120]
	ldur	q1, [x19, #136]
	str	q0, [sp, #40208]
	str	q1, [sp, #40224]
	str	x8, [sp, #4800]                 ; 8-byte Folded Spill
	cmp	w8, #1
	b.lt	LBB17_160
; %bb.158:
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #3344
	add	x8, x8, #32
	ldr	d0, [x24, #2600]
	ldr	x9, [sp, #4800]                 ; 8-byte Folded Reload
LBB17_159:                              ; =>This Inner Loop Header: Depth=1
	fmadd	d0, d0, d2, d3
	str	d0, [x8], #8
	subs	x9, x9, #1
	b.ne	LBB17_159
LBB17_160:
	ldr	x1, [sp, #4800]                 ; 8-byte Folded Reload
	sxtw	x13, w1
	sbfiz	x8, x1, #3, #32
	add	x9, x13, #1
	str	x9, [sp, #4760]                 ; 8-byte Folded Spill
	add	x9, sp, #9, lsl #12             ; =36864
	add	x9, x9, #3344
	ldr	q0, [x9, x8]
	stur	q0, [x19, #120]
	add	x8, x13, #2
	lsl	x8, x8, #3
	str	x13, [sp, #4776]                ; 8-byte Folded Spill
	add	x13, x13, #3
	str	x13, [sp, #4768]                ; 8-byte Folded Spill
	str	x8, [sp, #4808]                 ; 8-byte Folded Spill
	ldr	q0, [x9, x8]
	stur	q0, [x19, #136]
	cmp	w1, #0
	str	x10, [sp, #4840]                ; 8-byte Folded Spill
	b.le	LBB17_163
; %bb.161:
	ldr	d0, [x19, #152]
	cmp	w1, #7
	b.hi	LBB17_164
; %bb.162:
	mov	x8, #0                          ; =0x0
	b	LBB17_167
LBB17_163:
	ldr	q0, [x19, #192]
	str	q0, [sp, #39008]
	b	LBB17_184
LBB17_164:
	and	x8, x1, #0x7ffffff8
	add	x9, sp, #9, lsl #12             ; =36864
	add	x9, x9, #3088
	add	x9, x9, #32
	add	x10, sp, #9, lsl #12            ; =36864
	add	x10, x10, #3344
	add	x10, x10, #48
	mov	x11, x8
LBB17_165:                              ; =>This Inner Loop Header: Depth=1
	ldp	q1, q2, [x10, #-16]
	ldp	q3, q4, [x10, #16]
	fmul.2d	v1, v1, v0[0]
	fmul.2d	v2, v2, v0[0]
	fmul.2d	v3, v3, v0[0]
	fmul.2d	v4, v4, v0[0]
	stp	q1, q2, [x9, #-32]
	stp	q3, q4, [x9], #64
	add	x10, x10, #64
	subs	x11, x11, #8
	b.ne	LBB17_165
; %bb.166:
	ldr	x9, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	x8, x9
	b.eq	LBB17_169
LBB17_167:
	lsl	x10, x8, #3
	add	x9, sp, #9, lsl #12             ; =36864
	add	x9, x9, #3088
	add	x9, x9, x10
	add	x11, sp, #9, lsl #12            ; =36864
	add	x11, x11, #3344
	add	x10, x10, x11
	add	x10, x10, #32
	ldr	x11, [sp, #4800]                ; 8-byte Folded Reload
	sub	x8, x11, x8
LBB17_168:                              ; =>This Inner Loop Header: Depth=1
	ldr	d1, [x10], #8
	fmul	d1, d0, d1
	str	d1, [x9], #8
	subs	x8, x8, #1
	b.ne	LBB17_168
LBB17_169:
	str	x26, [sp, #376]                 ; 8-byte Folded Spill
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #1
	b.ne	LBB17_171
; %bb.170:
	mov	x21, #0                         ; =0x0
	b	LBB17_174
LBB17_171:
	and	x20, x8, #0x7ffffffe
	add	x27, sp, #9, lsl #12            ; =36864
	add	x27, x27, #3088
	add	x26, sp, #9, lsl #12            ; =36864
	add	x26, x26, #2832
	mov	x21, x20
LBB17_172:                              ; =>This Inner Loop Header: Depth=1
	ldr	q0, [x27], #16
	str	q0, [sp, #4784]                 ; 16-byte Folded Spill
	mov	d0, v0[1]
	bl	_sin
                                        ; kill: def $d0 killed $d0 def $q0
	str	q0, [sp, #4816]                 ; 16-byte Folded Spill
	ldr	q0, [sp, #4784]                 ; 16-byte Folded Reload
                                        ; kill: def $d0 killed $d0 killed $q0
	bl	_sin
                                        ; kill: def $d0 killed $d0 def $q0
	ldr	q1, [sp, #4816]                 ; 16-byte Folded Reload
	mov.d	v0[1], v1[0]
	str	q0, [x26], #16
	subs	x20, x20, #2
	b.ne	LBB17_172
; %bb.173:
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	x21, x8
	b.eq	LBB17_176
LBB17_174:
	lsl	x8, x21, #3
	add	x9, sp, #9, lsl #12             ; =36864
	add	x9, x9, #2832
	add	x20, x9, x8
	add	x9, sp, #9, lsl #12             ; =36864
	add	x9, x9, #3088
	add	x26, x9, x8
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	sub	x27, x8, x21
LBB17_175:                              ; =>This Inner Loop Header: Depth=1
	ldr	d0, [x26], #8
	bl	_sin
	str	d0, [x20], #8
	subs	x27, x27, #1
	b.ne	LBB17_175
LBB17_176:
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #1
	b.ne	LBB17_178
; %bb.177:
	mov	x21, #0                         ; =0x0
	b	LBB17_181
LBB17_178:
	and	x21, x8, #0x7ffffffe
	add	x27, sp, #9, lsl #12            ; =36864
	add	x27, x27, #3088
	add	x26, sp, #9, lsl #12            ; =36864
	add	x26, x26, #2576
	mov	x20, x21
LBB17_179:                              ; =>This Inner Loop Header: Depth=1
	ldr	q0, [x27], #16
	str	q0, [sp, #4784]                 ; 16-byte Folded Spill
	mov	d0, v0[1]
	bl	_cos
                                        ; kill: def $d0 killed $d0 def $q0
	str	q0, [sp, #4816]                 ; 16-byte Folded Spill
	ldr	q0, [sp, #4784]                 ; 16-byte Folded Reload
                                        ; kill: def $d0 killed $d0 killed $q0
	bl	_cos
                                        ; kill: def $d0 killed $d0 def $q0
	ldr	q1, [sp, #4816]                 ; 16-byte Folded Reload
	mov.d	v0[1], v1[0]
	str	q0, [x26], #16
	subs	x20, x20, #2
	b.ne	LBB17_179
; %bb.180:
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	x21, x8
	b.eq	LBB17_183
LBB17_181:
	lsl	x8, x21, #3
	add	x9, sp, #9, lsl #12             ; =36864
	add	x9, x9, #2576
	add	x20, x9, x8
	add	x9, sp, #9, lsl #12             ; =36864
	add	x9, x9, #3088
	add	x26, x9, x8
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	sub	x27, x8, x21
LBB17_182:                              ; =>This Inner Loop Header: Depth=1
	ldr	d0, [x26], #8
	bl	_cos
	str	d0, [x20], #8
	subs	x27, x27, #1
	b.ne	LBB17_182
LBB17_183:
	ldr	q0, [x19, #192]
	str	q0, [sp, #39008]
	ldr	x8, [sp, #4840]                 ; 8-byte Folded Reload
	mvn	w8, w8
	ldr	w9, [sp, #12]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	ubfiz	x8, x8, #2, #32
Lloh283:
	adrp	x1, l_.memset_pattern.127@PAGE
Lloh284:
	add	x1, x1, l_.memset_pattern.127@PAGEOFF
	add	x9, sp, #9, lsl #12             ; =36864
	add	x9, x9, #2144
	add	x0, x9, #16
	add	x2, x8, #4
	bl	_memset_pattern16
	ldr	x15, [sp, #920]                 ; 8-byte Folded Reload
	ldr	x26, [sp, #376]                 ; 8-byte Folded Reload
	ldr	x20, [sp, #648]                 ; 8-byte Folded Reload
	ldr	x3, [sp, #4968]                 ; 8-byte Folded Reload
	ldr	x27, [sp, #4912]                ; 8-byte Folded Reload
	ldr	x0, [sp, #904]                  ; 8-byte Folded Reload
	ldr	x5, [sp, #896]                  ; 8-byte Folded Reload
	ldr	x7, [sp, #888]                  ; 8-byte Folded Reload
	ldr	x6, [sp, #880]                  ; 8-byte Folded Reload
	ldr	x30, [sp, #912]                 ; 8-byte Folded Reload
	ldr	x16, [sp, #776]                 ; 8-byte Folded Reload
	ldr	x17, [sp, #768]                 ; 8-byte Folded Reload
LBB17_184:
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #2144
	ldr	x9, [sp, #4776]                 ; 8-byte Folded Reload
	ldr	w9, [x8, x9, lsl #2]
	str	w9, [x19, #192]
	ldr	x4, [sp, #4760]                 ; 8-byte Folded Reload
	lsl	x9, x4, #2
	ldr	d0, [x8, x9]
	stur	d0, [x19, #196]
	ldr	x9, [sp, #4768]                 ; 8-byte Folded Reload
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [x19, #204]
	ldur	q0, [x19, #56]
	ldur	q1, [x19, #72]
	str	q0, [sp, #40496]
	str	q1, [sp, #40512]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #1
	b.lt	LBB17_187
; %bb.185:
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #3632
	add	x8, x8, #32
	ldr	d0, [x24, #2888]
	mov	x9, #34603                      ; =0x872b
	movk	x9, #55574, lsl #16
	movk	x9, #63438, lsl #32
	movk	x9, #16367, lsl #48
	fmov	d1, x9
	ldr	x9, [sp, #4800]                 ; 8-byte Folded Reload
LBB17_186:                              ; =>This Inner Loop Header: Depth=1
	fmadd	d0, d0, d1, d10
	str	d0, [x8], #8
	subs	x9, x9, #1
	b.ne	LBB17_186
LBB17_187:
	ldr	x8, [sp, #4776]                 ; 8-byte Folded Reload
	lsl	x9, x8, #3
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #3632
	str	x9, [sp, #4816]                 ; 8-byte Folded Spill
	ldr	q0, [x8, x9]
	stur	q0, [x19, #56]
	ldr	x9, [sp, #4808]                 ; 8-byte Folded Reload
	ldr	q0, [x8, x9]
	stur	q0, [x19, #72]
	ldp	q0, q1, [x19, #160]
	str	q0, [sp, #39152]
	str	q1, [sp, #39168]
	ldp	q0, q1, [x19, #208]
	str	q0, [sp, #38720]
	str	q1, [sp, #38736]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #0
	b.le	LBB17_190
; %bb.188:
	ldr	d0, [x24, #1112]
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #2144
	orr	x8, x8, #0xc
	ldr	d1, [x24, #1544]
	add	x9, sp, #9, lsl #12             ; =36864
	add	x9, x9, #2576
	add	x10, sp, #9, lsl #12            ; =36864
	add	x10, x10, #2832
	mov	w11, #1                         ; =0x1
	ldr	x12, [sp, #4800]                ; 8-byte Folded Reload
LBB17_189:                              ; =>This Inner Loop Header: Depth=1
	ldr	d2, [x10], #8
	ldr	d3, [x9], #8
	fmul	d4, d1, d3
	fmadd	d4, d0, d2, d4
	str	d4, [x16], #8
	ldr	w13, [x8], #4
	sub	w13, w11, w13
	scvtf	d5, w13
	fmadd	d0, d0, d3, d5
	fmsub	d0, d2, d1, d0
	str	d0, [x17], #8
	fmov	d1, d4
	subs	x12, x12, #1
	b.ne	LBB17_189
LBB17_190:
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #2288
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x8, x10]
	ldr	x9, [sp, #4808]                 ; 8-byte Folded Reload
	ldr	q1, [x8, x9]
	stp	q0, q1, [x19, #160]
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #1856
	ldr	q0, [x8, x10]
	ldr	q1, [x8, x9]
	stp	q0, q1, [x19, #208]
	ldp	q0, q1, [x19, #16]
	str	q0, [sp, #40784]
	str	q1, [sp, #40800]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #0
	b.le	LBB17_193
; %bb.191:
	ldr	d0, [x24, #3176]
	mov	x8, #34603                      ; =0x872b
	movk	x8, #55574, lsl #16
	movk	x8, #63438, lsl #32
	movk	x8, #16367, lsl #48
	fmov	d1, x8
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	ldr	x9, [sp, #4984]                 ; 8-byte Folded Reload
LBB17_192:                              ; =>This Inner Loop Header: Depth=1
	fmadd	d0, d0, d1, d9
	str	d0, [x9], #8
	subs	x8, x8, #1
	b.ne	LBB17_192
LBB17_193:
	add	x13, x19, #264
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #3920
	ldr	x11, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x8, x11]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q1, [x8, x10]
	stp	q0, q1, [x19, #16]
	add	x8, x19, #248
	ldur	q0, [x19, #248]
	ldr	q1, [x8, #16]
	str	q0, [sp, #38432]
	str	q1, [sp, #38448]
	ldr	x9, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w9, #0
	ldr	x12, [sp, #928]                 ; 8-byte Folded Reload
	str	x13, [sp, #4784]                ; 8-byte Folded Spill
	b.le	LBB17_199
; %bb.194:
	ldr	d0, [x24, #824]
	mov	x8, #34603                      ; =0x872b
	movk	x8, #55574, lsl #16
	movk	x8, #63438, lsl #32
	movk	x8, #16367, lsl #48
	fmov	d1, x8
	mov	x8, x9
	ldr	x9, [sp, #4976]                 ; 8-byte Folded Reload
LBB17_195:                              ; =>This Inner Loop Header: Depth=1
	fmadd	d0, d0, d1, d8
	str	d0, [x9], #8
	subs	x8, x8, #1
	b.ne	LBB17_195
; %bb.196:
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #1568
	ldr	x9, [sp, #4816]                 ; 8-byte Folded Reload
	ldr	q0, [x8, x9]
	stur	q0, [x19, #248]
	ldr	x9, [sp, #4808]                 ; 8-byte Folded Reload
	ldr	q0, [x8, x9]
	ldr	x8, [sp, #4784]                 ; 8-byte Folded Reload
	str	q0, [x8]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #0
	ldr	x13, [sp, #944]                 ; 8-byte Folded Reload
	b.le	LBB17_200
; %bb.197:
	ldr	x21, [sp, #4800]                ; 8-byte Folded Reload
	cmp	w21, #7
	b.hi	LBB17_201
; %bb.198:
	mov	x8, #0                          ; =0x0
	b	LBB17_204
LBB17_199:
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #1568
	ldr	q0, [x8, x11]
	stur	q0, [x19, #248]
	ldr	q0, [x8, x10]
	str	q0, [x13]
	ldr	x13, [sp, #944]                 ; 8-byte Folded Reload
LBB17_200:
	ldp	q0, q1, [x19, #288]
	str	q0, [sp, #37632]
	str	q1, [sp, #37648]
	b	LBB17_217
LBB17_201:
	and	x8, x21, #0x7ffffff8
	add	x9, sp, #9, lsl #12             ; =36864
	add	x9, x9, #1312
	add	x9, x9, #32
	add	x10, sp, #9, lsl #12            ; =36864
	add	x10, x10, #3632
	add	x10, x10, #48
	add	x11, sp, #9, lsl #12            ; =36864
	add	x11, x11, #2288
	add	x11, x11, #80
	mov	x12, x8
LBB17_202:                              ; =>This Inner Loop Header: Depth=1
	ldp	q0, q1, [x10, #-16]
	ldp	q2, q3, [x10, #16]
	ldp	q4, q5, [x11, #-48]
	ldp	q6, q7, [x11, #-16]
	fmul.2d	v0, v0, v4
	fmul.2d	v1, v1, v5
	fmul.2d	v2, v2, v6
	fmul.2d	v3, v3, v7
	stp	q0, q1, [x9, #-32]
	stp	q2, q3, [x9], #64
	add	x10, x10, #64
	add	x11, x11, #64
	subs	x12, x12, #8
	b.ne	LBB17_202
; %bb.203:
	ldr	x21, [sp, #4800]                ; 8-byte Folded Reload
	cmp	x8, x21
	b.eq	LBB17_206
LBB17_204:
	lsl	x10, x8, #3
	add	x9, sp, #9, lsl #12             ; =36864
	add	x9, x9, #1312
	add	x9, x9, x10
	add	x11, x10, #32
	add	x10, sp, #9, lsl #12            ; =36864
	add	x10, x10, #2288
	add	x10, x10, x11
	add	x12, sp, #9, lsl #12            ; =36864
	add	x12, x12, #3632
	add	x11, x12, x11
	sub	x8, x21, x8
LBB17_205:                              ; =>This Inner Loop Header: Depth=1
	ldr	d0, [x11], #8
	ldr	d1, [x10], #8
	fmul	d0, d0, d1
	str	d0, [x9], #8
	subs	x8, x8, #1
	b.ne	LBB17_205
LBB17_206:
	add	x23, sp, #9, lsl #12            ; =36864
	add	x23, x23, #1312
	add	x27, sp, #9, lsl #12            ; =36864
	add	x27, x27, #1056
	fmov	d8, #1.00000000
	fmov	d9, #-1.00000000
	b	LBB17_208
LBB17_207:                              ;   in Loop: Header=BB17_208 Depth=1
	ldr	x20, [sp, #4984]                ; 8-byte Folded Reload
	ldr	d11, [x20], #8
	ldr	x8, [sp, #4976]                 ; 8-byte Folded Reload
	ldr	d0, [x8], #8
	str	x8, [sp, #4976]                 ; 8-byte Folded Spill
	fadd	d0, d0, d0
	bl	___exp10
	fmadd	d0, d10, d0, d11
	fminnm	d0, d0, d8
	fmaxnm	d0, d0, d9
	str	d0, [x27], #8
	add	x23, x23, #8
	str	x20, [sp, #4984]                ; 8-byte Folded Spill
	subs	x21, x21, #1
	b.eq	LBB17_210
LBB17_208:                              ; =>This Inner Loop Header: Depth=1
	movi	d10, #0000000000000000
	ldr	w8, [sp, #956]                  ; 4-byte Folded Reload
	cbnz	w8, LBB17_207
; %bb.209:                              ;   in Loop: Header=BB17_208 Depth=1
	ldr	d10, [x23]
	b	LBB17_207
LBB17_210:
	ldp	q0, q1, [x19, #288]
	str	q0, [sp, #37632]
	str	q1, [sp, #37648]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #7
	b.hi	LBB17_212
; %bb.211:
	mov	x8, #0                          ; =0x0
	ldr	x15, [sp, #920]                 ; 8-byte Folded Reload
	ldr	x20, [sp, #648]                 ; 8-byte Folded Reload
	ldr	x3, [sp, #4968]                 ; 8-byte Folded Reload
	ldr	x27, [sp, #4912]                ; 8-byte Folded Reload
	ldr	x0, [sp, #904]                  ; 8-byte Folded Reload
	ldr	x13, [sp, #944]                 ; 8-byte Folded Reload
	ldr	x5, [sp, #896]                  ; 8-byte Folded Reload
	ldr	x7, [sp, #888]                  ; 8-byte Folded Reload
	ldr	x6, [sp, #880]                  ; 8-byte Folded Reload
	ldr	x12, [sp, #928]                 ; 8-byte Folded Reload
	ldr	x30, [sp, #912]                 ; 8-byte Folded Reload
	ldr	x4, [sp, #4760]                 ; 8-byte Folded Reload
	b	LBB17_215
LBB17_212:
	and	x8, x8, #0x7ffffff8
	add	x9, sp, #9, lsl #12             ; =36864
	add	x9, x9, #768
	add	x9, x9, #80
	add	x10, sp, #9, lsl #12            ; =36864
	add	x10, x10, #1056
	add	x10, x10, #32
	mov	x11, #6148914691236517205       ; =0x5555555555555555
	movk	x11, #49109, lsl #48
	dup.2d	v0, x11
	mov	x11, x8
	ldr	x15, [sp, #920]                 ; 8-byte Folded Reload
	ldr	x3, [sp, #4968]                 ; 8-byte Folded Reload
	ldr	x27, [sp, #4912]                ; 8-byte Folded Reload
	ldr	x0, [sp, #904]                  ; 8-byte Folded Reload
	ldr	x13, [sp, #944]                 ; 8-byte Folded Reload
	ldr	x5, [sp, #896]                  ; 8-byte Folded Reload
	ldr	x7, [sp, #888]                  ; 8-byte Folded Reload
	ldr	x6, [sp, #880]                  ; 8-byte Folded Reload
	ldr	x12, [sp, #928]                 ; 8-byte Folded Reload
	ldr	x30, [sp, #912]                 ; 8-byte Folded Reload
	ldr	q18, [sp, #352]                 ; 16-byte Folded Reload
	ldr	x4, [sp, #4760]                 ; 8-byte Folded Reload
LBB17_213:                              ; =>This Inner Loop Header: Depth=1
	ldp	q1, q2, [x10, #-32]
	ldp	q3, q4, [x10], #64
	fmul.2d	v5, v1, v1
	fmul.2d	v6, v2, v2
	fmul.2d	v7, v3, v3
	fmul.2d	v16, v4, v4
	mov.16b	v17, v18
	fmla.2d	v17, v0, v5
	mov.16b	v5, v18
	fmla.2d	v5, v0, v6
	mov.16b	v6, v18
	fmla.2d	v6, v0, v7
	mov.16b	v7, v18
	fmla.2d	v7, v0, v16
	fmul.2d	v1, v1, v17
	fmul.2d	v2, v2, v5
	fmul.2d	v3, v3, v6
	stp	q1, q2, [x9, #-48]
	fmul.2d	v1, v4, v7
	stp	q3, q1, [x9, #-16]
	add	x9, x9, #64
	subs	x11, x11, #8
	b.ne	LBB17_213
; %bb.214:
	ldr	x9, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	x8, x9
	ldr	x20, [sp, #648]                 ; 8-byte Folded Reload
	b.eq	LBB17_217
LBB17_215:
	lsl	x10, x8, #3
	add	x9, sp, #9, lsl #12             ; =36864
	add	x9, x9, #768
	add	x9, x10, x9
	add	x9, x9, #32
	add	x11, sp, #9, lsl #12            ; =36864
	add	x11, x11, #1056
	add	x10, x11, x10
	ldr	x11, [sp, #4800]                ; 8-byte Folded Reload
	sub	x8, x11, x8
	mov	x11, #6148914691236517205       ; =0x5555555555555555
	movk	x11, #49109, lsl #48
	fmov	d0, x11
	fmov	d1, #1.00000000
LBB17_216:                              ; =>This Inner Loop Header: Depth=1
	ldr	d2, [x10], #8
	fmul	d3, d2, d2
	fmadd	d3, d3, d0, d1
	fmul	d2, d2, d3
	str	d2, [x9], #8
	subs	x8, x8, #1
	b.ne	LBB17_216
LBB17_217:
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #768
	ldr	x9, [sp, #4776]                 ; 8-byte Folded Reload
	ldr	d0, [x8, x9, lsl #3]
	str	d0, [x19, #288]
	lsl	x9, x4, #3
	str	x9, [sp, #4984]                 ; 8-byte Folded Spill
	ldr	q0, [x8, x9]
	ldr	x14, [sp, #4784]                ; 8-byte Folded Reload
	str	q0, [x14, #32]
	ldr	x9, [sp, #4768]                 ; 8-byte Folded Reload
	ldr	d0, [x8, x9, lsl #3]
	str	d0, [x19, #312]
	ldp	q0, q1, [x19, #320]
	str	q0, [sp, #37344]
	str	q1, [sp, #37360]
	ldr	x9, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w9, #0
	b.le	LBB17_223
; %bb.218:
	add	x10, sp, #9, lsl #12            ; =36864
	add	x10, x10, #480
	add	x8, x24, #32
	add	x10, x10, #32
	add	x11, sp, #1, lsl #12            ; =4096
	add	x11, x11, #512
	ldr	d0, [x11, #32760]
	ldr	d2, [x24, #24]
	mov	x11, #41943                     ; =0xa3d7
	movk	x11, #15728, lsl #16
	movk	x11, #55050, lsl #32
	movk	x11, #16367, lsl #48
	fmov	d1, x11
	mov	x11, x9
	ldr	x9, [sp, #536]                  ; 8-byte Folded Reload
LBB17_219:                              ; =>This Inner Loop Header: Depth=1
	ldr	d3, [x8], #8
	fmadd	d0, d0, d1, d3
	fsub	d0, d0, d2
	str	d0, [x10], #8
	fmov	d2, d3
	subs	x11, x11, #1
	b.ne	LBB17_219
; %bb.220:
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #480
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x8, x10]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q1, [x8, x10]
	stp	q0, q1, [x19, #320]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #0
	ldr	x24, [sp, #4848]                ; 8-byte Folded Reload
	b.le	LBB17_224
; %bb.221:
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #3
	b.hi	LBB17_225
; %bb.222:
	mov	x8, #0                          ; =0x0
	ldr	w21, [sp, #956]                 ; 4-byte Folded Reload
	b	LBB17_228
LBB17_223:
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #480
	ldr	x9, [sp, #4816]                 ; 8-byte Folded Reload
	ldr	q0, [x8, x9]
	ldr	x9, [sp, #4808]                 ; 8-byte Folded Reload
	ldr	q1, [x8, x9]
	stp	q0, q1, [x19, #320]
	ldr	x24, [sp, #4848]                ; 8-byte Folded Reload
	ldr	x9, [sp, #536]                  ; 8-byte Folded Reload
LBB17_224:
	add	x8, x19, #696
	ldp	q0, q1, [x8]
	str	q0, [sp, #35648]
	str	q1, [sp, #35664]
	b	LBB17_232
LBB17_225:
	mov	x30, x0
	mov	x10, #0                         ; =0x0
	and	x8, x8, #0x7ffffffc
	add	x11, sp, #9, lsl #12            ; =36864
	add	x11, x11, #1312
	add	x12, sp, #9, lsl #12            ; =36864
	add	x12, x12, #480
	add	x13, sp, #9, lsl #12            ; =36864
	add	x13, x13, #224
	mov	x14, x8
	ldr	w21, [sp, #956]                 ; 4-byte Folded Reload
LBB17_226:                              ; =>This Inner Loop Header: Depth=1
	add	x15, x11, x10
	add	x16, x15, #8
	add	x17, x15, #16
	add	x0, x15, #24
	add	x1, x12, x10
	add	x2, x1, #32
	add	x3, x1, #40
	add	x4, x1, #48
	add	x1, x1, #56
	cmp	w21, #0
	csel	x15, x2, x15, eq
	csel	x16, x3, x16, eq
	csel	x17, x4, x17, eq
	csel	x0, x1, x0, eq
	ldr	d0, [x15]
	ldr	d1, [x16]
	ldr	d2, [x17]
	ldr	d3, [x0]
	add	x15, x13, x10
	stp	d0, d1, [x15]
	stp	d2, d3, [x15, #16]
	add	x10, x10, #32
	subs	x14, x14, #4
	b.ne	LBB17_226
; %bb.227:
	ldr	x10, [sp, #4800]                ; 8-byte Folded Reload
	cmp	x8, x10
	ldr	x15, [sp, #920]                 ; 8-byte Folded Reload
	ldr	x3, [sp, #4968]                 ; 8-byte Folded Reload
	mov	x0, x30
	ldr	x30, [sp, #912]                 ; 8-byte Folded Reload
	ldr	x14, [sp, #4784]                ; 8-byte Folded Reload
	b.eq	LBB17_230
LBB17_228:
	lsl	x12, x8, #3
	add	x10, sp, #9, lsl #12            ; =36864
	add	x10, x10, #1312
	add	x10, x10, x12
	add	x11, sp, #9, lsl #12            ; =36864
	add	x11, x11, #480
	add	x11, x12, x11
	add	x11, x11, #32
	add	x13, sp, #9, lsl #12            ; =36864
	add	x13, x13, #224
	add	x12, x13, x12
	ldr	x13, [sp, #4800]                ; 8-byte Folded Reload
	sub	x8, x13, x8
LBB17_229:                              ; =>This Inner Loop Header: Depth=1
	cmp	w21, #0
	csel	x13, x11, x10, eq
	ldr	d0, [x13]
	str	d0, [x12], #8
	add	x10, x10, #8
	add	x11, x11, #8
	subs	x8, x8, #1
	b.ne	LBB17_229
LBB17_230:
	add	x8, x19, #696
	ldp	q1, q0, [x8]
	str	q0, [sp, #35664]
	str	q1, [sp, #35648]
	ldr	d2, [x19, #672]
	ldr	d0, [x19, #680]
	ldr	d1, [x19, #688]
	fneg	d2, d2
	add	x8, sp, #9, lsl #12             ; =36864
	add	x8, x8, #224
	add	x10, sp, #2912
	ldr	d3, [x10, #32760]
	ldr	x10, [sp, #4800]                ; 8-byte Folded Reload
	ldr	x11, [sp, #680]                 ; 8-byte Folded Reload
	ldr	x13, [sp, #944]                 ; 8-byte Folded Reload
	ldr	x12, [sp, #928]                 ; 8-byte Folded Reload
LBB17_231:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x8], #8
	ldur	d5, [x11, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x11], #8
	subs	x10, x10, #1
	b.ne	LBB17_231
LBB17_232:
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #2880
	ldr	x10, [sp, #4776]                ; 8-byte Folded Reload
	ldr	d0, [x8, x10, lsl #3]
	str	d0, [x19, #696]
	ldr	x10, [sp, #4984]                ; 8-byte Folded Reload
	ldr	q0, [x8, x10]
	str	q0, [x19, #704]
	ldr	x10, [sp, #4768]                ; 8-byte Folded Reload
	ldr	d0, [x8, x10, lsl #3]
	str	d0, [x19, #720]
	ldp	q0, q1, [x14, #512]
	str	q0, [sp, #35360]
	str	q1, [sp, #35376]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #0
	ldr	x11, [sp, #680]                 ; 8-byte Folded Reload
	b.le	LBB17_235
; %bb.233:
	ldr	d0, [x19, #672]
	ldr	d1, [x19, #736]
	ldr	d2, [x19, #744]
	ldr	d5, [x19, #752]
	ldr	d3, [x19, #760]
	ldr	d4, [x19, #768]
	fneg	d5, d5
	add	x8, sp, #2912
	ldr	d7, [x8, #32760]
	add	x8, sp, #2616
	ldr	d6, [x8, #32760]
	add	x8, sp, #2624
	ldr	d16, [x8, #32760]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	mov	x10, x22
LBB17_234:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x11]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x11, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x11, x11, #8
	fmov	d7, d17
	subs	x8, x8, #1
	b.ne	LBB17_234
LBB17_235:
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #2592
	ldr	x11, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x8, x11]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q1, [x8, x10]
	stp	q0, q1, [x14, #512]
	ldp	q0, q1, [x19, #848]
	str	q0, [sp, #35072]
	str	q1, [sp, #35088]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #0
	b.le	LBB17_241
; %bb.236:
	ldr	d0, [x19, #752]
	ldr	d1, [x19, #808]
	ldr	d2, [x19, #816]
	ldr	d5, [x19, #824]
	ldr	d3, [x19, #832]
	ldr	d4, [x19, #840]
	fneg	d5, d5
	add	x10, sp, #2624
	ldr	d7, [x10, #32760]
	add	x10, sp, #2328
	ldr	d6, [x10, #32760]
	add	x10, sp, #2336
	ldr	d16, [x10, #32760]
	ldr	x10, [sp, #408]                 ; 8-byte Folded Reload
LBB17_237:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x22]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x22, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x22, x22, #8
	fmov	d7, d17
	subs	x8, x8, #1
	b.ne	LBB17_237
; %bb.238:
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #2304
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x8, x10]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q1, [x8, x10]
	stp	q0, q1, [x19, #848]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #0
	b.le	LBB17_242
; %bb.239:
	ldr	d0, [x19, #824]
	ldr	d1, [x19, #880]
	ldr	d2, [x19, #888]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #7
	ldr	x16, [sp, #4904]                ; 8-byte Folded Reload
	ldr	x17, [sp, #4896]                ; 8-byte Folded Reload
	ldr	x1, [sp, #4888]                 ; 8-byte Folded Reload
	ldr	x2, [sp, #4880]                 ; 8-byte Folded Reload
	ldr	x4, [sp, #4872]                 ; 8-byte Folded Reload
	ldr	x21, [sp, #4864]                ; 8-byte Folded Reload
	ldr	x22, [sp, #4856]                ; 8-byte Folded Reload
	b.hi	LBB17_243
; %bb.240:
	mov	x8, #0                          ; =0x0
	b	LBB17_246
LBB17_241:
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #2304
	ldr	q0, [x8, x11]
	ldr	q1, [x8, x10]
	stp	q0, q1, [x19, #848]
LBB17_242:
	add	x8, x19, #1224
	ldp	q0, q1, [x8]
	str	q0, [sp, #33376]
	str	q1, [sp, #33392]
	ldr	x16, [sp, #4904]                ; 8-byte Folded Reload
	ldr	x17, [sp, #4896]                ; 8-byte Folded Reload
	ldr	x1, [sp, #4888]                 ; 8-byte Folded Reload
	ldr	x2, [sp, #4880]                 ; 8-byte Folded Reload
	ldr	x4, [sp, #4872]                 ; 8-byte Folded Reload
	ldr	x21, [sp, #4864]                ; 8-byte Folded Reload
	ldr	x22, [sp, #4856]                ; 8-byte Folded Reload
	b	LBB17_250
LBB17_243:
	dup.2d	v3, v1[0]
	and	x8, x8, #0x7ffffff8
	add	x10, sp, #8, lsl #12            ; =32768
	add	x10, x10, #2048
	add	x10, x10, #32
	add	x11, sp, #8, lsl #12            ; =32768
	add	x11, x11, #2304
	add	x11, x11, #40
	mov	x12, x8
LBB17_244:                              ; =>This Inner Loop Header: Depth=1
	ldur	q4, [x11, #-8]
	ldur	q5, [x11, #8]
	ldur	q6, [x11, #24]
	ldur	q7, [x11, #40]
	ldp	q16, q17, [x11, #-16]
	ldp	q18, q19, [x11, #16]
	fmul.2d	v16, v16, v2[0]
	fmul.2d	v17, v17, v2[0]
	fmul.2d	v18, v18, v2[0]
	fmul.2d	v19, v19, v2[0]
	fmla.2d	v16, v4, v3
	fmla.2d	v17, v5, v3
	fmla.2d	v18, v6, v3
	fmla.2d	v19, v7, v3
	ldur	q7, [x11, #-24]
	fmla.2d	v16, v7, v3
	fmla.2d	v17, v4, v3
	fmla.2d	v18, v5, v3
	fmla.2d	v19, v6, v3
	fmul.2d	v4, v16, v0[0]
	fmul.2d	v5, v17, v0[0]
	fmul.2d	v6, v18, v0[0]
	stp	q4, q5, [x10, #-32]
	fmul.2d	v4, v19, v0[0]
	stp	q6, q4, [x10], #64
	add	x11, x11, #64
	subs	x12, x12, #8
	b.ne	LBB17_244
; %bb.245:
	ldr	x10, [sp, #4800]                ; 8-byte Folded Reload
	cmp	x8, x10
	b.eq	LBB17_248
LBB17_246:
	lsl	x11, x8, #3
	add	x10, sp, #8, lsl #12            ; =32768
	add	x10, x10, #2048
	add	x10, x10, x11
	ldr	x12, [sp, #4800]                ; 8-byte Folded Reload
	sub	x8, x12, x8
	add	x12, sp, #8, lsl #12            ; =32768
	add	x12, x12, #2304
	add	x11, x11, x12
	add	x11, x11, #32
LBB17_247:                              ; =>This Inner Loop Header: Depth=1
	ldp	d4, d3, [x11, #-8]
	ldur	d5, [x11, #-16]
	fmul	d4, d2, d4
	fmadd	d3, d1, d3, d4
	fmadd	d3, d1, d5, d3
	fmul	d3, d0, d3
	str	d3, [x10], #8
	add	x11, x11, #8
	subs	x8, x8, #1
	b.ne	LBB17_247
LBB17_248:
	add	x8, x19, #1224
	ldp	q1, q0, [x8]
	str	q0, [sp, #33392]
	str	q1, [sp, #33376]
	ldr	d2, [x19, #1200]
	ldr	d0, [x19, #1208]
	ldr	d1, [x19, #1216]
	fneg	d2, d2
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #2048
	add	x10, sp, #640
	ldr	d3, [x10, #32760]
	ldr	x10, [sp, #4800]                ; 8-byte Folded Reload
	ldr	x11, [sp, #688]                 ; 8-byte Folded Reload
	ldr	x12, [sp, #928]                 ; 8-byte Folded Reload
LBB17_249:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x8], #8
	ldur	d5, [x11, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x11], #8
	subs	x10, x10, #1
	b.ne	LBB17_249
LBB17_250:
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #608
	ldr	x10, [sp, #4776]                ; 8-byte Folded Reload
	ldr	d0, [x8, x10, lsl #3]
	str	d0, [x19, #1224]
	ldr	x10, [sp, #4984]                ; 8-byte Folded Reload
	ldr	q0, [x8, x10]
	str	q0, [x19, #1232]
	ldr	x10, [sp, #4768]                ; 8-byte Folded Reload
	ldr	d0, [x8, x10, lsl #3]
	str	d0, [x19, #1248]
	ldr	q0, [x14, #1040]
	ldr	q1, [x14, #1056]
	str	q0, [sp, #33088]
	str	q1, [sp, #33104]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #0
	ldr	x11, [sp, #688]                 ; 8-byte Folded Reload
	b.le	LBB17_253
; %bb.251:
	ldr	d0, [x19, #1200]
	ldr	d1, [x19, #1264]
	ldr	d2, [x19, #1272]
	ldr	d5, [x19, #1280]
	ldr	d3, [x19, #1288]
	ldr	d4, [x19, #1296]
	fneg	d5, d5
	add	x8, sp, #640
	ldr	d7, [x8, #32760]
	add	x8, sp, #344
	ldr	d6, [x8, #32760]
	add	x8, sp, #352
	ldr	d16, [x8, #32760]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	mov	x10, x28
LBB17_252:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x11]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x11, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x11, x11, #8
	fmov	d7, d17
	subs	x8, x8, #1
	b.ne	LBB17_252
LBB17_253:
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #320
	ldr	x11, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x8, x11]
	str	q0, [x14, #1040]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x8, x10]
	str	q0, [x14, #1056]
	ldr	q0, [x19, #1376]
	ldr	q1, [x19, #1392]
	str	q0, [sp, #32800]
	str	q1, [sp, #32816]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #0
	b.le	LBB17_259
; %bb.254:
	ldr	d0, [x19, #1280]
	ldr	d1, [x19, #1336]
	ldr	d2, [x19, #1344]
	ldr	d5, [x19, #1352]
	ldr	d3, [x19, #1360]
	ldr	d4, [x19, #1368]
	fneg	d5, d5
	add	x10, sp, #352
	ldr	d7, [x10, #32760]
	add	x10, sp, #56
	ldr	d6, [x10, #32760]
	add	x10, sp, #64
	ldr	d16, [x10, #32760]
	ldr	x10, [sp, #416]                 ; 8-byte Folded Reload
LBB17_255:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x28]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x28, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x28, x28, #8
	fmov	d7, d17
	subs	x8, x8, #1
	b.ne	LBB17_255
; %bb.256:
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #32
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x8, x10]
	str	q0, [x19, #1376]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x8, x10]
	str	q0, [x19, #1392]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #0
	b.le	LBB17_260
; %bb.257:
	ldr	d0, [x19, #1352]
	ldr	d1, [x19, #1408]
	ldr	d2, [x19, #1416]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #7
	ldr	x28, [sp, #568]                 ; 8-byte Folded Reload
	b.hi	LBB17_261
; %bb.258:
	mov	x8, #0                          ; =0x0
	b	LBB17_264
LBB17_259:
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #32
	ldr	q0, [x8, x11]
	str	q0, [x19, #1376]
	ldr	q0, [x8, x10]
	str	q0, [x19, #1392]
LBB17_260:
	add	x8, x19, #1752
	ldp	q0, q1, [x8]
	str	q0, [sp, #31104]
	str	q1, [sp, #31120]
	ldr	x28, [sp, #568]                 ; 8-byte Folded Reload
	b	LBB17_268
LBB17_261:
	dup.2d	v3, v1[0]
	and	x8, x8, #0x7ffffff8
	add	x10, sp, #7, lsl #12            ; =28672
	add	x10, x10, #3872
	add	x10, x10, #32
	add	x11, sp, #8, lsl #12            ; =32768
	add	x11, x11, #32
	add	x11, x11, #40
	mov	x12, x8
LBB17_262:                              ; =>This Inner Loop Header: Depth=1
	ldur	q4, [x11, #-8]
	ldur	q5, [x11, #8]
	ldur	q6, [x11, #24]
	ldur	q7, [x11, #40]
	ldp	q16, q17, [x11, #-16]
	ldp	q18, q19, [x11, #16]
	fmul.2d	v16, v16, v2[0]
	fmul.2d	v17, v17, v2[0]
	fmul.2d	v18, v18, v2[0]
	fmul.2d	v19, v19, v2[0]
	fmla.2d	v16, v4, v3
	fmla.2d	v17, v5, v3
	fmla.2d	v18, v6, v3
	fmla.2d	v19, v7, v3
	ldur	q7, [x11, #-24]
	fmla.2d	v16, v7, v3
	fmla.2d	v17, v4, v3
	fmla.2d	v18, v5, v3
	fmla.2d	v19, v6, v3
	fmul.2d	v4, v16, v0[0]
	fmul.2d	v5, v17, v0[0]
	fmul.2d	v6, v18, v0[0]
	stp	q4, q5, [x10, #-32]
	fmul.2d	v4, v19, v0[0]
	stp	q6, q4, [x10], #64
	add	x11, x11, #64
	subs	x12, x12, #8
	b.ne	LBB17_262
; %bb.263:
	ldr	x10, [sp, #4800]                ; 8-byte Folded Reload
	cmp	x8, x10
	b.eq	LBB17_266
LBB17_264:
	lsl	x11, x8, #3
	add	x10, sp, #7, lsl #12            ; =28672
	add	x10, x10, #3872
	add	x10, x10, x11
	ldr	x12, [sp, #4800]                ; 8-byte Folded Reload
	sub	x8, x12, x8
	add	x12, sp, #8, lsl #12            ; =32768
	add	x12, x12, #32
	add	x11, x11, x12
	add	x11, x11, #32
LBB17_265:                              ; =>This Inner Loop Header: Depth=1
	ldp	d4, d3, [x11, #-8]
	ldur	d5, [x11, #-16]
	fmul	d4, d2, d4
	fmadd	d3, d1, d3, d4
	fmadd	d3, d1, d5, d3
	fmul	d3, d0, d3
	str	d3, [x10], #8
	add	x11, x11, #8
	subs	x8, x8, #1
	b.ne	LBB17_265
LBB17_266:
	add	x8, x19, #1752
	ldp	q1, q0, [x8]
	str	q0, [sp, #31120]
	str	q1, [sp, #31104]
	ldr	d2, [x19, #1728]
	ldr	d0, [x19, #1736]
	ldr	d1, [x19, #1744]
	fneg	d2, d2
	add	x8, sp, #7, lsl #12             ; =28672
	add	x8, x8, #3872
	ldr	d3, [sp, #31128]
	ldr	x10, [sp, #4800]                ; 8-byte Folded Reload
	ldr	x11, [sp, #696]                 ; 8-byte Folded Reload
	ldr	x12, [sp, #928]                 ; 8-byte Folded Reload
LBB17_267:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x8], #8
	ldur	d5, [x11, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x11], #8
	subs	x10, x10, #1
	b.ne	LBB17_267
LBB17_268:
	add	x8, sp, #7, lsl #12             ; =28672
	add	x8, x8, #2432
	ldr	x10, [sp, #4776]                ; 8-byte Folded Reload
	ldr	d0, [x8, x10, lsl #3]
	str	d0, [x19, #1752]
	ldr	x10, [sp, #4984]                ; 8-byte Folded Reload
	ldr	q0, [x8, x10]
	str	q0, [x19, #1760]
	ldr	x10, [sp, #4768]                ; 8-byte Folded Reload
	ldr	d0, [x8, x10, lsl #3]
	str	d0, [x19, #1776]
	ldr	q0, [x14, #1568]
	ldr	q1, [x14, #1584]
	str	q0, [sp, #30816]
	str	q1, [sp, #30832]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #0
	ldr	x11, [sp, #696]                 ; 8-byte Folded Reload
	b.le	LBB17_271
; %bb.269:
	ldr	d0, [x19, #1728]
	ldr	d1, [x19, #1792]
	ldr	d2, [x19, #1800]
	ldr	d5, [x19, #1808]
	ldr	d3, [x19, #1816]
	ldr	d4, [x19, #1824]
	fneg	d5, d5
	ldr	d7, [sp, #31128]
	ldr	d6, [sp, #30832]
	ldr	d16, [sp, #30840]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	mov	x10, x25
LBB17_270:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x11]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x11, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x11, x11, #8
	fmov	d7, d17
	subs	x8, x8, #1
	b.ne	LBB17_270
LBB17_271:
	add	x8, sp, #7, lsl #12             ; =28672
	add	x8, x8, #2144
	ldr	x11, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x8, x11]
	str	q0, [x14, #1568]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x8, x10]
	str	q0, [x14, #1584]
	ldr	q0, [x19, #1904]
	ldr	q1, [x19, #1920]
	str	q0, [sp, #30528]
	str	q1, [sp, #30544]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #0
	b.le	LBB17_277
; %bb.272:
	ldr	d0, [x19, #1808]
	ldr	d1, [x19, #1864]
	ldr	d2, [x19, #1872]
	ldr	d5, [x19, #1880]
	ldr	d3, [x19, #1888]
	ldr	d4, [x19, #1896]
	fneg	d5, d5
	ldr	d7, [sp, #30840]
	ldr	d6, [sp, #30544]
	ldr	d16, [sp, #30552]
	ldr	x10, [sp, #424]                 ; 8-byte Folded Reload
LBB17_273:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x25]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x25, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x25, x25, #8
	fmov	d7, d17
	subs	x8, x8, #1
	b.ne	LBB17_273
; %bb.274:
	add	x8, sp, #7, lsl #12             ; =28672
	add	x8, x8, #1856
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x8, x10]
	str	q0, [x19, #1904]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x8, x10]
	str	q0, [x19, #1920]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #0
	b.le	LBB17_278
; %bb.275:
	ldr	d0, [x19, #1880]
	ldr	d1, [x19, #1936]
	ldr	d2, [x19, #1944]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #7
	ldr	x23, [sp, #584]                 ; 8-byte Folded Reload
	ldr	x25, [sp, #576]                 ; 8-byte Folded Reload
	b.hi	LBB17_279
; %bb.276:
	mov	x8, #0                          ; =0x0
	b	LBB17_282
LBB17_277:
	add	x8, sp, #7, lsl #12             ; =28672
	add	x8, x8, #1856
	ldr	q0, [x8, x11]
	str	q0, [x19, #1904]
	ldr	q0, [x8, x10]
	str	q0, [x19, #1920]
LBB17_278:
	add	x8, x19, #2280
	ldp	q0, q1, [x8]
	str	q0, [sp, #28832]
	str	q1, [sp, #28848]
	ldr	x23, [sp, #584]                 ; 8-byte Folded Reload
	ldr	x25, [sp, #576]                 ; 8-byte Folded Reload
	b	LBB17_286
LBB17_279:
	dup.2d	v3, v1[0]
	and	x8, x8, #0x7ffffff8
	add	x10, sp, #7, lsl #12            ; =28672
	add	x10, x10, #1600
	add	x10, x10, #32
	add	x11, sp, #7, lsl #12            ; =28672
	add	x11, x11, #1856
	add	x11, x11, #40
	mov	x12, x8
LBB17_280:                              ; =>This Inner Loop Header: Depth=1
	ldur	q4, [x11, #-8]
	ldur	q5, [x11, #8]
	ldur	q6, [x11, #24]
	ldur	q7, [x11, #40]
	ldp	q16, q17, [x11, #-16]
	ldp	q18, q19, [x11, #16]
	fmul.2d	v16, v16, v2[0]
	fmul.2d	v17, v17, v2[0]
	fmul.2d	v18, v18, v2[0]
	fmul.2d	v19, v19, v2[0]
	fmla.2d	v16, v4, v3
	fmla.2d	v17, v5, v3
	fmla.2d	v18, v6, v3
	fmla.2d	v19, v7, v3
	ldur	q7, [x11, #-24]
	fmla.2d	v16, v7, v3
	fmla.2d	v17, v4, v3
	fmla.2d	v18, v5, v3
	fmla.2d	v19, v6, v3
	fmul.2d	v4, v16, v0[0]
	fmul.2d	v5, v17, v0[0]
	fmul.2d	v6, v18, v0[0]
	stp	q4, q5, [x10, #-32]
	fmul.2d	v4, v19, v0[0]
	stp	q6, q4, [x10], #64
	add	x11, x11, #64
	subs	x12, x12, #8
	b.ne	LBB17_280
; %bb.281:
	ldr	x10, [sp, #4800]                ; 8-byte Folded Reload
	cmp	x8, x10
	b.eq	LBB17_284
LBB17_282:
	lsl	x11, x8, #3
	add	x10, sp, #7, lsl #12            ; =28672
	add	x10, x10, #1600
	add	x10, x10, x11
	ldr	x12, [sp, #4800]                ; 8-byte Folded Reload
	sub	x8, x12, x8
	add	x12, sp, #7, lsl #12            ; =28672
	add	x12, x12, #1856
	add	x11, x11, x12
	add	x11, x11, #32
LBB17_283:                              ; =>This Inner Loop Header: Depth=1
	ldp	d4, d3, [x11, #-8]
	ldur	d5, [x11, #-16]
	fmul	d4, d2, d4
	fmadd	d3, d1, d3, d4
	fmadd	d3, d1, d5, d3
	fmul	d3, d0, d3
	str	d3, [x10], #8
	add	x11, x11, #8
	subs	x8, x8, #1
	b.ne	LBB17_283
LBB17_284:
	add	x8, x19, #2280
	ldp	q1, q0, [x8]
	str	q0, [sp, #28848]
	str	q1, [sp, #28832]
	ldr	d2, [x19, #2256]
	ldr	d0, [x19, #2264]
	ldr	d1, [x19, #2272]
	fneg	d2, d2
	add	x8, sp, #7, lsl #12             ; =28672
	add	x8, x8, #1600
	ldr	d3, [sp, #28856]
	ldr	x10, [sp, #4800]                ; 8-byte Folded Reload
	mov	x11, x30
	ldr	x12, [sp, #928]                 ; 8-byte Folded Reload
LBB17_285:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x8], #8
	ldur	d5, [x11, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x11], #8
	subs	x10, x10, #1
	b.ne	LBB17_285
LBB17_286:
	add	x8, sp, #7, lsl #12             ; =28672
	add	x8, x8, #160
	ldr	x10, [sp, #4776]                ; 8-byte Folded Reload
	ldr	d0, [x8, x10, lsl #3]
	str	d0, [x19, #2280]
	ldr	x10, [sp, #4984]                ; 8-byte Folded Reload
	ldr	q0, [x8, x10]
	str	q0, [x19, #2288]
	ldr	x10, [sp, #4768]                ; 8-byte Folded Reload
	ldr	d0, [x8, x10, lsl #3]
	str	d0, [x19, #2304]
	ldr	q0, [x14, #2096]
	ldr	q1, [x14, #2112]
	str	q0, [sp, #28544]
	str	q1, [sp, #28560]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	cmp	w8, #0
	ldr	x11, [sp, #512]                 ; 8-byte Folded Reload
	b.le	LBB17_289
; %bb.287:
	ldr	d0, [x19, #2256]
	ldr	d1, [x19, #2320]
	ldr	d2, [x19, #2328]
	ldr	d5, [x19, #2336]
	ldr	d3, [x19, #2344]
	ldr	d4, [x19, #2352]
	fneg	d5, d5
	ldr	d7, [sp, #28856]
	ldr	d6, [sp, #28560]
	ldr	d16, [sp, #28568]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	mov	x10, x11
LBB17_288:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x30]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x30, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x30, x30, #8
	fmov	d7, d17
	subs	x8, x8, #1
	b.ne	LBB17_288
LBB17_289:
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #3968
	ldr	x14, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x8, x14]
	ldr	x30, [sp, #4784]                ; 8-byte Folded Reload
	str	q0, [x30, #2096]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x8, x10]
	str	q0, [x30, #2112]
	ldr	q0, [x19, #2432]
	ldr	q1, [x19, #2448]
	str	q0, [sp, #28256]
	str	q1, [sp, #28272]
	ldr	x30, [sp, #4800]                ; 8-byte Folded Reload
	cmp	w30, #0
	b.le	LBB17_295
; %bb.290:
	ldr	d0, [x19, #2336]
	ldr	d1, [x19, #2392]
	ldr	d2, [x19, #2400]
	ldr	d5, [x19, #2408]
	ldr	d3, [x19, #2416]
	ldr	d4, [x19, #2424]
	fneg	d5, d5
	ldr	d7, [sp, #28568]
	ldr	d6, [sp, #28272]
	ldr	d16, [sp, #28280]
	mov	x8, x30
	ldr	x10, [sp, #432]                 ; 8-byte Folded Reload
LBB17_291:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x11]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x11, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x11, x11, #8
	fmov	d7, d17
	subs	x8, x8, #1
	b.ne	LBB17_291
; %bb.292:
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #3680
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x8, x10]
	str	q0, [x19, #2432]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x8, x10]
	str	q0, [x19, #2448]
	cmp	w30, #0
	ldr	x14, [sp, #4784]                ; 8-byte Folded Reload
	b.le	LBB17_296
; %bb.293:
	ldr	d0, [x19, #2408]
	ldr	d1, [x19, #2464]
	ldr	d2, [x19, #2472]
	cmp	w30, #7
	b.hi	LBB17_297
; %bb.294:
	mov	x8, #0                          ; =0x0
	b	LBB17_300
LBB17_295:
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #3680
	ldr	q0, [x8, x14]
	str	q0, [x19, #2432]
	ldr	q0, [x8, x10]
	str	q0, [x19, #2448]
	ldr	x14, [sp, #4784]                ; 8-byte Folded Reload
LBB17_296:
	add	x8, x19, #2808
	ldp	q0, q1, [x8]
	str	q0, [sp, #26560]
	str	q1, [sp, #26576]
	b	LBB17_304
LBB17_297:
	dup.2d	v3, v1[0]
	and	x8, x30, #0x7ffffff8
	add	x10, sp, #6, lsl #12            ; =24576
	add	x10, x10, #3424
	add	x10, x10, #32
	add	x11, sp, #6, lsl #12            ; =24576
	add	x11, x11, #3680
	add	x11, x11, #40
	mov	x12, x8
LBB17_298:                              ; =>This Inner Loop Header: Depth=1
	ldur	q4, [x11, #-8]
	ldur	q5, [x11, #8]
	ldur	q6, [x11, #24]
	ldur	q7, [x11, #40]
	ldp	q16, q17, [x11, #-16]
	ldp	q18, q19, [x11, #16]
	fmul.2d	v16, v16, v2[0]
	fmul.2d	v17, v17, v2[0]
	fmul.2d	v18, v18, v2[0]
	fmul.2d	v19, v19, v2[0]
	fmla.2d	v16, v4, v3
	fmla.2d	v17, v5, v3
	fmla.2d	v18, v6, v3
	fmla.2d	v19, v7, v3
	ldur	q7, [x11, #-24]
	fmla.2d	v16, v7, v3
	fmla.2d	v17, v4, v3
	fmla.2d	v18, v5, v3
	fmla.2d	v19, v6, v3
	fmul.2d	v4, v16, v0[0]
	fmul.2d	v5, v17, v0[0]
	fmul.2d	v6, v18, v0[0]
	stp	q4, q5, [x10, #-32]
	fmul.2d	v4, v19, v0[0]
	stp	q6, q4, [x10], #64
	add	x11, x11, #64
	subs	x12, x12, #8
	b.ne	LBB17_298
; %bb.299:
	cmp	x8, x30
	b.eq	LBB17_302
LBB17_300:
	lsl	x11, x8, #3
	add	x10, sp, #6, lsl #12            ; =24576
	add	x10, x10, #3424
	add	x10, x10, x11
	sub	x8, x30, x8
	add	x12, sp, #6, lsl #12            ; =24576
	add	x12, x12, #3680
	add	x11, x11, x12
	add	x11, x11, #32
LBB17_301:                              ; =>This Inner Loop Header: Depth=1
	ldp	d4, d3, [x11, #-8]
	ldur	d5, [x11, #-16]
	fmul	d4, d2, d4
	fmadd	d3, d1, d3, d4
	fmadd	d3, d1, d5, d3
	fmul	d3, d0, d3
	str	d3, [x10], #8
	add	x11, x11, #8
	subs	x8, x8, #1
	b.ne	LBB17_301
LBB17_302:
	add	x8, x19, #2808
	ldp	q1, q0, [x8]
	str	q0, [sp, #26576]
	str	q1, [sp, #26560]
	ldr	d2, [x19, #2784]
	ldr	d0, [x19, #2792]
	ldr	d1, [x19, #2800]
	fneg	d2, d2
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #3424
	ldr	d3, [sp, #26584]
	mov	x10, x30
	ldr	x11, [sp, #704]                 ; 8-byte Folded Reload
	ldr	x12, [sp, #928]                 ; 8-byte Folded Reload
LBB17_303:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x8], #8
	ldur	d5, [x11, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x11], #8
	subs	x10, x10, #1
	b.ne	LBB17_303
LBB17_304:
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #1984
	ldr	x10, [sp, #4776]                ; 8-byte Folded Reload
	ldr	d0, [x8, x10, lsl #3]
	str	d0, [x19, #2808]
	ldr	x10, [sp, #4984]                ; 8-byte Folded Reload
	ldr	q0, [x8, x10]
	str	q0, [x19, #2816]
	ldr	x10, [sp, #4768]                ; 8-byte Folded Reload
	ldr	d0, [x8, x10, lsl #3]
	str	d0, [x19, #2832]
	ldr	q0, [x14, #2624]
	ldr	q1, [x14, #2640]
	str	q0, [sp, #26272]
	str	q1, [sp, #26288]
	cmp	w30, #0
	ldr	x11, [sp, #520]                 ; 8-byte Folded Reload
	ldr	x30, [sp, #704]                 ; 8-byte Folded Reload
	b.le	LBB17_307
; %bb.305:
	ldr	d0, [x19, #2784]
	ldr	d1, [x19, #2848]
	ldr	d2, [x19, #2856]
	ldr	d5, [x19, #2864]
	ldr	d3, [x19, #2872]
	ldr	d4, [x19, #2880]
	fneg	d5, d5
	ldr	d7, [sp, #26584]
	ldr	d6, [sp, #26288]
	ldr	d16, [sp, #26296]
	ldr	x8, [sp, #4800]                 ; 8-byte Folded Reload
	mov	x10, x11
LBB17_306:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x30]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x30, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x30, x30, #8
	fmov	d7, d17
	subs	x8, x8, #1
	b.ne	LBB17_306
LBB17_307:
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #1696
	ldr	x14, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x8, x14]
	ldr	x30, [sp, #4784]                ; 8-byte Folded Reload
	str	q0, [x30, #2624]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x8, x10]
	str	q0, [x30, #2640]
	ldr	q0, [x19, #2960]
	ldr	q1, [x19, #2976]
	str	q0, [sp, #25984]
	str	q1, [sp, #26000]
	ldr	x30, [sp, #4800]                ; 8-byte Folded Reload
	cmp	w30, #0
	b.le	LBB17_313
; %bb.308:
	ldr	d0, [x19, #2864]
	ldr	d1, [x19, #2920]
	ldr	d2, [x19, #2928]
	ldr	d5, [x19, #2936]
	ldr	d3, [x19, #2944]
	ldr	d4, [x19, #2952]
	fneg	d5, d5
	ldr	d7, [sp, #26296]
	ldr	d6, [sp, #26000]
	ldr	d16, [sp, #26008]
	mov	x8, x30
	ldr	x10, [sp, #440]                 ; 8-byte Folded Reload
LBB17_309:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x11]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x11, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x11, x11, #8
	fmov	d7, d17
	subs	x8, x8, #1
	b.ne	LBB17_309
; %bb.310:
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #1408
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x8, x10]
	str	q0, [x19, #2960]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x8, x10]
	str	q0, [x19, #2976]
	cmp	w30, #0
	ldr	x14, [sp, #4784]                ; 8-byte Folded Reload
	b.le	LBB17_314
; %bb.311:
	ldr	d0, [x19, #2936]
	ldr	d1, [x19, #2992]
	ldr	d2, [x19, #3000]
	cmp	w30, #7
	b.hi	LBB17_315
; %bb.312:
	mov	x8, #0                          ; =0x0
	b	LBB17_318
LBB17_313:
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #1408
	ldr	q0, [x8, x14]
	str	q0, [x19, #2960]
	ldr	q0, [x8, x10]
	str	q0, [x19, #2976]
	ldr	x14, [sp, #4784]                ; 8-byte Folded Reload
LBB17_314:
	add	x8, x19, #3336
	ldp	q0, q1, [x8]
	str	q0, [sp, #24288]
	str	q1, [sp, #24304]
	b	LBB17_322
LBB17_315:
	dup.2d	v3, v1[0]
	and	x8, x30, #0x7ffffff8
	add	x10, sp, #6, lsl #12            ; =24576
	add	x10, x10, #1152
	add	x10, x10, #32
	add	x11, sp, #6, lsl #12            ; =24576
	add	x11, x11, #1408
	add	x11, x11, #40
	mov	x12, x8
LBB17_316:                              ; =>This Inner Loop Header: Depth=1
	ldur	q4, [x11, #-8]
	ldur	q5, [x11, #8]
	ldur	q6, [x11, #24]
	ldur	q7, [x11, #40]
	ldp	q16, q17, [x11, #-16]
	ldp	q18, q19, [x11, #16]
	fmul.2d	v16, v16, v2[0]
	fmul.2d	v17, v17, v2[0]
	fmul.2d	v18, v18, v2[0]
	fmul.2d	v19, v19, v2[0]
	fmla.2d	v16, v4, v3
	fmla.2d	v17, v5, v3
	fmla.2d	v18, v6, v3
	fmla.2d	v19, v7, v3
	ldur	q7, [x11, #-24]
	fmla.2d	v16, v7, v3
	fmla.2d	v17, v4, v3
	fmla.2d	v18, v5, v3
	fmla.2d	v19, v6, v3
	fmul.2d	v4, v16, v0[0]
	fmul.2d	v5, v17, v0[0]
	fmul.2d	v6, v18, v0[0]
	stp	q4, q5, [x10, #-32]
	fmul.2d	v4, v19, v0[0]
	stp	q6, q4, [x10], #64
	add	x11, x11, #64
	subs	x12, x12, #8
	b.ne	LBB17_316
; %bb.317:
	cmp	x8, x30
	b.eq	LBB17_320
LBB17_318:
	lsl	x11, x8, #3
	add	x10, sp, #6, lsl #12            ; =24576
	add	x10, x10, #1152
	add	x10, x10, x11
	sub	x8, x30, x8
	add	x12, sp, #6, lsl #12            ; =24576
	add	x12, x12, #1408
	add	x11, x11, x12
	add	x11, x11, #32
LBB17_319:                              ; =>This Inner Loop Header: Depth=1
	ldp	d4, d3, [x11, #-8]
	ldur	d5, [x11, #-16]
	fmul	d4, d2, d4
	fmadd	d3, d1, d3, d4
	fmadd	d3, d1, d5, d3
	fmul	d3, d0, d3
	str	d3, [x10], #8
	add	x11, x11, #8
	subs	x8, x8, #1
	b.ne	LBB17_319
LBB17_320:
	add	x8, x19, #3336
	ldp	q1, q0, [x8]
	str	q0, [sp, #24304]
	str	q1, [sp, #24288]
	ldr	d2, [x19, #3312]
	ldr	d0, [x19, #3320]
	ldr	d1, [x19, #3328]
	fneg	d2, d2
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #1152
	ldr	d3, [sp, #24312]
	mov	x10, x30
	ldr	x12, [sp, #928]                 ; 8-byte Folded Reload
	mov	x11, x12
LBB17_321:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x8], #8
	ldur	d5, [x11, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x11], #8
	subs	x10, x10, #1
	b.ne	LBB17_321
LBB17_322:
	mov	w8, #4472                       ; =0x1178
	add	x10, sp, #5, lsl #12            ; =20480
	add	x10, x10, #3808
	ldr	x11, [sp, #4776]                ; 8-byte Folded Reload
	ldr	d0, [x10, x11, lsl #3]
	str	d0, [x19, #3336]
	ldr	x11, [sp, #4984]                ; 8-byte Folded Reload
	ldr	q0, [x10, x11]
	str	q0, [x19, #3344]
	ldr	x11, [sp, #4768]                ; 8-byte Folded Reload
	ldr	d0, [x10, x11, lsl #3]
	str	d0, [x19, #3360]
	ldr	q0, [x14, #3152]
	ldr	q1, [x14, #3168]
	str	q0, [sp, #24000]
	str	q1, [sp, #24016]
	cmp	w30, #0
	b.le	LBB17_325
; %bb.323:
	ldr	d0, [x19, #3312]
	ldr	d1, [x19, #3376]
	ldr	d2, [x19, #3384]
	ldr	d5, [x19, #3392]
	ldr	d3, [x19, #3400]
	ldr	d4, [x19, #3408]
	fneg	d5, d5
	ldr	d7, [sp, #24312]
	ldr	d6, [sp, #24016]
	ldr	d16, [sp, #24024]
	mov	x10, x30
	ldr	x11, [sp, #656]                 ; 8-byte Folded Reload
LBB17_324:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x12]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x12, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x11], #8
	add	x12, x12, #8
	fmov	d7, d17
	subs	x10, x10, #1
	b.ne	LBB17_324
LBB17_325:
	add	x10, sp, #5, lsl #12            ; =20480
	add	x10, x10, #3520
	ldr	x12, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x10, x12]
	str	q0, [x14, #3152]
	ldr	x11, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x10, x11]
	str	q0, [x14, #3168]
	ldr	q0, [x19, #3488]
	ldr	q1, [x19, #3504]
	str	q0, [sp, #23712]
	str	q1, [sp, #23728]
	cmp	w30, #0
	b.le	LBB17_331
; %bb.326:
	ldr	d0, [x19, #3392]
	ldr	d1, [x19, #3448]
	ldr	d2, [x19, #3456]
	ldr	d5, [x19, #3464]
	ldr	d3, [x19, #3472]
	ldr	d4, [x19, #3480]
	fneg	d5, d5
	ldr	d7, [sp, #24024]
	ldr	d6, [sp, #23728]
	ldr	d16, [sp, #23736]
	mov	x10, x30
	ldr	x30, [sp, #656]                 ; 8-byte Folded Reload
	ldr	x11, [sp, #448]                 ; 8-byte Folded Reload
LBB17_327:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x30]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x30, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x11], #8
	add	x30, x30, #8
	fmov	d7, d17
	subs	x10, x10, #1
	b.ne	LBB17_327
; %bb.328:
	add	x10, sp, #5, lsl #12            ; =20480
	add	x10, x10, #3232
	ldr	x11, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x10, x11]
	str	q0, [x19, #3488]
	ldr	x11, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x10, x11]
	str	q0, [x19, #3504]
	ldr	x30, [sp, #4800]                ; 8-byte Folded Reload
	cmp	w30, #0
	b.le	LBB17_332
; %bb.329:
	ldr	d0, [x19, #3464]
	ldr	d1, [x19, #3520]
	ldr	d2, [x19, #3528]
	cmp	w30, #7
	b.hi	LBB17_333
; %bb.330:
	mov	x10, #0                         ; =0x0
	b	LBB17_336
LBB17_331:
	add	x10, sp, #5, lsl #12            ; =20480
	add	x10, x10, #3232
	ldr	q0, [x10, x12]
	str	q0, [x19, #3488]
	ldr	q0, [x10, x11]
	str	q0, [x19, #3504]
LBB17_332:
	add	x10, x19, #3864
	ldp	q0, q1, [x10]
	str	q0, [sp, #22016]
	str	q1, [sp, #22032]
	b	LBB17_340
LBB17_333:
	dup.2d	v3, v1[0]
	and	x10, x30, #0x7ffffff8
	add	x11, sp, #5, lsl #12            ; =20480
	add	x11, x11, #2976
	add	x11, x11, #32
	add	x12, sp, #5, lsl #12            ; =20480
	add	x12, x12, #3232
	add	x12, x12, #40
	mov	x13, x10
LBB17_334:                              ; =>This Inner Loop Header: Depth=1
	ldur	q4, [x12, #-8]
	ldur	q5, [x12, #8]
	ldur	q6, [x12, #24]
	ldur	q7, [x12, #40]
	ldp	q16, q17, [x12, #-16]
	ldp	q18, q19, [x12, #16]
	fmul.2d	v16, v16, v2[0]
	fmul.2d	v17, v17, v2[0]
	fmul.2d	v18, v18, v2[0]
	fmul.2d	v19, v19, v2[0]
	fmla.2d	v16, v4, v3
	fmla.2d	v17, v5, v3
	fmla.2d	v18, v6, v3
	fmla.2d	v19, v7, v3
	ldur	q7, [x12, #-24]
	fmla.2d	v16, v7, v3
	fmla.2d	v17, v4, v3
	fmla.2d	v18, v5, v3
	fmla.2d	v19, v6, v3
	fmul.2d	v4, v16, v0[0]
	fmul.2d	v5, v17, v0[0]
	fmul.2d	v6, v18, v0[0]
	stp	q4, q5, [x11, #-32]
	fmul.2d	v4, v19, v0[0]
	stp	q6, q4, [x11], #64
	add	x12, x12, #64
	subs	x13, x13, #8
	b.ne	LBB17_334
; %bb.335:
	cmp	x10, x30
	b.eq	LBB17_338
LBB17_336:
	lsl	x12, x10, #3
	add	x11, sp, #5, lsl #12            ; =20480
	add	x11, x11, #2976
	add	x11, x11, x12
	sub	x10, x30, x10
	add	x13, sp, #5, lsl #12            ; =20480
	add	x13, x13, #3232
	add	x12, x12, x13
	add	x12, x12, #32
LBB17_337:                              ; =>This Inner Loop Header: Depth=1
	ldp	d4, d3, [x12, #-8]
	ldur	d5, [x12, #-16]
	fmul	d4, d2, d4
	fmadd	d3, d1, d3, d4
	fmadd	d3, d1, d5, d3
	fmul	d3, d0, d3
	str	d3, [x11], #8
	add	x12, x12, #8
	subs	x10, x10, #1
	b.ne	LBB17_337
LBB17_338:
	add	x10, x19, #3864
	ldp	q1, q0, [x10]
	str	q0, [sp, #22032]
	str	q1, [sp, #22016]
	ldr	d2, [x19, #3840]
	ldr	d0, [x19, #3848]
	ldr	d1, [x19, #3856]
	fneg	d2, d2
	add	x10, sp, #5, lsl #12            ; =20480
	add	x10, x10, #2976
	ldr	d3, [sp, #22040]
	mov	x11, x30
	ldr	x12, [sp, #712]                 ; 8-byte Folded Reload
	ldr	x13, [sp, #944]                 ; 8-byte Folded Reload
LBB17_339:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x10], #8
	ldur	d5, [x12, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x12], #8
	subs	x11, x11, #1
	b.ne	LBB17_339
LBB17_340:
	add	x8, x19, x8
	add	x10, sp, #5, lsl #12            ; =20480
	add	x10, x10, #1536
	ldr	x11, [sp, #4776]                ; 8-byte Folded Reload
	ldr	d0, [x10, x11, lsl #3]
	str	d0, [x19, #3864]
	ldr	x11, [sp, #4984]                ; 8-byte Folded Reload
	ldr	q0, [x10, x11]
	str	q0, [x19, #3872]
	ldr	x11, [sp, #4768]                ; 8-byte Folded Reload
	ldr	d0, [x10, x11, lsl #3]
	str	d0, [x19, #3888]
	ldr	q0, [x14, #3680]
	ldr	q1, [x14, #3696]
	str	q0, [sp, #21728]
	str	q1, [sp, #21744]
	cmp	w30, #0
	ldr	x12, [sp, #528]                 ; 8-byte Folded Reload
	ldr	x30, [sp, #712]                 ; 8-byte Folded Reload
	b.le	LBB17_343
; %bb.341:
	ldr	d0, [x19, #3840]
	ldr	d1, [x19, #3904]
	ldr	d2, [x19, #3912]
	ldr	d5, [x19, #3920]
	ldr	d3, [x19, #3928]
	ldr	d4, [x19, #3936]
	fneg	d5, d5
	ldr	d7, [sp, #22040]
	ldr	d6, [sp, #21744]
	ldr	d16, [sp, #21752]
	ldr	x10, [sp, #4800]                ; 8-byte Folded Reload
	mov	x11, x12
LBB17_342:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x30]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x30, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x11], #8
	add	x30, x30, #8
	fmov	d7, d17
	subs	x10, x10, #1
	b.ne	LBB17_342
LBB17_343:
	add	x10, sp, #5, lsl #12            ; =20480
	add	x10, x10, #1248
	ldr	x14, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x10, x14]
	ldr	x30, [sp, #4784]                ; 8-byte Folded Reload
	str	q0, [x30, #3680]
	ldr	x11, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x10, x11]
	str	q0, [x30, #3696]
	ldr	q0, [x19, #4016]
	ldr	q1, [x19, #4032]
	str	q0, [sp, #21440]
	str	q1, [sp, #21456]
	ldr	x30, [sp, #4800]                ; 8-byte Folded Reload
	cmp	w30, #0
	b.le	LBB17_349
; %bb.344:
	ldr	d0, [x19, #3920]
	ldr	d1, [x19, #3976]
	ldr	d2, [x19, #3984]
	ldr	d5, [x19, #3992]
	ldr	d3, [x19, #4000]
	ldr	d4, [x19, #4008]
	fneg	d5, d5
	ldr	d7, [sp, #21752]
	ldr	d6, [sp, #21456]
	ldr	d16, [sp, #21464]
	mov	x10, x30
	ldr	x11, [sp, #456]                 ; 8-byte Folded Reload
LBB17_345:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x12]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x12, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x11], #8
	add	x12, x12, #8
	fmov	d7, d17
	subs	x10, x10, #1
	b.ne	LBB17_345
; %bb.346:
	add	x10, sp, #5, lsl #12            ; =20480
	add	x10, x10, #960
	ldr	x11, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x10, x11]
	str	q0, [x19, #4016]
	ldr	x11, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x10, x11]
	str	q0, [x19, #4032]
	cmp	w30, #0
	ldr	x14, [sp, #624]                 ; 8-byte Folded Reload
	b.le	LBB17_350
; %bb.347:
	ldr	d0, [x19, #3992]
	ldr	d1, [x19, #4048]
	ldr	d2, [x19, #4056]
	cmp	w30, #7
	b.hi	LBB17_351
; %bb.348:
	mov	x10, #0                         ; =0x0
	b	LBB17_354
LBB17_349:
	add	x10, sp, #5, lsl #12            ; =20480
	add	x10, x10, #960
	ldr	q0, [x10, x14]
	str	q0, [x19, #4016]
	ldr	q0, [x10, x11]
	str	q0, [x19, #4032]
	ldr	x14, [sp, #624]                 ; 8-byte Folded Reload
LBB17_350:
	mov	w10, #4392                      ; =0x1128
	add	x10, x19, x10
	ldp	q0, q1, [x10]
	str	q0, [sp, #19744]
	str	q1, [sp, #19760]
	b	LBB17_358
LBB17_351:
	dup.2d	v3, v1[0]
	and	x10, x30, #0x7ffffff8
	add	x11, sp, #5, lsl #12            ; =20480
	add	x11, x11, #704
	add	x11, x11, #32
	add	x12, sp, #5, lsl #12            ; =20480
	add	x12, x12, #960
	add	x12, x12, #40
	mov	x13, x10
LBB17_352:                              ; =>This Inner Loop Header: Depth=1
	ldur	q4, [x12, #-8]
	ldur	q5, [x12, #8]
	ldur	q6, [x12, #24]
	ldur	q7, [x12, #40]
	ldp	q16, q17, [x12, #-16]
	ldp	q18, q19, [x12, #16]
	fmul.2d	v16, v16, v2[0]
	fmul.2d	v17, v17, v2[0]
	fmul.2d	v18, v18, v2[0]
	fmul.2d	v19, v19, v2[0]
	fmla.2d	v16, v4, v3
	fmla.2d	v17, v5, v3
	fmla.2d	v18, v6, v3
	fmla.2d	v19, v7, v3
	ldur	q7, [x12, #-24]
	fmla.2d	v16, v7, v3
	fmla.2d	v17, v4, v3
	fmla.2d	v18, v5, v3
	fmla.2d	v19, v6, v3
	fmul.2d	v4, v16, v0[0]
	fmul.2d	v5, v17, v0[0]
	fmul.2d	v6, v18, v0[0]
	stp	q4, q5, [x11, #-32]
	fmul.2d	v4, v19, v0[0]
	stp	q6, q4, [x11], #64
	add	x12, x12, #64
	subs	x13, x13, #8
	b.ne	LBB17_352
; %bb.353:
	cmp	x10, x30
	b.eq	LBB17_356
LBB17_354:
	lsl	x12, x10, #3
	add	x11, sp, #5, lsl #12            ; =20480
	add	x11, x11, #704
	add	x11, x11, x12
	sub	x10, x30, x10
	add	x13, sp, #5, lsl #12            ; =20480
	add	x13, x13, #960
	add	x12, x12, x13
	add	x12, x12, #32
LBB17_355:                              ; =>This Inner Loop Header: Depth=1
	ldp	d4, d3, [x12, #-8]
	ldur	d5, [x12, #-16]
	fmul	d4, d2, d4
	fmadd	d3, d1, d3, d4
	fmadd	d3, d1, d5, d3
	fmul	d3, d0, d3
	str	d3, [x11], #8
	add	x12, x12, #8
	subs	x10, x10, #1
	b.ne	LBB17_355
LBB17_356:
	mov	w10, #4392                      ; =0x1128
	add	x10, x19, x10
	ldp	q1, q0, [x10]
	str	q0, [sp, #19760]
	str	q1, [sp, #19744]
	ldr	d2, [x19, #4368]
	ldr	d0, [x19, #4376]
	ldr	d1, [x19, #4384]
	fneg	d2, d2
	add	x10, sp, #5, lsl #12            ; =20480
	add	x10, x10, #704
	ldr	d3, [sp, #19768]
	mov	x11, x30
	ldr	x12, [sp, #720]                 ; 8-byte Folded Reload
	ldr	x13, [sp, #944]                 ; 8-byte Folded Reload
LBB17_357:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x10], #8
	ldur	d5, [x12, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x12], #8
	subs	x11, x11, #1
	b.ne	LBB17_357
LBB17_358:
	add	x10, sp, #4, lsl #12            ; =16384
	add	x10, x10, #3360
	ldr	x11, [sp, #4776]                ; 8-byte Folded Reload
	ldr	d0, [x10, x11, lsl #3]
	str	d0, [x19, #4392]
	ldr	x11, [sp, #4984]                ; 8-byte Folded Reload
	ldr	q0, [x10, x11]
	str	q0, [x19, #4400]
	ldr	x11, [sp, #4768]                ; 8-byte Folded Reload
	ldr	d0, [x10, x11, lsl #3]
	str	d0, [x19, #4416]
	ldp	q0, q1, [x8]
	str	q0, [sp, #19456]
	str	q1, [sp, #19472]
	cmp	w30, #0
	ldr	x12, [sp, #720]                 ; 8-byte Folded Reload
	b.le	LBB17_361
; %bb.359:
	ldr	d0, [x19, #4368]
	ldr	d1, [x19, #4432]
	ldr	d2, [x19, #4440]
	ldr	d5, [x19, #4448]
	ldr	d3, [x19, #4456]
	ldr	d4, [x19, #4464]
	fneg	d5, d5
	ldr	d7, [sp, #19768]
	ldr	d6, [sp, #19472]
	ldr	d16, [sp, #19480]
	mov	x10, x30
	ldr	x11, [sp, #664]                 ; 8-byte Folded Reload
LBB17_360:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x12]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x12, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x11], #8
	add	x12, x12, #8
	fmov	d7, d17
	subs	x10, x10, #1
	b.ne	LBB17_360
LBB17_361:
	add	x10, sp, #4, lsl #12            ; =16384
	add	x10, x10, #3072
	ldr	x12, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x10, x12]
	ldr	x11, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q1, [x10, x11]
	stp	q0, q1, [x8]
	ldr	q0, [x19, #4544]
	ldr	q1, [x19, #4560]
	str	q0, [sp, #19168]
	str	q1, [sp, #19184]
	cmp	w30, #0
	b.le	LBB17_367
; %bb.362:
	ldr	d0, [x19, #4448]
	ldr	d1, [x19, #4504]
	ldr	d2, [x19, #4512]
	ldr	d5, [x19, #4520]
	ldr	d3, [x19, #4528]
	ldr	d4, [x19, #4536]
	fneg	d5, d5
	ldr	d7, [sp, #19480]
	ldr	d6, [sp, #19184]
	ldr	d16, [sp, #19192]
	mov	x10, x30
	ldr	x11, [sp, #664]                 ; 8-byte Folded Reload
	ldr	x12, [sp, #464]                 ; 8-byte Folded Reload
LBB17_363:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x11]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x11, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x12], #8
	add	x11, x11, #8
	fmov	d7, d17
	subs	x10, x10, #1
	b.ne	LBB17_363
; %bb.364:
	add	x10, sp, #4, lsl #12            ; =16384
	add	x10, x10, #2784
	ldr	x11, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x10, x11]
	str	q0, [x19, #4544]
	ldr	x11, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x10, x11]
	str	q0, [x19, #4560]
	cmp	w30, #0
	b.le	LBB17_368
; %bb.365:
	ldr	d0, [x19, #4520]
	ldr	d1, [x19, #4576]
	ldr	d2, [x19, #4584]
	cmp	w30, #7
	b.hi	LBB17_369
; %bb.366:
	mov	x10, #0                         ; =0x0
	b	LBB17_372
LBB17_367:
	add	x10, sp, #4, lsl #12            ; =16384
	add	x10, x10, #2784
	ldr	q0, [x10, x12]
	str	q0, [x19, #4544]
	ldr	q0, [x10, x11]
	str	q0, [x19, #4560]
LBB17_368:
	mov	w10, #4920                      ; =0x1338
	add	x10, x19, x10
	ldp	q0, q1, [x10]
	str	q0, [sp, #17472]
	str	q1, [sp, #17488]
	b	LBB17_376
LBB17_369:
	dup.2d	v3, v1[0]
	and	x10, x30, #0x7ffffff8
	add	x11, sp, #4, lsl #12            ; =16384
	add	x11, x11, #2528
	add	x11, x11, #32
	add	x12, sp, #4, lsl #12            ; =16384
	add	x12, x12, #2784
	add	x12, x12, #40
	mov	x13, x10
LBB17_370:                              ; =>This Inner Loop Header: Depth=1
	ldur	q4, [x12, #-8]
	ldur	q5, [x12, #8]
	ldur	q6, [x12, #24]
	ldur	q7, [x12, #40]
	ldp	q16, q17, [x12, #-16]
	ldp	q18, q19, [x12, #16]
	fmul.2d	v16, v16, v2[0]
	fmul.2d	v17, v17, v2[0]
	fmul.2d	v18, v18, v2[0]
	fmul.2d	v19, v19, v2[0]
	fmla.2d	v16, v4, v3
	fmla.2d	v17, v5, v3
	fmla.2d	v18, v6, v3
	fmla.2d	v19, v7, v3
	ldur	q7, [x12, #-24]
	fmla.2d	v16, v7, v3
	fmla.2d	v17, v4, v3
	fmla.2d	v18, v5, v3
	fmla.2d	v19, v6, v3
	fmul.2d	v4, v16, v0[0]
	fmul.2d	v5, v17, v0[0]
	fmul.2d	v6, v18, v0[0]
	stp	q4, q5, [x11, #-32]
	fmul.2d	v4, v19, v0[0]
	stp	q6, q4, [x11], #64
	add	x12, x12, #64
	subs	x13, x13, #8
	b.ne	LBB17_370
; %bb.371:
	cmp	x10, x30
	b.eq	LBB17_374
LBB17_372:
	lsl	x12, x10, #3
	add	x11, sp, #4, lsl #12            ; =16384
	add	x11, x11, #2528
	add	x11, x11, x12
	sub	x10, x30, x10
	add	x13, sp, #4, lsl #12            ; =16384
	add	x13, x13, #2784
	add	x12, x12, x13
	add	x12, x12, #32
LBB17_373:                              ; =>This Inner Loop Header: Depth=1
	ldp	d4, d3, [x12, #-8]
	ldur	d5, [x12, #-16]
	fmul	d4, d2, d4
	fmadd	d3, d1, d3, d4
	fmadd	d3, d1, d5, d3
	fmul	d3, d0, d3
	str	d3, [x11], #8
	add	x12, x12, #8
	subs	x10, x10, #1
	b.ne	LBB17_373
LBB17_374:
	mov	w10, #4920                      ; =0x1338
	add	x10, x19, x10
	ldp	q1, q0, [x10]
	str	q0, [sp, #17488]
	str	q1, [sp, #17472]
	ldr	d2, [x19, #4896]
	ldr	d0, [x19, #4904]
	ldr	d1, [x19, #4912]
	fneg	d2, d2
	add	x10, sp, #4, lsl #12            ; =16384
	add	x10, x10, #2528
	ldr	d3, [sp, #17496]
	mov	x11, x30
	ldr	x12, [sp, #728]                 ; 8-byte Folded Reload
	ldr	x13, [sp, #944]                 ; 8-byte Folded Reload
LBB17_375:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x10], #8
	ldur	d5, [x12, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x12], #8
	subs	x11, x11, #1
	b.ne	LBB17_375
LBB17_376:
	add	x10, sp, #4, lsl #12            ; =16384
	add	x10, x10, #1088
	ldr	x11, [sp, #4776]                ; 8-byte Folded Reload
	ldr	d0, [x10, x11, lsl #3]
	str	d0, [x19, #4920]
	ldr	x11, [sp, #4984]                ; 8-byte Folded Reload
	ldr	q0, [x10, x11]
	str	q0, [x19, #4928]
	ldr	x11, [sp, #4768]                ; 8-byte Folded Reload
	ldr	d0, [x10, x11, lsl #3]
	str	d0, [x19, #4944]
	ldp	q0, q1, [x8, #528]
	str	q0, [sp, #17184]
	str	q1, [sp, #17200]
	cmp	w30, #0
	ldr	x12, [sp, #728]                 ; 8-byte Folded Reload
	b.le	LBB17_379
; %bb.377:
	ldr	d0, [x19, #4896]
	ldr	d1, [x19, #4960]
	ldr	d2, [x19, #4968]
	ldr	d5, [x19, #4976]
	ldr	d3, [x19, #4984]
	ldr	d4, [x19, #4992]
	fneg	d5, d5
	ldr	d7, [sp, #17496]
	ldr	d6, [sp, #17200]
	ldr	d16, [sp, #17208]
	mov	x10, x30
	mov	x11, x9
LBB17_378:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x12]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x12, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x11], #8
	add	x12, x12, #8
	fmov	d7, d17
	subs	x10, x10, #1
	b.ne	LBB17_378
LBB17_379:
	add	x10, sp, #4, lsl #12            ; =16384
	add	x10, x10, #800
	ldr	x12, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x10, x12]
	ldr	x11, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q1, [x10, x11]
	stp	q0, q1, [x8, #528]
	ldr	q0, [x19, #5072]
	ldr	q1, [x19, #5088]
	str	q0, [sp, #16896]
	str	q1, [sp, #16912]
	cmp	w30, #0
	b.le	LBB17_385
; %bb.380:
	ldr	d0, [x19, #4976]
	ldr	d1, [x19, #5032]
	ldr	d2, [x19, #5040]
	ldr	d5, [x19, #5048]
	ldr	d3, [x19, #5056]
	ldr	d4, [x19, #5064]
	fneg	d5, d5
	ldr	d7, [sp, #17208]
	ldr	d6, [sp, #16912]
	ldr	d16, [sp, #16920]
	mov	x10, x30
	ldr	x11, [sp, #472]                 ; 8-byte Folded Reload
LBB17_381:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x9]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x9, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x11], #8
	add	x9, x9, #8
	fmov	d7, d17
	subs	x10, x10, #1
	b.ne	LBB17_381
; %bb.382:
	add	x10, sp, #4, lsl #12            ; =16384
	add	x10, x10, #512
	ldr	x9, [sp, #4816]                 ; 8-byte Folded Reload
	ldr	q0, [x10, x9]
	str	q0, [x19, #5072]
	ldr	x9, [sp, #4808]                 ; 8-byte Folded Reload
	ldr	q0, [x10, x9]
	str	q0, [x19, #5088]
	cmp	w30, #0
	b.le	LBB17_386
; %bb.383:
	ldr	d0, [x19, #5048]
	ldr	d1, [x19, #5104]
	ldr	d2, [x19, #5112]
	cmp	w30, #7
	b.hi	LBB17_387
; %bb.384:
	mov	x10, #0                         ; =0x0
	b	LBB17_390
LBB17_385:
	add	x10, sp, #4, lsl #12            ; =16384
	add	x10, x10, #512
	ldr	q0, [x10, x12]
	str	q0, [x19, #5072]
	ldr	q0, [x10, x11]
	str	q0, [x19, #5088]
LBB17_386:
	mov	w10, #5448                      ; =0x1548
	add	x10, x19, x10
	ldp	q0, q1, [x10]
	str	q0, [sp, #15200]
	str	q1, [sp, #15216]
	b	LBB17_394
LBB17_387:
	dup.2d	v3, v1[0]
	and	x10, x30, #0x7ffffff8
	add	x11, sp, #4, lsl #12            ; =16384
	add	x11, x11, #256
	add	x11, x11, #32
	add	x12, sp, #4, lsl #12            ; =16384
	add	x12, x12, #512
	add	x12, x12, #40
	mov	x13, x10
LBB17_388:                              ; =>This Inner Loop Header: Depth=1
	ldur	q4, [x12, #-8]
	ldur	q5, [x12, #8]
	ldur	q6, [x12, #24]
	ldur	q7, [x12, #40]
	ldp	q16, q17, [x12, #-16]
	ldp	q18, q19, [x12, #16]
	fmul.2d	v16, v16, v2[0]
	fmul.2d	v17, v17, v2[0]
	fmul.2d	v18, v18, v2[0]
	fmul.2d	v19, v19, v2[0]
	fmla.2d	v16, v4, v3
	fmla.2d	v17, v5, v3
	fmla.2d	v18, v6, v3
	fmla.2d	v19, v7, v3
	ldur	q7, [x12, #-24]
	fmla.2d	v16, v7, v3
	fmla.2d	v17, v4, v3
	fmla.2d	v18, v5, v3
	fmla.2d	v19, v6, v3
	fmul.2d	v4, v16, v0[0]
	fmul.2d	v5, v17, v0[0]
	fmul.2d	v6, v18, v0[0]
	stp	q4, q5, [x11, #-32]
	fmul.2d	v4, v19, v0[0]
	stp	q6, q4, [x11], #64
	add	x12, x12, #64
	subs	x13, x13, #8
	b.ne	LBB17_388
; %bb.389:
	cmp	x10, x30
	b.eq	LBB17_392
LBB17_390:
	lsl	x12, x10, #3
	add	x11, sp, #4, lsl #12            ; =16384
	add	x11, x11, #256
	add	x11, x11, x12
	sub	x10, x30, x10
	add	x13, sp, #4, lsl #12            ; =16384
	add	x13, x13, #512
	add	x12, x12, x13
	add	x12, x12, #32
LBB17_391:                              ; =>This Inner Loop Header: Depth=1
	ldp	d4, d3, [x12, #-8]
	ldur	d5, [x12, #-16]
	fmul	d4, d2, d4
	fmadd	d3, d1, d3, d4
	fmadd	d3, d1, d5, d3
	fmul	d3, d0, d3
	str	d3, [x11], #8
	add	x12, x12, #8
	subs	x10, x10, #1
	b.ne	LBB17_391
LBB17_392:
	mov	w10, #5448                      ; =0x1548
	add	x10, x19, x10
	ldp	q1, q0, [x10]
	str	q0, [sp, #15216]
	str	q1, [sp, #15200]
	ldr	d2, [x19, #5424]
	ldr	d0, [x19, #5432]
	ldr	d1, [x19, #5440]
	fneg	d2, d2
	add	x10, sp, #4, lsl #12            ; =16384
	add	x10, x10, #256
	ldr	d3, [sp, #15224]
	mov	x11, x30
	ldr	x12, [sp, #736]                 ; 8-byte Folded Reload
	ldr	x13, [sp, #944]                 ; 8-byte Folded Reload
LBB17_393:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x10], #8
	ldur	d5, [x12, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x12], #8
	subs	x11, x11, #1
	b.ne	LBB17_393
LBB17_394:
	add	x10, sp, #3, lsl #12            ; =12288
	add	x10, x10, #2912
	ldr	x9, [sp, #4776]                 ; 8-byte Folded Reload
	ldr	d0, [x10, x9, lsl #3]
	str	d0, [x19, #5448]
	ldr	x9, [sp, #4984]                 ; 8-byte Folded Reload
	ldr	q0, [x10, x9]
	str	q0, [x19, #5456]
	ldr	x9, [sp, #4768]                 ; 8-byte Folded Reload
	ldr	d0, [x10, x9, lsl #3]
	str	d0, [x19, #5472]
	ldr	q0, [x8, #1056]
	ldr	q1, [x8, #1072]
	str	q0, [sp, #14912]
	str	q1, [sp, #14928]
	cmp	w30, #0
	ldr	x12, [sp, #544]                 ; 8-byte Folded Reload
	ldr	x9, [sp, #736]                  ; 8-byte Folded Reload
	b.le	LBB17_397
; %bb.395:
	ldr	d0, [x19, #5424]
	ldr	d1, [x19, #5488]
	ldr	d2, [x19, #5496]
	ldr	d5, [x19, #5504]
	ldr	d3, [x19, #5512]
	ldr	d4, [x19, #5520]
	fneg	d5, d5
	ldr	d7, [sp, #15224]
	ldr	d6, [sp, #14928]
	ldr	d16, [sp, #14936]
	mov	x10, x30
	mov	x11, x12
LBB17_396:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x9]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x9, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x11], #8
	add	x9, x9, #8
	fmov	d7, d17
	subs	x10, x10, #1
	b.ne	LBB17_396
LBB17_397:
	add	x10, sp, #3, lsl #12            ; =12288
	add	x10, x10, #2624
	ldr	x11, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x10, x11]
	str	q0, [x8, #1056]
	ldr	x9, [sp, #4808]                 ; 8-byte Folded Reload
	ldr	q0, [x10, x9]
	str	q0, [x8, #1072]
	ldr	q0, [x19, #5600]
	ldr	q1, [x19, #5616]
	str	q0, [sp, #14624]
	str	q1, [sp, #14640]
	cmp	w30, #0
	b.le	LBB17_403
; %bb.398:
	ldr	d0, [x19, #5504]
	ldr	d1, [x19, #5560]
	ldr	d2, [x19, #5568]
	ldr	d5, [x19, #5576]
	ldr	d3, [x19, #5584]
	ldr	d4, [x19, #5592]
	fneg	d5, d5
	ldr	d7, [sp, #14936]
	ldr	d6, [sp, #14640]
	ldr	d16, [sp, #14648]
	mov	x10, x30
	ldr	x11, [sp, #480]                 ; 8-byte Folded Reload
LBB17_399:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x12]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x12, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x11], #8
	add	x12, x12, #8
	fmov	d7, d17
	subs	x10, x10, #1
	b.ne	LBB17_399
; %bb.400:
	add	x10, sp, #3, lsl #12            ; =12288
	add	x10, x10, #2336
	ldr	x9, [sp, #4816]                 ; 8-byte Folded Reload
	ldr	q0, [x10, x9]
	str	q0, [x19, #5600]
	ldr	x9, [sp, #4808]                 ; 8-byte Folded Reload
	ldr	q0, [x10, x9]
	str	q0, [x19, #5616]
	cmp	w30, #0
	b.le	LBB17_404
; %bb.401:
	ldr	d0, [x19, #5576]
	ldr	d1, [x19, #5632]
	ldr	d2, [x19, #5640]
	cmp	w30, #7
	b.hi	LBB17_405
; %bb.402:
	mov	x10, #0                         ; =0x0
	b	LBB17_408
LBB17_403:
	add	x10, sp, #3, lsl #12            ; =12288
	add	x10, x10, #2336
	ldr	q0, [x10, x11]
	str	q0, [x19, #5600]
	ldr	q0, [x10, x9]
	str	q0, [x19, #5616]
LBB17_404:
	mov	w10, #5976                      ; =0x1758
	add	x10, x19, x10
	ldp	q0, q1, [x10]
	str	q0, [sp, #12928]
	str	q1, [sp, #12944]
	b	LBB17_412
LBB17_405:
	dup.2d	v3, v1[0]
	and	x10, x30, #0x7ffffff8
	add	x11, sp, #3, lsl #12            ; =12288
	add	x11, x11, #2080
	add	x11, x11, #32
	add	x12, sp, #3, lsl #12            ; =12288
	add	x12, x12, #2336
	add	x12, x12, #40
	mov	x13, x10
LBB17_406:                              ; =>This Inner Loop Header: Depth=1
	ldur	q4, [x12, #-8]
	ldur	q5, [x12, #8]
	ldur	q6, [x12, #24]
	ldur	q7, [x12, #40]
	ldp	q16, q17, [x12, #-16]
	ldp	q18, q19, [x12, #16]
	fmul.2d	v16, v16, v2[0]
	fmul.2d	v17, v17, v2[0]
	fmul.2d	v18, v18, v2[0]
	fmul.2d	v19, v19, v2[0]
	fmla.2d	v16, v4, v3
	fmla.2d	v17, v5, v3
	fmla.2d	v18, v6, v3
	fmla.2d	v19, v7, v3
	ldur	q7, [x12, #-24]
	fmla.2d	v16, v7, v3
	fmla.2d	v17, v4, v3
	fmla.2d	v18, v5, v3
	fmla.2d	v19, v6, v3
	fmul.2d	v4, v16, v0[0]
	fmul.2d	v5, v17, v0[0]
	fmul.2d	v6, v18, v0[0]
	stp	q4, q5, [x11, #-32]
	fmul.2d	v4, v19, v0[0]
	stp	q6, q4, [x11], #64
	add	x12, x12, #64
	subs	x13, x13, #8
	b.ne	LBB17_406
; %bb.407:
	cmp	x10, x30
	b.eq	LBB17_410
LBB17_408:
	lsl	x12, x10, #3
	add	x11, sp, #3, lsl #12            ; =12288
	add	x11, x11, #2080
	add	x11, x11, x12
	sub	x10, x30, x10
	add	x13, sp, #3, lsl #12            ; =12288
	add	x13, x13, #2336
	add	x12, x12, x13
	add	x12, x12, #32
LBB17_409:                              ; =>This Inner Loop Header: Depth=1
	ldp	d4, d3, [x12, #-8]
	ldur	d5, [x12, #-16]
	fmul	d4, d2, d4
	fmadd	d3, d1, d3, d4
	fmadd	d3, d1, d5, d3
	fmul	d3, d0, d3
	str	d3, [x11], #8
	add	x12, x12, #8
	subs	x10, x10, #1
	b.ne	LBB17_409
LBB17_410:
	mov	w10, #5976                      ; =0x1758
	add	x10, x19, x10
	ldp	q1, q0, [x10]
	str	q0, [sp, #12944]
	str	q1, [sp, #12928]
	ldr	d2, [x19, #5952]
	ldr	d0, [x19, #5960]
	ldr	d1, [x19, #5968]
	fneg	d2, d2
	add	x10, sp, #3, lsl #12            ; =12288
	add	x10, x10, #2080
	ldr	d3, [sp, #12952]
	mov	x11, x30
	ldr	x12, [sp, #744]                 ; 8-byte Folded Reload
	ldr	x13, [sp, #944]                 ; 8-byte Folded Reload
LBB17_411:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x10], #8
	ldur	d5, [x12, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x12], #8
	subs	x11, x11, #1
	b.ne	LBB17_411
LBB17_412:
	add	x10, sp, #3, lsl #12            ; =12288
	add	x10, x10, #640
	ldr	x9, [sp, #4776]                 ; 8-byte Folded Reload
	ldr	d0, [x10, x9, lsl #3]
	str	d0, [x19, #5976]
	ldr	x9, [sp, #4984]                 ; 8-byte Folded Reload
	ldr	q0, [x10, x9]
	str	q0, [x19, #5984]
	ldr	x9, [sp, #4768]                 ; 8-byte Folded Reload
	ldr	d0, [x10, x9, lsl #3]
	str	d0, [x19, #6000]
	ldr	q0, [x8, #1584]
	ldr	q1, [x8, #1600]
	str	q0, [sp, #12640]
	str	q1, [sp, #12656]
	cmp	w30, #0
	ldr	x12, [sp, #744]                 ; 8-byte Folded Reload
	b.le	LBB17_415
; %bb.413:
	ldr	d0, [x19, #5952]
	ldr	d1, [x19, #6016]
	ldr	d2, [x19, #6024]
	ldr	d5, [x19, #6032]
	ldr	d3, [x19, #6040]
	ldr	d4, [x19, #6048]
	fneg	d5, d5
	ldr	d7, [sp, #12952]
	ldr	d6, [sp, #12656]
	ldr	d16, [sp, #12664]
	mov	x10, x30
	ldr	x11, [sp, #672]                 ; 8-byte Folded Reload
LBB17_414:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x12]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x12, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x11], #8
	add	x12, x12, #8
	fmov	d7, d17
	subs	x10, x10, #1
	b.ne	LBB17_414
LBB17_415:
	add	x10, sp, #3, lsl #12            ; =12288
	add	x10, x10, #352
	ldr	x11, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x10, x11]
	str	q0, [x8, #1584]
	ldr	x9, [sp, #4808]                 ; 8-byte Folded Reload
	ldr	q0, [x10, x9]
	str	q0, [x8, #1600]
	ldr	q0, [x19, #6128]
	ldr	q1, [x19, #6144]
	str	q0, [sp, #12352]
	str	q1, [sp, #12368]
	cmp	w30, #0
	b.le	LBB17_421
; %bb.416:
	ldr	d0, [x19, #6032]
	ldr	d1, [x19, #6088]
	ldr	d2, [x19, #6096]
	ldr	d5, [x19, #6104]
	ldr	d3, [x19, #6112]
	ldr	d4, [x19, #6120]
	fneg	d5, d5
	ldr	d7, [sp, #12664]
	ldr	d6, [sp, #12368]
	ldr	d16, [sp, #12376]
	mov	x10, x30
	ldr	x11, [sp, #672]                 ; 8-byte Folded Reload
	ldr	x12, [sp, #488]                 ; 8-byte Folded Reload
LBB17_417:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x11]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x11, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x12], #8
	add	x11, x11, #8
	fmov	d7, d17
	subs	x10, x10, #1
	b.ne	LBB17_417
; %bb.418:
	add	x10, sp, #3, lsl #12            ; =12288
	add	x10, x10, #64
	ldr	x9, [sp, #4816]                 ; 8-byte Folded Reload
	ldr	q0, [x10, x9]
	str	q0, [x19, #6128]
	ldr	x9, [sp, #4808]                 ; 8-byte Folded Reload
	ldr	q0, [x10, x9]
	str	q0, [x19, #6144]
	cmp	w30, #0
	b.le	LBB17_422
; %bb.419:
	ldr	d0, [x19, #6104]
	ldr	d1, [x19, #6160]
	ldr	d2, [x19, #6168]
	cmp	w30, #7
	b.hi	LBB17_423
; %bb.420:
	mov	x10, #0                         ; =0x0
	b	LBB17_426
LBB17_421:
	add	x10, sp, #3, lsl #12            ; =12288
	add	x10, x10, #64
	ldr	q0, [x10, x11]
	str	q0, [x19, #6128]
	ldr	q0, [x10, x9]
	str	q0, [x19, #6144]
LBB17_422:
	mov	w10, #6504                      ; =0x1968
	add	x10, x19, x10
	ldp	q0, q1, [x10]
	str	q0, [sp, #10656]
	str	q1, [sp, #10672]
	b	LBB17_430
LBB17_423:
	dup.2d	v3, v1[0]
	and	x10, x30, #0x7ffffff8
	add	x11, sp, #2, lsl #12            ; =8192
	add	x11, x11, #3904
	add	x11, x11, #32
	add	x12, sp, #3, lsl #12            ; =12288
	add	x12, x12, #64
	add	x12, x12, #40
	mov	x13, x10
LBB17_424:                              ; =>This Inner Loop Header: Depth=1
	ldur	q4, [x12, #-8]
	ldur	q5, [x12, #8]
	ldur	q6, [x12, #24]
	ldur	q7, [x12, #40]
	ldp	q16, q17, [x12, #-16]
	ldp	q18, q19, [x12, #16]
	fmul.2d	v16, v16, v2[0]
	fmul.2d	v17, v17, v2[0]
	fmul.2d	v18, v18, v2[0]
	fmul.2d	v19, v19, v2[0]
	fmla.2d	v16, v4, v3
	fmla.2d	v17, v5, v3
	fmla.2d	v18, v6, v3
	fmla.2d	v19, v7, v3
	ldur	q7, [x12, #-24]
	fmla.2d	v16, v7, v3
	fmla.2d	v17, v4, v3
	fmla.2d	v18, v5, v3
	fmla.2d	v19, v6, v3
	fmul.2d	v4, v16, v0[0]
	fmul.2d	v5, v17, v0[0]
	fmul.2d	v6, v18, v0[0]
	stp	q4, q5, [x11, #-32]
	fmul.2d	v4, v19, v0[0]
	stp	q6, q4, [x11], #64
	add	x12, x12, #64
	subs	x13, x13, #8
	b.ne	LBB17_424
; %bb.425:
	cmp	x10, x30
	b.eq	LBB17_428
LBB17_426:
	lsl	x12, x10, #3
	add	x11, sp, #2, lsl #12            ; =8192
	add	x11, x11, #3904
	add	x11, x11, x12
	sub	x10, x30, x10
	add	x13, sp, #3, lsl #12            ; =12288
	add	x13, x13, #64
	add	x12, x12, x13
	add	x12, x12, #32
LBB17_427:                              ; =>This Inner Loop Header: Depth=1
	ldp	d4, d3, [x12, #-8]
	ldur	d5, [x12, #-16]
	fmul	d4, d2, d4
	fmadd	d3, d1, d3, d4
	fmadd	d3, d1, d5, d3
	fmul	d3, d0, d3
	str	d3, [x11], #8
	add	x12, x12, #8
	subs	x10, x10, #1
	b.ne	LBB17_427
LBB17_428:
	mov	w10, #6504                      ; =0x1968
	add	x10, x19, x10
	ldp	q1, q0, [x10]
	str	q0, [sp, #10672]
	str	q1, [sp, #10656]
	ldr	d2, [x19, #6480]
	ldr	d0, [x19, #6488]
	ldr	d1, [x19, #6496]
	fneg	d2, d2
	add	x10, sp, #2, lsl #12            ; =8192
	add	x10, x10, #3904
	ldr	d3, [sp, #10680]
	mov	x11, x30
	mov	x12, x6
	ldr	x13, [sp, #944]                 ; 8-byte Folded Reload
LBB17_429:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x10], #8
	ldur	d5, [x12, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x12], #8
	subs	x11, x11, #1
	b.ne	LBB17_429
LBB17_430:
	add	x10, sp, #2, lsl #12            ; =8192
	add	x10, x10, #2464
	ldr	x9, [sp, #4776]                 ; 8-byte Folded Reload
	ldr	d0, [x10, x9, lsl #3]
	str	d0, [x19, #6504]
	ldr	x9, [sp, #4984]                 ; 8-byte Folded Reload
	ldr	q0, [x10, x9]
	str	q0, [x19, #6512]
	ldr	x9, [sp, #4768]                 ; 8-byte Folded Reload
	ldr	d0, [x10, x9, lsl #3]
	str	d0, [x19, #6528]
	ldr	q0, [x8, #2112]
	ldr	q1, [x8, #2128]
	str	q0, [sp, #10368]
	str	q1, [sp, #10384]
	cmp	w30, #0
	ldr	x12, [sp, #552]                 ; 8-byte Folded Reload
	b.le	LBB17_433
; %bb.431:
	ldr	d0, [x19, #6480]
	ldr	d1, [x19, #6544]
	ldr	d2, [x19, #6552]
	ldr	d5, [x19, #6560]
	ldr	d3, [x19, #6568]
	ldr	d4, [x19, #6576]
	fneg	d5, d5
	ldr	d7, [sp, #10680]
	ldr	d6, [sp, #10384]
	ldr	d16, [sp, #10392]
	mov	x10, x30
	mov	x11, x12
LBB17_432:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x6]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x6, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x11], #8
	add	x6, x6, #8
	fmov	d7, d17
	subs	x10, x10, #1
	b.ne	LBB17_432
LBB17_433:
	add	x10, sp, #2, lsl #12            ; =8192
	add	x10, x10, #2176
	ldr	x11, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x10, x11]
	str	q0, [x8, #2112]
	ldr	x9, [sp, #4808]                 ; 8-byte Folded Reload
	ldr	q0, [x10, x9]
	str	q0, [x8, #2128]
	ldr	q0, [x19, #6656]
	ldr	q1, [x19, #6672]
	str	q0, [sp, #10080]
	str	q1, [sp, #10096]
	cmp	w30, #0
	b.le	LBB17_439
; %bb.434:
	ldr	d0, [x19, #6560]
	ldr	d1, [x19, #6616]
	ldr	d2, [x19, #6624]
	ldr	d5, [x19, #6632]
	ldr	d3, [x19, #6640]
	ldr	d4, [x19, #6648]
	fneg	d5, d5
	ldr	d7, [sp, #10392]
	ldr	d6, [sp, #10096]
	ldr	d16, [sp, #10104]
	mov	x10, x30
	ldr	x11, [sp, #496]                 ; 8-byte Folded Reload
LBB17_435:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x12]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x12, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x11], #8
	add	x12, x12, #8
	fmov	d7, d17
	subs	x10, x10, #1
	b.ne	LBB17_435
; %bb.436:
	add	x10, sp, #2, lsl #12            ; =8192
	add	x10, x10, #1888
	ldr	x9, [sp, #4816]                 ; 8-byte Folded Reload
	ldr	q0, [x10, x9]
	str	q0, [x19, #6656]
	ldr	x9, [sp, #4808]                 ; 8-byte Folded Reload
	ldr	q0, [x10, x9]
	str	q0, [x19, #6672]
	cmp	w30, #0
	b.le	LBB17_440
; %bb.437:
	ldr	d0, [x19, #6632]
	ldr	d1, [x19, #6688]
	ldr	d2, [x19, #6696]
	cmp	w30, #7
	b.hi	LBB17_441
; %bb.438:
	mov	x10, #0                         ; =0x0
	b	LBB17_444
LBB17_439:
	add	x10, sp, #2, lsl #12            ; =8192
	add	x10, x10, #1888
	ldr	q0, [x10, x11]
	str	q0, [x19, #6656]
	ldr	q0, [x10, x9]
	str	q0, [x19, #6672]
LBB17_440:
	mov	w10, #7032                      ; =0x1b78
	add	x10, x19, x10
	ldp	q0, q1, [x10]
	str	q0, [sp, #8384]
	str	q1, [sp, #8400]
	b	LBB17_448
LBB17_441:
	dup.2d	v3, v1[0]
	and	x10, x30, #0x7ffffff8
	add	x11, sp, #2, lsl #12            ; =8192
	add	x11, x11, #1632
	add	x11, x11, #32
	add	x12, sp, #2, lsl #12            ; =8192
	add	x12, x12, #1888
	add	x12, x12, #40
	mov	x13, x10
LBB17_442:                              ; =>This Inner Loop Header: Depth=1
	ldur	q4, [x12, #-8]
	ldur	q5, [x12, #8]
	ldur	q6, [x12, #24]
	ldur	q7, [x12, #40]
	ldp	q16, q17, [x12, #-16]
	ldp	q18, q19, [x12, #16]
	fmul.2d	v16, v16, v2[0]
	fmul.2d	v17, v17, v2[0]
	fmul.2d	v18, v18, v2[0]
	fmul.2d	v19, v19, v2[0]
	fmla.2d	v16, v4, v3
	fmla.2d	v17, v5, v3
	fmla.2d	v18, v6, v3
	fmla.2d	v19, v7, v3
	ldur	q7, [x12, #-24]
	fmla.2d	v16, v7, v3
	fmla.2d	v17, v4, v3
	fmla.2d	v18, v5, v3
	fmla.2d	v19, v6, v3
	fmul.2d	v4, v16, v0[0]
	fmul.2d	v5, v17, v0[0]
	fmul.2d	v6, v18, v0[0]
	stp	q4, q5, [x11, #-32]
	fmul.2d	v4, v19, v0[0]
	stp	q6, q4, [x11], #64
	add	x12, x12, #64
	subs	x13, x13, #8
	b.ne	LBB17_442
; %bb.443:
	cmp	x10, x30
	b.eq	LBB17_446
LBB17_444:
	lsl	x12, x10, #3
	add	x11, sp, #2, lsl #12            ; =8192
	add	x11, x11, #1632
	add	x11, x11, x12
	sub	x10, x30, x10
	add	x13, sp, #2, lsl #12            ; =8192
	add	x13, x13, #1888
	add	x12, x12, x13
	add	x12, x12, #32
LBB17_445:                              ; =>This Inner Loop Header: Depth=1
	ldp	d4, d3, [x12, #-8]
	ldur	d5, [x12, #-16]
	fmul	d4, d2, d4
	fmadd	d3, d1, d3, d4
	fmadd	d3, d1, d5, d3
	fmul	d3, d0, d3
	str	d3, [x11], #8
	add	x12, x12, #8
	subs	x10, x10, #1
	b.ne	LBB17_445
LBB17_446:
	mov	w10, #7032                      ; =0x1b78
	add	x10, x19, x10
	ldp	q1, q0, [x10]
	str	q0, [sp, #8400]
	str	q1, [sp, #8384]
	ldr	d2, [x19, #7008]
	ldr	d0, [x19, #7016]
	ldr	d1, [x19, #7024]
	fneg	d2, d2
	add	x10, sp, #2, lsl #12            ; =8192
	add	x10, x10, #1632
	ldr	d3, [sp, #8408]
	mov	x11, x30
	ldr	x12, [sp, #752]                 ; 8-byte Folded Reload
	ldr	x13, [sp, #944]                 ; 8-byte Folded Reload
LBB17_447:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x10], #8
	ldur	d5, [x12, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x12], #8
	subs	x11, x11, #1
	b.ne	LBB17_447
LBB17_448:
	add	x10, sp, #2, lsl #12            ; =8192
	add	x10, x10, #192
	ldr	x9, [sp, #4776]                 ; 8-byte Folded Reload
	ldr	d0, [x10, x9, lsl #3]
	str	d0, [x19, #7032]
	ldr	x9, [sp, #4984]                 ; 8-byte Folded Reload
	ldr	q0, [x10, x9]
	str	q0, [x19, #7040]
	ldr	x9, [sp, #4768]                 ; 8-byte Folded Reload
	ldr	d0, [x10, x9, lsl #3]
	str	d0, [x19, #7056]
	ldr	q0, [x8, #2640]
	ldr	q1, [x8, #2656]
	str	q0, [sp, #8096]
	str	q1, [sp, #8112]
	cmp	w30, #0
	ldr	x12, [sp, #560]                 ; 8-byte Folded Reload
	ldr	x6, [sp, #752]                  ; 8-byte Folded Reload
	b.le	LBB17_451
; %bb.449:
	ldr	d0, [x19, #7008]
	ldr	d1, [x19, #7072]
	ldr	d2, [x19, #7080]
	ldr	d5, [x19, #7088]
	ldr	d3, [x19, #7096]
	ldr	d4, [x19, #7104]
	fneg	d5, d5
	ldr	d7, [sp, #8408]
	ldr	d6, [sp, #8112]
	ldr	d16, [sp, #8120]
	mov	x10, x30
	mov	x11, x12
LBB17_450:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x6]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x6, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x11], #8
	add	x6, x6, #8
	fmov	d7, d17
	subs	x10, x10, #1
	b.ne	LBB17_450
LBB17_451:
	add	x10, sp, #1, lsl #12            ; =4096
	add	x10, x10, #4000
	ldr	x11, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x10, x11]
	str	q0, [x8, #2640]
	ldr	x9, [sp, #4808]                 ; 8-byte Folded Reload
	ldr	q0, [x10, x9]
	str	q0, [x8, #2656]
	ldr	q0, [x19, #7184]
	ldr	q1, [x19, #7200]
	str	q0, [sp, #7808]
	str	q1, [sp, #7824]
	cmp	w30, #0
	b.le	LBB17_457
; %bb.452:
	ldr	d0, [x19, #7088]
	ldr	d1, [x19, #7144]
	ldr	d2, [x19, #7152]
	ldr	d5, [x19, #7160]
	ldr	d3, [x19, #7168]
	ldr	d4, [x19, #7176]
	fneg	d5, d5
	ldr	d7, [sp, #8120]
	ldr	d6, [sp, #7824]
	ldr	d16, [sp, #7832]
	mov	x10, x30
	ldr	x11, [sp, #504]                 ; 8-byte Folded Reload
LBB17_453:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x12]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x12, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x11], #8
	add	x12, x12, #8
	fmov	d7, d17
	subs	x10, x10, #1
	b.ne	LBB17_453
; %bb.454:
	add	x10, sp, #1, lsl #12            ; =4096
	add	x10, x10, #3712
	ldr	x9, [sp, #4816]                 ; 8-byte Folded Reload
	ldr	q0, [x10, x9]
	str	q0, [x19, #7184]
	ldr	x9, [sp, #4808]                 ; 8-byte Folded Reload
	ldr	q0, [x10, x9]
	str	q0, [x19, #7200]
	cmp	w30, #0
	b.le	LBB17_458
; %bb.455:
	ldr	d0, [x19, #7160]
	ldr	d1, [x19, #7216]
	ldr	d2, [x19, #7224]
	cmp	w30, #7
	b.hi	LBB17_459
; %bb.456:
	mov	x10, #0                         ; =0x0
	b	LBB17_462
LBB17_457:
	add	x10, sp, #1, lsl #12            ; =4096
	add	x10, x10, #3712
	ldr	q0, [x10, x11]
	str	q0, [x19, #7184]
	ldr	q0, [x10, x9]
	str	q0, [x19, #7200]
LBB17_458:
	add	x10, x19, #408
	ldp	q0, q1, [x10]
	str	q0, [sp, #36800]
	str	q1, [sp, #36816]
	b	LBB17_466
LBB17_459:
	dup.2d	v3, v1[0]
	and	x10, x30, #0x7ffffff8
	add	x11, sp, #1, lsl #12            ; =4096
	add	x11, x11, #3456
	add	x11, x11, #32
	add	x12, sp, #1, lsl #12            ; =4096
	add	x12, x12, #3712
	add	x12, x12, #40
	mov	x13, x10
LBB17_460:                              ; =>This Inner Loop Header: Depth=1
	ldur	q4, [x12, #-8]
	ldur	q5, [x12, #8]
	ldur	q6, [x12, #24]
	ldur	q7, [x12, #40]
	ldp	q16, q17, [x12, #-16]
	ldp	q18, q19, [x12, #16]
	fmul.2d	v16, v16, v2[0]
	fmul.2d	v17, v17, v2[0]
	fmul.2d	v18, v18, v2[0]
	fmul.2d	v19, v19, v2[0]
	fmla.2d	v16, v4, v3
	fmla.2d	v17, v5, v3
	fmla.2d	v18, v6, v3
	fmla.2d	v19, v7, v3
	ldur	q7, [x12, #-24]
	fmla.2d	v16, v7, v3
	fmla.2d	v17, v4, v3
	fmla.2d	v18, v5, v3
	fmla.2d	v19, v6, v3
	fmul.2d	v4, v16, v0[0]
	fmul.2d	v5, v17, v0[0]
	fmul.2d	v6, v18, v0[0]
	stp	q4, q5, [x11, #-32]
	fmul.2d	v4, v19, v0[0]
	stp	q6, q4, [x11], #64
	add	x12, x12, #64
	subs	x13, x13, #8
	b.ne	LBB17_460
; %bb.461:
	cmp	x10, x30
	b.eq	LBB17_464
LBB17_462:
	lsl	x12, x10, #3
	add	x11, sp, #1, lsl #12            ; =4096
	add	x11, x11, #3456
	add	x11, x11, x12
	sub	x10, x30, x10
	add	x13, sp, #1, lsl #12            ; =4096
	add	x13, x13, #3712
	add	x12, x12, x13
	add	x12, x12, #32
LBB17_463:                              ; =>This Inner Loop Header: Depth=1
	ldp	d4, d3, [x12, #-8]
	ldur	d5, [x12, #-16]
	fmul	d4, d2, d4
	fmadd	d3, d1, d3, d4
	fmadd	d3, d1, d5, d3
	fmul	d3, d0, d3
	str	d3, [x11], #8
	add	x12, x12, #8
	subs	x10, x10, #1
	b.ne	LBB17_463
LBB17_464:
	add	x10, x19, #408
	ldp	q1, q0, [x10]
	str	q0, [sp, #36816]
	str	q1, [sp, #36800]
	ldp	d2, d0, [x19, #368]
	ldr	d1, [x19, #400]
	fneg	d2, d2
	add	x10, sp, #9, lsl #12            ; =36864
	add	x10, x10, #224
	add	x9, sp, #4064
	ldr	d3, [x9, #32760]
	mov	x11, x30
	ldr	x12, [sp, #760]                 ; 8-byte Folded Reload
	ldr	x13, [sp, #944]                 ; 8-byte Folded Reload
LBB17_465:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x10], #8
	ldur	d5, [x12, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x12], #8
	subs	x11, x11, #1
	b.ne	LBB17_465
LBB17_466:
	add	x10, sp, #8, lsl #12            ; =32768
	add	x10, x10, #4032
	ldr	x9, [sp, #4776]                 ; 8-byte Folded Reload
	ldr	d0, [x10, x9, lsl #3]
	str	d0, [x19, #408]
	ldr	x9, [sp, #4984]                 ; 8-byte Folded Reload
	ldr	q0, [x10, x9]
	str	q0, [x19, #416]
	ldr	x9, [sp, #4768]                 ; 8-byte Folded Reload
	ldr	d0, [x10, x9, lsl #3]
	str	d0, [x19, #432]
	ldr	x9, [sp, #4784]                 ; 8-byte Folded Reload
	ldp	q0, q1, [x9, #688]
	str	q0, [sp, #34528]
	str	q1, [sp, #34544]
	cmp	w30, #0
	b.le	LBB17_469
; %bb.467:
	ldr	d2, [x19, #912]
	ldr	d0, [x19, #920]
	ldr	d1, [x19, #944]
	fneg	d2, d2
	add	x9, sp, #8, lsl #12             ; =32768
	add	x9, x9, #2048
	add	x10, sp, #1792
	ldr	d3, [x10, #32760]
	mov	x10, x30
	ldr	x11, [sp, #792]                 ; 8-byte Folded Reload
LBB17_468:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x9], #8
	ldur	d5, [x11, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x11], #8
	subs	x10, x10, #1
	b.ne	LBB17_468
LBB17_469:
	add	x9, sp, #8, lsl #12             ; =32768
	add	x9, x9, #1760
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q1, [x9, x10]
	ldr	x9, [sp, #4784]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9, #688]
	ldr	q0, [x9, #1216]
	ldr	q1, [x9, #1232]
	str	q0, [sp, #32256]
	str	q1, [sp, #32272]
	cmp	w30, #0
	ldr	x12, [sp, #632]                 ; 8-byte Folded Reload
	b.le	LBB17_472
; %bb.470:
	ldr	d2, [x19, #1440]
	ldr	d0, [x19, #1448]
	ldr	d1, [x19, #1472]
	fneg	d2, d2
	add	x9, sp, #7, lsl #12             ; =28672
	add	x9, x9, #3872
	ldr	d3, [sp, #32280]
	mov	x10, x30
	ldr	x11, [sp, #808]                 ; 8-byte Folded Reload
LBB17_471:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x9], #8
	ldur	d5, [x11, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x11], #8
	subs	x10, x10, #1
	b.ne	LBB17_471
LBB17_472:
	add	x9, sp, #7, lsl #12             ; =28672
	add	x9, x9, #3584
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	ldr	x11, [sp, #4784]                ; 8-byte Folded Reload
	str	q0, [x11, #1216]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	str	q0, [x11, #1232]
	ldr	q0, [x11, #1744]
	ldr	q1, [x11, #1760]
	str	q0, [sp, #29984]
	str	q1, [sp, #30000]
	cmp	w30, #0
	b.le	LBB17_475
; %bb.473:
	ldr	d2, [x19, #1968]
	ldr	d0, [x19, #1976]
	ldr	d1, [x19, #2000]
	fneg	d2, d2
	add	x9, sp, #7, lsl #12             ; =28672
	add	x9, x9, #1600
	ldr	d3, [sp, #30008]
	mov	x10, x30
	mov	x11, x7
LBB17_474:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x9], #8
	ldur	d5, [x11, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x11], #8
	subs	x10, x10, #1
	b.ne	LBB17_474
LBB17_475:
	add	x9, sp, #7, lsl #12             ; =28672
	add	x9, x9, #1312
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	ldr	x11, [sp, #4784]                ; 8-byte Folded Reload
	str	q0, [x11, #1744]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	str	q0, [x11, #1760]
	ldr	q0, [x11, #2272]
	ldr	q1, [x11, #2288]
	str	q0, [sp, #27712]
	str	q1, [sp, #27728]
	cmp	w30, #0
	b.le	LBB17_478
; %bb.476:
	ldr	d2, [x19, #2496]
	ldr	d0, [x19, #2504]
	ldr	d1, [x19, #2528]
	fneg	d2, d2
	add	x9, sp, #6, lsl #12             ; =24576
	add	x9, x9, #3424
	ldr	d3, [sp, #27736]
	mov	x10, x30
	ldr	x11, [sp, #784]                 ; 8-byte Folded Reload
LBB17_477:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x9], #8
	ldur	d5, [x11, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x11], #8
	subs	x10, x10, #1
	b.ne	LBB17_477
LBB17_478:
	add	x9, sp, #6, lsl #12             ; =24576
	add	x9, x9, #3136
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	ldr	x11, [sp, #4784]                ; 8-byte Folded Reload
	str	q0, [x11, #2272]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	str	q0, [x11, #2288]
	ldr	q0, [x11, #2800]
	ldr	q1, [x11, #2816]
	str	q0, [sp, #25440]
	str	q1, [sp, #25456]
	cmp	w30, #0
	b.le	LBB17_481
; %bb.479:
	ldr	d2, [x19, #3024]
	ldr	d0, [x19, #3032]
	ldr	d1, [x19, #3056]
	fneg	d2, d2
	add	x9, sp, #6, lsl #12             ; =24576
	add	x9, x9, #1152
	ldr	d3, [sp, #25464]
	mov	x10, x30
	ldr	x11, [sp, #800]                 ; 8-byte Folded Reload
LBB17_480:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x9], #8
	ldur	d5, [x11, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x11], #8
	subs	x10, x10, #1
	b.ne	LBB17_480
LBB17_481:
	add	x9, sp, #6, lsl #12             ; =24576
	add	x9, x9, #864
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	ldr	x11, [sp, #4784]                ; 8-byte Folded Reload
	str	q0, [x11, #2800]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	str	q0, [x11, #2816]
	ldr	q0, [x11, #3328]
	ldr	q1, [x11, #3344]
	str	q0, [sp, #23168]
	str	q1, [sp, #23184]
	cmp	w30, #0
	b.le	LBB17_484
; %bb.482:
	ldr	d2, [x19, #3552]
	ldr	d0, [x19, #3560]
	ldr	d1, [x19, #3584]
	fneg	d2, d2
	add	x9, sp, #5, lsl #12             ; =20480
	add	x9, x9, #2976
	ldr	d3, [sp, #23192]
	mov	x10, x30
	mov	x11, x5
LBB17_483:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x9], #8
	ldur	d5, [x11, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x11], #8
	subs	x10, x10, #1
	b.ne	LBB17_483
LBB17_484:
	add	x9, sp, #5, lsl #12             ; =20480
	add	x9, x9, #2688
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	ldr	x11, [sp, #4784]                ; 8-byte Folded Reload
	str	q0, [x11, #3328]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	str	q0, [x11, #3344]
	ldr	q0, [x11, #3856]
	ldr	q1, [x11, #3872]
	str	q0, [sp, #20896]
	str	q1, [sp, #20912]
	cmp	w30, #0
	ldr	x6, [sp, #792]                  ; 8-byte Folded Reload
	b.le	LBB17_487
; %bb.485:
	ldr	d2, [x19, #4080]
	ldr	d0, [x19, #4088]
	ldr	d1, [x19, #4112]
	fneg	d2, d2
	add	x9, sp, #5, lsl #12             ; =20480
	add	x9, x9, #704
	ldr	d3, [sp, #20920]
	mov	x10, x30
	ldr	x11, [sp, #816]                 ; 8-byte Folded Reload
LBB17_486:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x9], #8
	ldur	d5, [x11, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x11], #8
	subs	x10, x10, #1
	b.ne	LBB17_486
LBB17_487:
	add	x9, sp, #5, lsl #12             ; =20480
	add	x9, x9, #416
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	ldr	x11, [sp, #4784]                ; 8-byte Folded Reload
	str	q0, [x11, #3856]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	str	q0, [x11, #3872]
	ldp	q0, q1, [x8, #176]
	str	q0, [sp, #18624]
	str	q1, [sp, #18640]
	cmp	w30, #0
	b.le	LBB17_490
; %bb.488:
	ldr	d2, [x19, #4608]
	ldr	d0, [x19, #4616]
	ldr	d1, [x19, #4640]
	fneg	d2, d2
	add	x9, sp, #4, lsl #12             ; =16384
	add	x9, x9, #2528
	ldr	d3, [sp, #18648]
	mov	x10, x30
	mov	x11, x13
LBB17_489:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x9], #8
	ldur	d5, [x11, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x11], #8
	subs	x10, x10, #1
	b.ne	LBB17_489
LBB17_490:
	add	x9, sp, #4, lsl #12             ; =16384
	add	x9, x9, #2240
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q1, [x9, x10]
	stp	q0, q1, [x8, #176]
	ldp	q0, q1, [x8, #704]
	str	q0, [sp, #16352]
	str	q1, [sp, #16368]
	cmp	w30, #0
	b.le	LBB17_493
; %bb.491:
	ldr	d2, [x19, #5136]
	ldr	d0, [x19, #5144]
	ldr	d1, [x19, #5168]
	fneg	d2, d2
	add	x9, sp, #4, lsl #12             ; =16384
	add	x9, x9, #256
	ldr	d3, [sp, #16376]
	mov	x10, x30
	ldr	x11, [sp, #824]                 ; 8-byte Folded Reload
LBB17_492:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x9], #8
	ldur	d5, [x11, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x11], #8
	subs	x10, x10, #1
	b.ne	LBB17_492
LBB17_493:
	add	x9, sp, #3, lsl #12             ; =12288
	add	x9, x9, #4064
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q1, [x9, x10]
	stp	q0, q1, [x8, #704]
	ldr	q0, [x8, #1232]
	ldr	q1, [x8, #1248]
	str	q0, [sp, #14080]
	str	q1, [sp, #14096]
	cmp	w30, #0
	b.le	LBB17_496
; %bb.494:
	ldr	d2, [x19, #5664]
	ldr	d0, [x19, #5672]
	ldr	d1, [x19, #5696]
	fneg	d2, d2
	add	x9, sp, #3, lsl #12             ; =12288
	add	x9, x9, #2080
	ldr	d3, [sp, #14104]
	mov	x10, x30
	mov	x11, x0
LBB17_495:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x9], #8
	ldur	d5, [x11, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x11], #8
	subs	x10, x10, #1
	b.ne	LBB17_495
LBB17_496:
	add	x9, sp, #3, lsl #12             ; =12288
	add	x9, x9, #1792
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	str	q0, [x8, #1232]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	str	q0, [x8, #1248]
	ldr	q0, [x8, #1760]
	ldr	q1, [x8, #1776]
	str	q0, [sp, #11808]
	str	q1, [sp, #11824]
	cmp	w30, #0
	b.le	LBB17_499
; %bb.497:
	ldr	d2, [x19, #6192]
	ldr	d0, [x19, #6200]
	ldr	d1, [x19, #6224]
	fneg	d2, d2
	add	x9, sp, #2, lsl #12             ; =8192
	add	x9, x9, #3904
	ldr	d3, [sp, #11832]
	mov	x10, x30
	ldr	x11, [sp, #832]                 ; 8-byte Folded Reload
LBB17_498:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x9], #8
	ldur	d5, [x11, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x11], #8
	subs	x10, x10, #1
	b.ne	LBB17_498
LBB17_499:
	add	x9, sp, #2, lsl #12             ; =8192
	add	x9, x9, #3616
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	str	q0, [x8, #1760]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	str	q0, [x8, #1776]
	ldr	q0, [x8, #2288]
	ldr	q1, [x8, #2304]
	str	q0, [sp, #9536]
	str	q1, [sp, #9552]
	cmp	w30, #0
	b.le	LBB17_502
; %bb.500:
	ldr	d2, [x19, #6720]
	ldr	d0, [x19, #6728]
	ldr	d1, [x19, #6752]
	fneg	d2, d2
	add	x9, sp, #2, lsl #12             ; =8192
	add	x9, x9, #1632
	ldr	d3, [sp, #9560]
	mov	x10, x30
	mov	x11, x28
LBB17_501:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x9], #8
	ldur	d5, [x11, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x11], #8
	subs	x10, x10, #1
	b.ne	LBB17_501
LBB17_502:
	add	x9, sp, #2, lsl #12             ; =8192
	add	x9, x9, #1344
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	str	q0, [x8, #2288]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	str	q0, [x8, #2304]
	ldr	q0, [x8, #2816]
	ldr	q1, [x8, #2832]
	str	q0, [sp, #7264]
	str	q1, [sp, #7280]
	cmp	w30, #0
	b.le	LBB17_505
; %bb.503:
	ldr	d2, [x19, #7248]
	ldr	d0, [x19, #7256]
	ldr	d1, [x19, #7280]
	fneg	d2, d2
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #3456
	ldr	d3, [sp, #7288]
	mov	x10, x30
	mov	x11, x25
LBB17_504:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x9], #8
	ldur	d5, [x11, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x11], #8
	subs	x10, x10, #1
	b.ne	LBB17_504
LBB17_505:
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #3168
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	str	q0, [x8, #2816]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	str	q0, [x8, #2832]
	ldr	q0, [x8, #3088]
	ldr	q1, [x8, #3104]
	str	q0, [sp, #6112]
	str	q1, [sp, #6128]
	cmp	w30, #0
	b.le	LBB17_508
; %bb.506:
	ldr	d2, [x19, #7536]
	ldr	d0, [x19, #7544]
	ldr	d1, [x19, #7552]
	fneg	d2, d2
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #3456
	ldr	d3, [sp, #6136]
	mov	x10, x30
	mov	x11, x23
LBB17_507:                              ; =>This Inner Loop Header: Depth=1
	ldr	d4, [x9], #8
	ldur	d5, [x11, #-16]
	fmul	d3, d1, d3
	fmadd	d3, d0, d5, d3
	fmadd	d3, d2, d3, d4
	str	d3, [x11], #8
	subs	x10, x10, #1
	b.ne	LBB17_507
LBB17_508:
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #2016
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	str	q0, [x8, #3088]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	str	q0, [x8, #3104]
	ldr	x9, [sp, #4784]                 ; 8-byte Folded Reload
	ldp	q0, q1, [x9, #224]
	str	q0, [sp, #36512]
	str	q1, [sp, #36528]
	cmp	w30, #0
	ldr	x11, [sp, #760]                 ; 8-byte Folded Reload
	b.le	LBB17_511
; %bb.509:
	ldr	d0, [x19, #368]
	ldp	d1, d2, [x19, #448]
	ldp	d5, d3, [x19, #464]
	ldr	d4, [x19, #480]
	fneg	d5, d5
	add	x9, sp, #4064
	ldr	d7, [x9, #32760]
	add	x9, sp, #3768
	ldr	d6, [x9, #32760]
	add	x9, sp, #3776
	ldr	d16, [x9, #32760]
	mov	x9, x30
	ldr	x10, [sp, #4920]                ; 8-byte Folded Reload
LBB17_510:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x11]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x11, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x11, x11, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_510
LBB17_511:
	add	x9, sp, #8, lsl #12             ; =32768
	add	x9, x9, #3744
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q1, [x9, x10]
	ldr	x9, [sp, #4784]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9, #224]
	ldp	q0, q1, [x9, #768]
	str	q0, [sp, #34240]
	str	q1, [sp, #34256]
	cmp	w30, #0
	ldr	x11, [sp, #640]                 ; 8-byte Folded Reload
	b.le	LBB17_514
; %bb.512:
	ldr	d0, [x19, #912]
	ldr	d1, [x19, #992]
	ldr	d2, [x19, #1000]
	ldr	d5, [x19, #1008]
	ldr	d3, [x19, #1016]
	ldr	d4, [x19, #1024]
	fneg	d5, d5
	add	x9, sp, #1792
	ldr	d7, [x9, #32760]
	add	x9, sp, #1496
	ldr	d6, [x9, #32760]
	add	x9, sp, #1504
	ldr	d16, [x9, #32760]
	mov	x9, x30
	mov	x10, x22
LBB17_513:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x6]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x6, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x6, x6, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_513
LBB17_514:
	add	x9, sp, #8, lsl #12             ; =32768
	add	x9, x9, #1472
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q1, [x9, x10]
	ldr	x9, [sp, #4784]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9, #768]
	ldr	q0, [x9, #1296]
	ldr	q1, [x9, #1312]
	str	q0, [sp, #31968]
	str	q1, [sp, #31984]
	cmp	w30, #0
	ldr	x6, [sp, #808]                  ; 8-byte Folded Reload
	b.le	LBB17_517
; %bb.515:
	ldr	d0, [x19, #1440]
	ldr	d1, [x19, #1520]
	ldr	d2, [x19, #1528]
	ldr	d5, [x19, #1536]
	ldr	d3, [x19, #1544]
	ldr	d4, [x19, #1552]
	fneg	d5, d5
	ldr	d7, [sp, #32280]
	ldr	d6, [sp, #31984]
	ldr	d16, [sp, #31992]
	mov	x9, x30
	mov	x10, x27
LBB17_516:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x6]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x6, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x6, x6, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_516
LBB17_517:
	add	x9, sp, #7, lsl #12             ; =28672
	add	x9, x9, #3296
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	ldr	x6, [sp, #4784]                 ; 8-byte Folded Reload
	str	q0, [x6, #1296]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	str	q0, [x6, #1312]
	ldr	q0, [x6, #1824]
	ldr	q1, [x6, #1840]
	str	q0, [sp, #29696]
	str	q1, [sp, #29712]
	cmp	w30, #0
	b.le	LBB17_520
; %bb.518:
	ldr	d0, [x19, #1968]
	ldr	d1, [x19, #2048]
	ldr	d2, [x19, #2056]
	ldr	d5, [x19, #2064]
	ldr	d3, [x19, #2072]
	ldr	d4, [x19, #2080]
	fneg	d5, d5
	ldr	d7, [sp, #30008]
	ldr	d6, [sp, #29712]
	ldr	d16, [sp, #29720]
	mov	x9, x30
	mov	x10, x24
LBB17_519:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x7]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x7, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x7, x7, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_519
LBB17_520:
	add	x9, sp, #7, lsl #12             ; =28672
	add	x9, x9, #1024
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	ldr	x6, [sp, #4784]                 ; 8-byte Folded Reload
	str	q0, [x6, #1824]
	ldr	x10, [sp, #4808]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	str	q0, [x6, #1840]
	ldr	q0, [x6, #2352]
	ldr	q1, [x6, #2368]
	str	q0, [sp, #27424]
	str	q1, [sp, #27440]
	cmp	w30, #0
	ldr	x6, [sp, #800]                  ; 8-byte Folded Reload
	ldr	x7, [sp, #784]                  ; 8-byte Folded Reload
	b.le	LBB17_523
; %bb.521:
	ldr	d0, [x19, #2496]
	ldr	d1, [x19, #2576]
	ldr	d2, [x19, #2584]
	ldr	d5, [x19, #2592]
	ldr	d3, [x19, #2600]
	ldr	d4, [x19, #2608]
	fneg	d5, d5
	ldr	d7, [sp, #27736]
	ldr	d6, [sp, #27440]
	ldr	d16, [sp, #27448]
	mov	x9, x30
	ldr	x10, [sp, #840]                 ; 8-byte Folded Reload
LBB17_522:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x7]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x7, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x7, x7, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_522
LBB17_523:
	add	x9, sp, #6, lsl #12             ; =24576
	add	x9, x9, #2848
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	ldr	x10, [sp, #4784]                ; 8-byte Folded Reload
	str	q0, [x10, #2352]
	ldr	x7, [sp, #4808]                 ; 8-byte Folded Reload
	ldr	q0, [x9, x7]
	str	q0, [x10, #2368]
	ldr	q0, [x10, #2880]
	ldr	q1, [x10, #2896]
	str	q0, [sp, #25152]
	str	q1, [sp, #25168]
	cmp	w30, #0
	b.le	LBB17_526
; %bb.524:
	ldr	d0, [x19, #3024]
	ldr	d1, [x19, #3104]
	ldr	d2, [x19, #3112]
	ldr	d5, [x19, #3120]
	ldr	d3, [x19, #3128]
	ldr	d4, [x19, #3136]
	fneg	d5, d5
	ldr	d7, [sp, #25464]
	ldr	d6, [sp, #25168]
	ldr	d16, [sp, #25176]
	mov	x9, x30
	ldr	x10, [sp, #4928]                ; 8-byte Folded Reload
LBB17_525:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x6]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x6, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x6, x6, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_525
LBB17_526:
	add	x9, sp, #6, lsl #12             ; =24576
	add	x9, x9, #576
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	ldr	x10, [sp, #4784]                ; 8-byte Folded Reload
	str	q0, [x10, #2880]
	ldr	q0, [x9, x7]
	str	q0, [x10, #2896]
	ldr	q0, [x10, #3408]
	ldr	q1, [x10, #3424]
	str	q0, [sp, #22880]
	str	q1, [sp, #22896]
	cmp	w30, #0
	b.le	LBB17_529
; %bb.527:
	ldr	d0, [x19, #3552]
	ldr	d1, [x19, #3632]
	ldr	d2, [x19, #3640]
	ldr	d5, [x19, #3648]
	ldr	d3, [x19, #3656]
	ldr	d4, [x19, #3664]
	fneg	d5, d5
	ldr	d7, [sp, #23192]
	ldr	d6, [sp, #22896]
	ldr	d16, [sp, #22904]
	mov	x9, x30
	mov	x10, x21
LBB17_528:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x5]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x5, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x5, x5, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_528
LBB17_529:
	add	x9, sp, #5, lsl #12             ; =20480
	add	x9, x9, #2400
	ldr	x10, [sp, #4816]                ; 8-byte Folded Reload
	ldr	q0, [x9, x10]
	ldr	x10, [sp, #4784]                ; 8-byte Folded Reload
	str	q0, [x10, #3408]
	ldr	q0, [x9, x7]
	str	q0, [x10, #3424]
	ldr	q0, [x10, #3936]
	ldr	q1, [x10, #3952]
	str	q0, [sp, #20608]
	str	q1, [sp, #20624]
	cmp	w30, #0
	ldr	x5, [sp, #816]                  ; 8-byte Folded Reload
	ldr	x6, [sp, #592]                  ; 8-byte Folded Reload
	b.le	LBB17_532
; %bb.530:
	ldr	d0, [x19, #4080]
	ldr	d1, [x19, #4160]
	ldr	d2, [x19, #4168]
	ldr	d5, [x19, #4176]
	ldr	d3, [x19, #4184]
	ldr	d4, [x19, #4192]
	fneg	d5, d5
	ldr	d7, [sp, #20920]
	ldr	d6, [sp, #20624]
	ldr	d16, [sp, #20632]
	mov	x9, x30
	ldr	x10, [sp, #4936]                ; 8-byte Folded Reload
LBB17_531:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x5]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x5, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x5, x5, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_531
LBB17_532:
	add	x9, sp, #5, lsl #12             ; =20480
	add	x9, x9, #128
	ldr	x5, [sp, #4816]                 ; 8-byte Folded Reload
	ldr	q0, [x9, x5]
	ldr	x10, [sp, #4784]                ; 8-byte Folded Reload
	str	q0, [x10, #3936]
	ldr	q0, [x9, x7]
	str	q0, [x10, #3952]
	ldp	q0, q1, [x8, #256]
	str	q0, [sp, #18336]
	str	q1, [sp, #18352]
	cmp	w30, #0
	b.le	LBB17_535
; %bb.533:
	ldr	d0, [x19, #4608]
	ldr	d1, [x19, #4688]
	ldr	d2, [x19, #4696]
	ldr	d5, [x19, #4704]
	ldr	d3, [x19, #4712]
	ldr	d4, [x19, #4720]
	fneg	d5, d5
	ldr	d7, [sp, #18648]
	ldr	d6, [sp, #18352]
	ldr	d16, [sp, #18360]
	mov	x9, x30
	mov	x10, x4
LBB17_534:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x13]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x13, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x13, x13, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_534
LBB17_535:
	add	x9, sp, #4, lsl #12             ; =16384
	add	x9, x9, #1952
	ldr	q0, [x9, x5]
	ldr	q1, [x9, x7]
	stp	q0, q1, [x8, #256]
	ldp	q0, q1, [x8, #784]
	str	q0, [sp, #16064]
	str	q1, [sp, #16080]
	cmp	w30, #0
	ldr	x13, [sp, #824]                 ; 8-byte Folded Reload
	b.le	LBB17_538
; %bb.536:
	ldr	d0, [x19, #5136]
	ldr	d1, [x19, #5216]
	ldr	d2, [x19, #5224]
	ldr	d5, [x19, #5232]
	ldr	d3, [x19, #5240]
	ldr	d4, [x19, #5248]
	fneg	d5, d5
	ldr	d7, [sp, #16376]
	ldr	d6, [sp, #16080]
	ldr	d16, [sp, #16088]
	mov	x9, x30
	mov	x10, x3
LBB17_537:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x13]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x13, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x13, x13, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_537
LBB17_538:
	add	x9, sp, #3, lsl #12             ; =12288
	add	x9, x9, #3776
	ldr	q0, [x9, x5]
	ldr	q1, [x9, x7]
	stp	q0, q1, [x8, #784]
	ldr	q0, [x8, #1312]
	ldr	q1, [x8, #1328]
	str	q0, [sp, #13792]
	str	q1, [sp, #13808]
	cmp	w30, #0
	b.le	LBB17_541
; %bb.539:
	ldr	d0, [x19, #5664]
	ldr	d1, [x19, #5744]
	ldr	d2, [x19, #5752]
	ldr	d5, [x19, #5760]
	ldr	d3, [x19, #5768]
	ldr	d4, [x19, #5776]
	fneg	d5, d5
	ldr	d7, [sp, #14104]
	ldr	d6, [sp, #13808]
	ldr	d16, [sp, #13816]
	mov	x9, x30
	mov	x10, x2
LBB17_540:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x0]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x0, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x0, x0, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_540
LBB17_541:
	add	x9, sp, #3, lsl #12             ; =12288
	add	x9, x9, #1504
	ldr	q0, [x9, x5]
	str	q0, [x8, #1312]
	ldr	q0, [x9, x7]
	str	q0, [x8, #1328]
	ldr	q0, [x8, #1840]
	ldr	q1, [x8, #1856]
	str	q0, [sp, #11520]
	str	q1, [sp, #11536]
	cmp	w30, #0
	ldr	x0, [sp, #832]                  ; 8-byte Folded Reload
	b.le	LBB17_544
; %bb.542:
	ldr	d0, [x19, #6192]
	ldr	d1, [x19, #6272]
	ldr	d2, [x19, #6280]
	ldr	d5, [x19, #6288]
	ldr	d3, [x19, #6296]
	ldr	d4, [x19, #6304]
	fneg	d5, d5
	ldr	d7, [sp, #11832]
	ldr	d6, [sp, #11536]
	ldr	d16, [sp, #11544]
	mov	x9, x30
	ldr	x10, [sp, #4944]                ; 8-byte Folded Reload
LBB17_543:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x0]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x0, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x0, x0, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_543
LBB17_544:
	add	x9, sp, #2, lsl #12             ; =8192
	add	x9, x9, #3328
	ldr	q0, [x9, x5]
	str	q0, [x8, #1840]
	ldr	q0, [x9, x7]
	str	q0, [x8, #1856]
	ldr	q0, [x8, #2368]
	ldr	q1, [x8, #2384]
	str	q0, [sp, #9248]
	str	q1, [sp, #9264]
	cmp	w30, #0
	b.le	LBB17_547
; %bb.545:
	ldr	d0, [x19, #6720]
	ldr	d1, [x19, #6800]
	ldr	d2, [x19, #6808]
	ldr	d5, [x19, #6816]
	ldr	d3, [x19, #6824]
	ldr	d4, [x19, #6832]
	fneg	d5, d5
	ldr	d7, [sp, #9560]
	ldr	d6, [sp, #9264]
	ldr	d16, [sp, #9272]
	mov	x9, x30
	mov	x10, x1
LBB17_546:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x28]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x28, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x28, x28, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_546
LBB17_547:
	add	x9, sp, #2, lsl #12             ; =8192
	add	x9, x9, #1056
	ldr	q0, [x9, x5]
	str	q0, [x8, #2368]
	ldr	q0, [x9, x7]
	str	q0, [x8, #2384]
	ldr	q0, [x8, #2896]
	ldr	q1, [x8, #2912]
	str	q0, [sp, #6976]
	str	q1, [sp, #6992]
	cmp	w30, #0
	b.le	LBB17_550
; %bb.548:
	ldr	d0, [x19, #7248]
	ldr	d1, [x19, #7328]
	ldr	d2, [x19, #7336]
	ldr	d5, [x19, #7344]
	ldr	d3, [x19, #7352]
	ldr	d4, [x19, #7360]
	fneg	d5, d5
	ldr	d7, [sp, #7288]
	ldr	d6, [sp, #6992]
	ldr	d16, [sp, #7000]
	mov	x9, x30
	ldr	x10, [sp, #4952]                ; 8-byte Folded Reload
LBB17_549:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x25]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x25, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x25, x25, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_549
LBB17_550:
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #2880
	ldr	q0, [x9, x5]
	str	q0, [x8, #2896]
	ldr	q0, [x9, x7]
	str	q0, [x8, #2912]
	ldr	q0, [x8, #3168]
	ldr	q1, [x8, #3184]
	str	q0, [sp, #5824]
	str	q1, [sp, #5840]
	cmp	w30, #0
	b.le	LBB17_553
; %bb.551:
	ldr	d0, [x19, #7536]
	ldr	d1, [x19, #7600]
	ldr	d2, [x19, #7608]
	ldr	d5, [x19, #7616]
	ldr	d3, [x19, #7624]
	ldr	d4, [x19, #7632]
	fneg	d5, d5
	ldr	d7, [sp, #6136]
	ldr	d6, [sp, #5840]
	ldr	d16, [sp, #5848]
	mov	x9, x30
	ldr	x10, [sp, #848]                 ; 8-byte Folded Reload
LBB17_552:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x23]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x23, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x23, x23, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_552
LBB17_553:
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #1728
	ldr	q0, [x9, x5]
	str	q0, [x8, #3168]
	ldr	q0, [x9, x7]
	str	q0, [x8, #3184]
	ldr	x9, [sp, #4784]                 ; 8-byte Folded Reload
	ldp	q0, q1, [x9, #304]
	str	q0, [sp, #36224]
	str	q1, [sp, #36240]
	cmp	w30, #0
	ldr	x23, [sp, #4920]                ; 8-byte Folded Reload
	b.le	LBB17_556
; %bb.554:
	ldr	d0, [x19, #464]
	ldr	d1, [x19, #528]
	ldr	d2, [x19, #536]
	ldr	d5, [x19, #544]
	ldr	d3, [x19, #552]
	ldr	d4, [x19, #560]
	fneg	d5, d5
	add	x9, sp, #3776
	ldr	d7, [x9, #32760]
	add	x9, sp, #3480
	ldr	d6, [x9, #32760]
	add	x9, sp, #3488
	ldr	d16, [x9, #32760]
	mov	x9, x30
	mov	x10, x16
LBB17_555:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x23]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x23, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x23, x23, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_555
LBB17_556:
	add	x9, sp, #8, lsl #12             ; =32768
	add	x9, x9, #3456
	ldr	q0, [x9, x5]
	ldr	q1, [x9, x7]
	ldr	x9, [sp, #4784]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9, #304]
	ldp	q0, q1, [x9, #848]
	str	q0, [sp, #33952]
	str	q1, [sp, #33968]
	cmp	w30, #0
	b.le	LBB17_559
; %bb.557:
	ldr	d0, [x19, #1008]
	ldr	d1, [x19, #1072]
	ldr	d2, [x19, #1080]
	ldr	d5, [x19, #1088]
	ldr	d3, [x19, #1096]
	ldr	d4, [x19, #1104]
	fneg	d5, d5
	add	x9, sp, #1504
	ldr	d7, [x9, #32760]
	add	x9, sp, #1208
	ldr	d6, [x9, #32760]
	add	x9, sp, #1216
	ldr	d16, [x9, #32760]
	mov	x9, x30
	mov	x10, x20
LBB17_558:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x22]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x22, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x22, x22, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_558
LBB17_559:
	add	x9, sp, #8, lsl #12             ; =32768
	add	x9, x9, #1184
	ldr	q0, [x9, x5]
	ldr	q1, [x9, x7]
	ldr	x9, [sp, #4784]                 ; 8-byte Folded Reload
	stp	q0, q1, [x9, #848]
	ldr	q0, [x9, #1376]
	ldr	q1, [x9, #1392]
	str	q0, [sp, #31680]
	str	q1, [sp, #31696]
	cmp	w30, #0
	b.le	LBB17_562
; %bb.560:
	ldr	d0, [x19, #1536]
	ldr	d1, [x19, #1600]
	ldr	d2, [x19, #1608]
	ldr	d5, [x19, #1616]
	ldr	d3, [x19, #1624]
	ldr	d4, [x19, #1632]
	fneg	d5, d5
	ldr	d7, [sp, #31992]
	ldr	d6, [sp, #31696]
	ldr	d16, [sp, #31704]
	mov	x9, x30
	ldr	x10, [sp, #4960]                ; 8-byte Folded Reload
LBB17_561:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x27]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x27, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x27, x27, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_561
LBB17_562:
	add	x9, sp, #7, lsl #12             ; =28672
	add	x9, x9, #3008
	ldr	q0, [x9, x5]
	ldr	x10, [sp, #4784]                ; 8-byte Folded Reload
	str	q0, [x10, #1376]
	ldr	q0, [x9, x7]
	str	q0, [x10, #1392]
	ldr	q0, [x10, #1904]
	ldr	q1, [x10, #1920]
	str	q0, [sp, #29408]
	str	q1, [sp, #29424]
	cmp	w30, #0
	b.le	LBB17_565
; %bb.563:
	ldr	d0, [x19, #2064]
	ldr	d1, [x19, #2128]
	ldr	d2, [x19, #2136]
	ldr	d5, [x19, #2144]
	ldr	d3, [x19, #2152]
	ldr	d4, [x19, #2160]
	fneg	d5, d5
	ldr	d7, [sp, #29720]
	ldr	d6, [sp, #29424]
	ldr	d16, [sp, #29432]
	mov	x9, x30
	mov	x10, x17
LBB17_564:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x24]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x24, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x24, x24, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_564
LBB17_565:
	add	x9, sp, #7, lsl #12             ; =28672
	add	x9, x9, #736
	ldr	q0, [x9, x5]
	ldr	x10, [sp, #4784]                ; 8-byte Folded Reload
	str	q0, [x10, #1904]
	ldr	q0, [x9, x7]
	str	q0, [x10, #1920]
	ldr	q0, [x10, #2432]
	ldr	q1, [x10, #2448]
	str	q0, [sp, #27136]
	str	q1, [sp, #27152]
	cmp	w30, #0
	ldr	x22, [sp, #840]                 ; 8-byte Folded Reload
	b.le	LBB17_568
; %bb.566:
	ldr	d0, [x19, #2592]
	ldr	d1, [x19, #2656]
	ldr	d2, [x19, #2664]
	ldr	d5, [x19, #2672]
	ldr	d3, [x19, #2680]
	ldr	d4, [x19, #2688]
	fneg	d5, d5
	ldr	d7, [sp, #27448]
	ldr	d6, [sp, #27152]
	ldr	d16, [sp, #27160]
	mov	x9, x30
	ldr	x10, [sp, #856]                 ; 8-byte Folded Reload
LBB17_567:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x22]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x22, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x22, x22, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_567
LBB17_568:
	add	x9, sp, #6, lsl #12             ; =24576
	add	x9, x9, #2560
	ldr	q0, [x9, x5]
	ldr	x10, [sp, #4784]                ; 8-byte Folded Reload
	str	q0, [x10, #2432]
	ldr	q0, [x9, x7]
	str	q0, [x10, #2448]
	ldr	q0, [x10, #2960]
	ldr	q1, [x10, #2976]
	str	q0, [sp, #24864]
	str	q1, [sp, #24880]
	cmp	w30, #0
	ldr	x22, [sp, #4928]                ; 8-byte Folded Reload
	b.le	LBB17_571
; %bb.569:
	ldr	d0, [x19, #3120]
	ldr	d1, [x19, #3184]
	ldr	d2, [x19, #3192]
	ldr	d5, [x19, #3200]
	ldr	d3, [x19, #3208]
	ldr	d4, [x19, #3216]
	fneg	d5, d5
	ldr	d7, [sp, #25176]
	ldr	d6, [sp, #24880]
	ldr	d16, [sp, #24888]
	mov	x9, x30
	mov	x10, x26
LBB17_570:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x22]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x22, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x22, x22, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_570
LBB17_571:
	add	x9, sp, #6, lsl #12             ; =24576
	add	x9, x9, #288
	ldr	q0, [x9, x5]
	ldr	x10, [sp, #4784]                ; 8-byte Folded Reload
	str	q0, [x10, #2960]
	ldr	q0, [x9, x7]
	str	q0, [x10, #2976]
	ldr	q0, [x10, #3488]
	ldr	q1, [x10, #3504]
	str	q0, [sp, #22592]
	str	q1, [sp, #22608]
	cmp	w30, #0
	b.le	LBB17_574
; %bb.572:
	ldr	d0, [x19, #3648]
	ldr	d1, [x19, #3712]
	ldr	d2, [x19, #3720]
	ldr	d5, [x19, #3728]
	ldr	d3, [x19, #3736]
	ldr	d4, [x19, #3744]
	fneg	d5, d5
	ldr	d7, [sp, #22904]
	ldr	d6, [sp, #22608]
	ldr	d16, [sp, #22616]
	mov	x9, x30
	mov	x10, x6
LBB17_573:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x21]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x21, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x21, x21, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_573
LBB17_574:
	add	x9, sp, #5, lsl #12             ; =20480
	add	x9, x9, #2112
	ldr	q0, [x9, x5]
	ldr	x10, [sp, #4784]                ; 8-byte Folded Reload
	str	q0, [x10, #3488]
	ldr	q0, [x9, x7]
	str	q0, [x10, #3504]
	ldr	q0, [x10, #4016]
	ldr	q1, [x10, #4032]
	str	q0, [sp, #20320]
	str	q1, [sp, #20336]
	cmp	w30, #0
	ldr	x21, [sp, #4936]                ; 8-byte Folded Reload
	ldr	x22, [sp, #600]                 ; 8-byte Folded Reload
	b.le	LBB17_577
; %bb.575:
	ldr	d0, [x19, #4176]
	ldr	d1, [x19, #4240]
	ldr	d2, [x19, #4248]
	ldr	d5, [x19, #4256]
	ldr	d3, [x19, #4264]
	ldr	d4, [x19, #4272]
	fneg	d5, d5
	ldr	d7, [sp, #20632]
	ldr	d6, [sp, #20336]
	ldr	d16, [sp, #20344]
	mov	x9, x30
	mov	x10, x15
LBB17_576:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x21]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x21, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x21, x21, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_576
LBB17_577:
	add	x9, sp, #4, lsl #12             ; =16384
	add	x9, x9, #3936
	ldr	q0, [x9, x5]
	ldr	x10, [sp, #4784]                ; 8-byte Folded Reload
	str	q0, [x10, #4016]
	ldr	q0, [x9, x7]
	str	q0, [x10, #4032]
	ldp	q0, q1, [x8, #336]
	str	q0, [sp, #18048]
	str	q1, [sp, #18064]
	cmp	w30, #0
	b.le	LBB17_580
; %bb.578:
	ldr	d0, [x19, #4704]
	ldr	d1, [x19, #4768]
	ldr	d2, [x19, #4776]
	ldr	d5, [x19, #4784]
	ldr	d3, [x19, #4792]
	ldr	d4, [x19, #4800]
	fneg	d5, d5
	ldr	d7, [sp, #18360]
	ldr	d6, [sp, #18064]
	ldr	d16, [sp, #18072]
	mov	x9, x30
	mov	x10, x22
LBB17_579:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x4]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x4, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x4, x4, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_579
LBB17_580:
	add	x9, sp, #4, lsl #12             ; =16384
	add	x9, x9, #1664
	ldr	q0, [x9, x5]
	ldr	q1, [x9, x7]
	stp	q0, q1, [x8, #336]
	ldp	q0, q1, [x8, #864]
	str	q0, [sp, #15776]
	str	q1, [sp, #15792]
	cmp	w30, #0
	add	x13, sp, #8, lsl #12            ; =32768
	add	x13, x13, #896
	b.le	LBB17_583
; %bb.581:
	ldr	d0, [x19, #5232]
	ldr	d1, [x19, #5296]
	ldr	d2, [x19, #5304]
	ldr	d5, [x19, #5312]
	ldr	d3, [x19, #5320]
	ldr	d4, [x19, #5328]
	fneg	d5, d5
	ldr	d7, [sp, #16088]
	ldr	d6, [sp, #15792]
	ldr	d16, [sp, #15800]
	mov	x9, x30
	ldr	x10, [sp, #864]                 ; 8-byte Folded Reload
LBB17_582:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x3]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x3, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x3, x3, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_582
LBB17_583:
	add	x9, sp, #3, lsl #12             ; =12288
	add	x9, x9, #3488
	ldr	q0, [x9, x5]
	ldr	q1, [x9, x7]
	stp	q0, q1, [x8, #864]
	ldr	q0, [x8, #1392]
	ldr	q1, [x8, #1408]
	str	q0, [sp, #13504]
	str	q1, [sp, #13520]
	cmp	w30, #0
	ldr	x0, [sp, #616]                  ; 8-byte Folded Reload
	ldr	x3, [sp, #608]                  ; 8-byte Folded Reload
	b.le	LBB17_586
; %bb.584:
	ldr	d0, [x19, #5760]
	ldr	d1, [x19, #5824]
	ldr	d2, [x19, #5832]
	ldr	d5, [x19, #5840]
	ldr	d3, [x19, #5848]
	ldr	d4, [x19, #5856]
	fneg	d5, d5
	ldr	d7, [sp, #13816]
	ldr	d6, [sp, #13520]
	ldr	d16, [sp, #13528]
	mov	x9, x30
	mov	x10, x3
LBB17_585:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x2]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x2, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x2, x2, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_585
LBB17_586:
	add	x9, sp, #3, lsl #12             ; =12288
	add	x9, x9, #1216
	ldr	q0, [x9, x5]
	str	q0, [x8, #1392]
	ldr	q0, [x9, x7]
	str	q0, [x8, #1408]
	ldr	q0, [x8, #1920]
	ldr	q1, [x8, #1936]
	str	q0, [sp, #11232]
	str	q1, [sp, #11248]
	cmp	w30, #0
	ldr	x2, [sp, #4944]                 ; 8-byte Folded Reload
	b.le	LBB17_589
; %bb.587:
	ldr	d0, [x19, #6288]
	ldr	d1, [x19, #6352]
	ldr	d2, [x19, #6360]
	ldr	d5, [x19, #6368]
	ldr	d3, [x19, #6376]
	ldr	d4, [x19, #6384]
	fneg	d5, d5
	ldr	d7, [sp, #11544]
	ldr	d6, [sp, #11248]
	ldr	d16, [sp, #11256]
	mov	x9, x30
	mov	x10, x0
LBB17_588:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x2]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x2, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x2, x2, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_588
LBB17_589:
	add	x9, sp, #2, lsl #12             ; =8192
	add	x9, x9, #3040
	ldr	q0, [x9, x5]
	str	q0, [x8, #1920]
	ldr	q0, [x9, x7]
	str	q0, [x8, #1936]
	ldr	q0, [x8, #2448]
	ldr	q1, [x8, #2464]
	str	q0, [sp, #8960]
	str	q1, [sp, #8976]
	cmp	w30, #0
	b.le	LBB17_592
; %bb.590:
	ldr	d0, [x19, #6816]
	ldr	d1, [x19, #6880]
	ldr	d2, [x19, #6888]
	ldr	d5, [x19, #6896]
	ldr	d3, [x19, #6904]
	ldr	d4, [x19, #6912]
	fneg	d5, d5
	ldr	d7, [sp, #9272]
	ldr	d6, [sp, #8976]
	ldr	d16, [sp, #8984]
	mov	x9, x30
	mov	x10, x14
LBB17_591:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x1]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x1, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x1, x1, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_591
LBB17_592:
	add	x9, sp, #2, lsl #12             ; =8192
	add	x9, x9, #768
	ldr	q0, [x9, x5]
	str	q0, [x8, #2448]
	ldr	q0, [x9, x7]
	str	q0, [x8, #2464]
	ldr	q0, [x8, #2976]
	ldr	q1, [x8, #2992]
	str	q0, [sp, #6688]
	str	q1, [sp, #6704]
	cmp	w30, #0
	ldr	x1, [sp, #4952]                 ; 8-byte Folded Reload
	b.le	LBB17_595
; %bb.593:
	ldr	d0, [x19, #7344]
	ldr	d1, [x19, #7408]
	ldr	d2, [x19, #7416]
	ldr	d5, [x19, #7424]
	ldr	d3, [x19, #7432]
	ldr	d4, [x19, #7440]
	fneg	d5, d5
	ldr	d7, [sp, #7000]
	ldr	d6, [sp, #6704]
	ldr	d16, [sp, #6712]
	mov	x9, x30
	mov	x10, x12
LBB17_594:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x1]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x1, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x10], #8
	add	x1, x1, #8
	fmov	d7, d17
	subs	x9, x9, #1
	b.ne	LBB17_594
LBB17_595:
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #2592
	ldr	q0, [x9, x5]
	str	q0, [x8, #2976]
	ldr	q0, [x9, x7]
	str	q0, [x8, #2992]
	ldr	q0, [x19, #7712]
	ldr	q1, [x19, #7728]
	str	q0, [sp, #5536]
	str	q1, [sp, #5552]
	cmp	w30, #0
	ldr	x10, [sp, #848]                 ; 8-byte Folded Reload
	b.le	LBB17_598
; %bb.596:
	ldr	d0, [x19, #7616]
	ldr	d1, [x19, #7672]
	ldr	d2, [x19, #7680]
	ldr	d5, [x19, #7688]
	ldr	d3, [x19, #7696]
	ldr	d4, [x19, #7704]
	fneg	d5, d5
	ldr	d7, [sp, #5848]
	ldr	d6, [sp, #5552]
	ldr	d16, [sp, #5560]
	mov	x8, x30
	mov	x9, x11
LBB17_597:                              ; =>This Inner Loop Header: Depth=1
	fmul	d7, d2, d7
	ldr	d17, [x10]
	fmadd	d7, d1, d17, d7
	ldur	d18, [x10, #-16]
	fmadd	d7, d1, d18, d7
	fmul	d18, d4, d16
	fmadd	d6, d3, d6, d18
	fmul	d18, d6, d5
	fmov	d6, d16
	fmadd	d16, d0, d7, d18
	str	d16, [x9], #8
	add	x10, x10, #8
	fmov	d7, d17
	subs	x8, x8, #1
	b.ne	LBB17_597
LBB17_598:
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #3168
	add	x27, x8, #32
	add	x8, sp, #1, lsl #12             ; =4096
	add	x8, x8, #1440
	ldr	q0, [x8, x5]
	str	q0, [x19, #7712]
	ldr	q0, [x8, x7]
	str	q0, [x19, #7728]
	ldp	q0, q1, [x19, #640]
	str	q0, [sp, #35936]
	str	q1, [sp, #35952]
	cmp	w30, #0
	ldr	x10, [sp, #4840]                ; 8-byte Folded Reload
	ldr	x1, [sp, #864]                  ; 8-byte Folded Reload
	b.le	LBB17_601
; %bb.599:
	ldr	d0, [x19, #544]
	ldr	d1, [x19, #624]
	ldr	d2, [x19, #632]
	add	x8, sp, #3200
	ldr	d3, [x8, #32760]
	mov	x8, x30
	mov	x9, x27
	add	x21, sp, #3488
	ldr	d4, [x21, #32760]
LBB17_600:                              ; =>This Inner Loop Header: Depth=1
	fmul	d4, d2, d4
	ldr	d5, [x16]
	fmadd	d4, d1, d5, d4
	ldur	d6, [x16, #-16]
	fmadd	d4, d1, d6, d4
	fmul	d4, d0, d4
	fabs	d4, d4
	fmul	d4, d13, d4
	fmadd	d3, d3, d12, d4
	str	d3, [x9], #8
	add	x16, x16, #8
	fmov	d4, d5
	subs	x8, x8, #1
	b.ne	LBB17_600
LBB17_601:
	add	x16, x13, #32
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #3168
	ldr	q0, [x8, x5]
	ldr	q1, [x8, x7]
	stp	q0, q1, [x19, #640]
	ldr	q0, [x19, #1168]
	ldr	q1, [x19, #1184]
	str	q0, [sp, #33664]
	str	q1, [sp, #33680]
	cmp	w30, #0
	b.le	LBB17_604
; %bb.602:
	ldr	d0, [x19, #1088]
	ldr	d1, [x19, #1152]
	ldr	d2, [x19, #1160]
	add	x8, sp, #928
	ldr	d3, [x8, #32760]
	mov	x8, x30
	mov	x9, x16
	add	x13, sp, #1216
	ldr	d4, [x13, #32760]
LBB17_603:                              ; =>This Inner Loop Header: Depth=1
	fmul	d4, d2, d4
	ldr	d5, [x20]
	fmadd	d4, d1, d5, d4
	ldur	d6, [x20, #-16]
	fmadd	d4, d1, d6, d4
	fmul	d4, d0, d4
	fabs	d4, d4
	fmul	d4, d13, d4
	fmadd	d3, d12, d3, d4
	str	d3, [x9], #8
	add	x20, x20, #8
	fmov	d4, d5
	subs	x8, x8, #1
	b.ne	LBB17_603
LBB17_604:
	add	x8, sp, #7, lsl #12             ; =28672
	add	x8, x8, #2720
	add	x4, x8, #32
	add	x8, sp, #8, lsl #12             ; =32768
	add	x8, x8, #896
	ldr	q0, [x8, x5]
	str	q0, [x19, #1168]
	ldr	q0, [x8, x7]
	str	q0, [x19, #1184]
	ldr	q0, [x19, #1696]
	ldr	q1, [x19, #1712]
	str	q0, [sp, #31392]
	str	q1, [sp, #31408]
	cmp	w30, #0
	ldr	x13, [sp, #4960]                ; 8-byte Folded Reload
	b.le	LBB17_607
; %bb.605:
	ldr	d0, [x19, #1616]
	ldr	d1, [x19, #1680]
	ldr	d2, [x19, #1688]
	ldr	d3, [sp, #31416]
	mov	x8, x30
	mov	x9, x4
	ldr	d4, [sp, #31704]
LBB17_606:                              ; =>This Inner Loop Header: Depth=1
	fmul	d4, d2, d4
	ldr	d5, [x13]
	fmadd	d4, d1, d5, d4
	ldur	d6, [x13, #-16]
	fmadd	d4, d1, d6, d4
	fmul	d4, d0, d4
	fabs	d4, d4
	fmul	d4, d13, d4
	fmadd	d3, d12, d3, d4
	str	d3, [x9], #8
	add	x13, x13, #8
	fmov	d4, d5
	subs	x8, x8, #1
	b.ne	LBB17_606
LBB17_607:
	add	x8, sp, #7, lsl #12             ; =28672
	add	x8, x8, #448
	add	x20, x8, #32
	add	x8, sp, #7, lsl #12             ; =28672
	add	x8, x8, #2720
	ldr	q0, [x8, x5]
	str	q0, [x19, #1696]
	ldr	q0, [x8, x7]
	str	q0, [x19, #1712]
	ldr	q0, [x19, #2224]
	ldr	q1, [x19, #2240]
	str	q0, [sp, #29120]
	str	q1, [sp, #29136]
	cmp	w30, #0
	b.le	LBB17_610
; %bb.608:
	ldr	d0, [x19, #2144]
	ldr	d1, [x19, #2208]
	ldr	d2, [x19, #2216]
	ldr	d3, [sp, #29144]
	mov	x8, x30
	mov	x9, x20
	ldr	d4, [sp, #29432]
LBB17_609:                              ; =>This Inner Loop Header: Depth=1
	fmul	d4, d2, d4
	ldr	d5, [x17]
	fmadd	d4, d1, d5, d4
	ldur	d6, [x17, #-16]
	fmadd	d4, d1, d6, d4
	fmul	d4, d0, d4
	fabs	d4, d4
	fmul	d4, d13, d4
	fmadd	d3, d12, d3, d4
	str	d3, [x9], #8
	add	x17, x17, #8
	fmov	d4, d5
	subs	x8, x8, #1
	b.ne	LBB17_609
LBB17_610:
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #2272
	add	x17, x8, #32
	add	x8, sp, #7, lsl #12             ; =28672
	add	x8, x8, #448
	ldr	q0, [x8, x5]
	str	q0, [x19, #2224]
	ldr	q0, [x8, x7]
	str	q0, [x19, #2240]
	ldr	q0, [x19, #2752]
	ldr	q1, [x19, #2768]
	str	q0, [sp, #26848]
	str	q1, [sp, #26864]
	cmp	w30, #0
	ldr	x13, [sp, #856]                 ; 8-byte Folded Reload
	b.le	LBB17_613
; %bb.611:
	ldr	d0, [x19, #2672]
	ldr	d1, [x19, #2736]
	ldr	d2, [x19, #2744]
	ldr	d3, [sp, #26872]
	mov	x8, x30
	mov	x9, x17
	ldr	d4, [sp, #27160]
LBB17_612:                              ; =>This Inner Loop Header: Depth=1
	fmul	d4, d2, d4
	ldr	d5, [x13]
	fmadd	d4, d1, d5, d4
	ldur	d6, [x13, #-16]
	fmadd	d4, d1, d6, d4
	fmul	d4, d0, d4
	fabs	d4, d4
	fmul	d4, d13, d4
	fmadd	d3, d12, d3, d4
	str	d3, [x9], #8
	add	x13, x13, #8
	fmov	d4, d5
	subs	x8, x8, #1
	b.ne	LBB17_612
LBB17_613:
	add	x8, sp, #6, lsl #12             ; =24576
	add	x13, x8, #32
	add	x8, sp, #6, lsl #12             ; =24576
	add	x8, x8, #2272
	ldr	q0, [x8, x5]
	str	q0, [x19, #2752]
	ldr	q0, [x8, x7]
	str	q0, [x19, #2768]
	ldr	q0, [x19, #3280]
	ldr	q1, [x19, #3296]
	str	q0, [sp, #24576]
	str	q1, [sp, #24592]
	cmp	w30, #0
	b.le	LBB17_616
; %bb.614:
	ldr	d0, [x19, #3200]
	ldr	d1, [x19, #3264]
	ldr	d2, [x19, #3272]
	ldr	d3, [sp, #24600]
	mov	x8, x30
	mov	x9, x13
	ldr	d4, [sp, #24888]
LBB17_615:                              ; =>This Inner Loop Header: Depth=1
	fmul	d4, d2, d4
	ldr	d5, [x26]
	fmadd	d4, d1, d5, d4
	ldur	d6, [x26, #-16]
	fmadd	d4, d1, d6, d4
	fmul	d4, d0, d4
	fabs	d4, d4
	fmul	d4, d13, d4
	fmadd	d3, d12, d3, d4
	str	d3, [x9], #8
	add	x26, x26, #8
	fmov	d4, d5
	subs	x8, x8, #1
	b.ne	LBB17_615
LBB17_616:
	add	x8, sp, #5, lsl #12             ; =20480
	add	x8, x8, #1824
	add	x21, x8, #32
	add	x8, sp, #6, lsl #12             ; =24576
	ldr	q0, [x8, x5]
	str	q0, [x19, #3280]
	ldr	q0, [x8, x7]
	str	q0, [x19, #3296]
	ldr	q0, [x19, #3808]
	ldr	q1, [x19, #3824]
	str	q0, [sp, #22304]
	str	q1, [sp, #22320]
	cmp	w30, #0
	b.le	LBB17_619
; %bb.617:
	ldr	d0, [x19, #3728]
	ldr	d1, [x19, #3792]
	ldr	d2, [x19, #3800]
	ldr	d3, [sp, #22328]
	mov	x8, x30
	mov	x9, x21
	ldr	d4, [sp, #22616]
LBB17_618:                              ; =>This Inner Loop Header: Depth=1
	fmul	d4, d2, d4
	ldr	d5, [x6]
	fmadd	d4, d1, d5, d4
	ldur	d6, [x6, #-16]
	fmadd	d4, d1, d6, d4
	fmul	d4, d0, d4
	fabs	d4, d4
	fmul	d4, d13, d4
	fmadd	d3, d12, d3, d4
	str	d3, [x9], #8
	add	x6, x6, #8
	fmov	d4, d5
	subs	x8, x8, #1
	b.ne	LBB17_618
LBB17_619:
	add	x8, sp, #4, lsl #12             ; =16384
	add	x8, x8, #3648
	add	x25, x8, #32
	add	x8, sp, #5, lsl #12             ; =20480
	add	x8, x8, #1824
	ldr	q0, [x8, x5]
	str	q0, [x19, #3808]
	ldr	q0, [x8, x7]
	str	q0, [x19, #3824]
	ldr	q0, [x19, #4336]
	ldr	q1, [x19, #4352]
	str	q0, [sp, #20032]
	str	q1, [sp, #20048]
	cmp	w30, #0
	b.le	LBB17_622
; %bb.620:
	ldr	d0, [x19, #4256]
	ldr	d1, [x19, #4320]
	ldr	d2, [x19, #4328]
	ldr	d3, [sp, #20056]
	mov	x8, x30
	mov	x9, x25
	ldr	d4, [sp, #20344]
LBB17_621:                              ; =>This Inner Loop Header: Depth=1
	fmul	d4, d2, d4
	ldr	d5, [x15]
	fmadd	d4, d1, d5, d4
	ldur	d6, [x15, #-16]
	fmadd	d4, d1, d6, d4
	fmul	d4, d0, d4
	fabs	d4, d4
	fmul	d4, d13, d4
	fmadd	d3, d12, d3, d4
	str	d3, [x9], #8
	add	x15, x15, #8
	fmov	d4, d5
	subs	x8, x8, #1
	b.ne	LBB17_621
LBB17_622:
	add	x8, sp, #4, lsl #12             ; =16384
	add	x8, x8, #1376
	add	x15, x8, #32
	add	x8, sp, #4, lsl #12             ; =16384
	add	x8, x8, #3648
	ldr	q0, [x8, x5]
	str	q0, [x19, #4336]
	ldr	q0, [x8, x7]
	str	q0, [x19, #4352]
	ldr	q0, [x19, #4864]
	ldr	q1, [x19, #4880]
	str	q0, [sp, #17760]
	str	q1, [sp, #17776]
	cmp	w30, #0
	b.le	LBB17_625
; %bb.623:
	ldr	d0, [x19, #4784]
	ldr	d1, [x19, #4848]
	ldr	d2, [x19, #4856]
	ldr	d3, [sp, #17784]
	mov	x8, x30
	mov	x9, x15
	ldr	d4, [sp, #18072]
LBB17_624:                              ; =>This Inner Loop Header: Depth=1
	fmul	d4, d2, d4
	ldr	d5, [x22]
	fmadd	d4, d1, d5, d4
	ldur	d6, [x22, #-16]
	fmadd	d4, d1, d6, d4
	fmul	d4, d0, d4
	fabs	d4, d4
	fmul	d4, d13, d4
	fmadd	d3, d12, d3, d4
	str	d3, [x9], #8
	add	x22, x22, #8
	fmov	d4, d5
	subs	x8, x8, #1
	b.ne	LBB17_624
LBB17_625:
	add	x8, sp, #3, lsl #12             ; =12288
	add	x8, x8, #3200
	add	x22, x8, #32
	add	x8, sp, #4, lsl #12             ; =16384
	add	x8, x8, #1376
	ldr	q0, [x8, x5]
	str	q0, [x19, #4864]
	ldr	q0, [x8, x7]
	str	q0, [x19, #4880]
	ldr	q0, [x19, #5392]
	ldr	q1, [x19, #5408]
	str	q0, [sp, #15488]
	str	q1, [sp, #15504]
	cmp	w30, #0
	b.le	LBB17_628
; %bb.626:
	ldr	d0, [x19, #5312]
	ldr	d1, [x19, #5376]
	ldr	d2, [x19, #5384]
	ldr	d3, [sp, #15512]
	mov	x8, x30
	mov	x9, x22
	ldr	d4, [sp, #15800]
LBB17_627:                              ; =>This Inner Loop Header: Depth=1
	fmul	d4, d2, d4
	ldr	d5, [x1]
	fmadd	d4, d1, d5, d4
	ldur	d6, [x1, #-16]
	fmadd	d4, d1, d6, d4
	fmul	d4, d0, d4
	fabs	d4, d4
	fmul	d4, d13, d4
	fmadd	d3, d12, d3, d4
	str	d3, [x9], #8
	add	x1, x1, #8
	fmov	d4, d5
	subs	x8, x8, #1
	b.ne	LBB17_627
LBB17_628:
	add	x8, sp, #3, lsl #12             ; =12288
	add	x8, x8, #928
	add	x28, x8, #32
	add	x8, sp, #3, lsl #12             ; =12288
	add	x8, x8, #3200
	ldr	q0, [x8, x5]
	str	q0, [x19, #5392]
	ldr	q0, [x8, x7]
	str	q0, [x19, #5408]
	ldr	q0, [x19, #5920]
	ldr	q1, [x19, #5936]
	str	q0, [sp, #13216]
	str	q1, [sp, #13232]
	cmp	w30, #0
	b.le	LBB17_631
; %bb.629:
	ldr	d0, [x19, #5840]
	ldr	d1, [x19, #5904]
	ldr	d2, [x19, #5912]
	ldr	d3, [sp, #13240]
	mov	x8, x30
	mov	x9, x28
	ldr	d4, [sp, #13528]
LBB17_630:                              ; =>This Inner Loop Header: Depth=1
	fmul	d4, d2, d4
	ldr	d5, [x3]
	fmadd	d4, d1, d5, d4
	ldur	d6, [x3, #-16]
	fmadd	d4, d1, d6, d4
	fmul	d4, d0, d4
	fabs	d4, d4
	fmul	d4, d13, d4
	fmadd	d3, d12, d3, d4
	str	d3, [x9], #8
	add	x3, x3, #8
	fmov	d4, d5
	subs	x8, x8, #1
	b.ne	LBB17_630
LBB17_631:
	add	x8, sp, #2, lsl #12             ; =8192
	add	x8, x8, #2752
	add	x24, x8, #32
	add	x8, sp, #3, lsl #12             ; =12288
	add	x8, x8, #928
	ldr	q0, [x8, x5]
	str	q0, [x19, #5920]
	ldr	q0, [x8, x7]
	str	q0, [x19, #5936]
	ldr	q0, [x19, #6448]
	ldr	q1, [x19, #6464]
	str	q0, [sp, #10944]
	str	q1, [sp, #10960]
	cmp	w30, #0
	b.le	LBB17_634
; %bb.632:
	ldr	d0, [x19, #6368]
	ldr	d1, [x19, #6432]
	ldr	d2, [x19, #6440]
	ldr	d3, [sp, #10968]
	mov	x8, x30
	mov	x9, x24
	ldr	d4, [sp, #11256]
LBB17_633:                              ; =>This Inner Loop Header: Depth=1
	fmul	d4, d2, d4
	ldr	d5, [x0]
	fmadd	d4, d1, d5, d4
	ldur	d6, [x0, #-16]
	fmadd	d4, d1, d6, d4
	fmul	d4, d0, d4
	fabs	d4, d4
	fmul	d4, d13, d4
	fmadd	d3, d12, d3, d4
	str	d3, [x9], #8
	add	x0, x0, #8
	fmov	d4, d5
	subs	x8, x8, #1
	b.ne	LBB17_633
LBB17_634:
	add	x8, sp, #2, lsl #12             ; =8192
	add	x8, x8, #480
	add	x0, x8, #32
	add	x8, sp, #2, lsl #12             ; =8192
	add	x8, x8, #2752
	ldr	q0, [x8, x5]
	str	q0, [x19, #6448]
	ldr	q0, [x8, x7]
	str	q0, [x19, #6464]
	ldr	q0, [x19, #6976]
	ldr	q1, [x19, #6992]
	str	q0, [sp, #8672]
	str	q1, [sp, #8688]
	cmp	w30, #0
	b.le	LBB17_637
; %bb.635:
	ldr	d0, [x19, #6896]
	ldr	d1, [x19, #6960]
	ldr	d2, [x19, #6968]
	ldr	d3, [sp, #8696]
	mov	x8, x30
	mov	x9, x0
	ldr	d4, [sp, #8984]
LBB17_636:                              ; =>This Inner Loop Header: Depth=1
	fmul	d4, d2, d4
	ldr	d5, [x14]
	fmadd	d4, d1, d5, d4
	ldur	d6, [x14, #-16]
	fmadd	d4, d1, d6, d4
	fmul	d4, d0, d4
	fabs	d4, d4
	fmul	d4, d13, d4
	fmadd	d3, d12, d3, d4
	str	d3, [x9], #8
	add	x14, x14, #8
	fmov	d4, d5
	subs	x8, x8, #1
	b.ne	LBB17_636
LBB17_637:
	add	x8, sp, #1, lsl #12             ; =4096
	add	x8, x8, #2304
	add	x14, x8, #32
	add	x8, sp, #2, lsl #12             ; =8192
	add	x8, x8, #480
	ldr	q0, [x8, x5]
	str	q0, [x19, #6976]
	ldr	q0, [x8, x7]
	str	q0, [x19, #6992]
	ldr	q0, [x19, #7504]
	ldr	q1, [x19, #7520]
	str	q0, [sp, #6400]
	str	q1, [sp, #6416]
	cmp	w30, #0
	b.le	LBB17_640
; %bb.638:
	ldr	d0, [x19, #7424]
	ldr	d1, [x19, #7488]
	ldr	d2, [x19, #7496]
	ldr	d3, [sp, #6424]
	mov	x8, x30
	mov	x9, x14
	ldr	d4, [sp, #6712]
LBB17_639:                              ; =>This Inner Loop Header: Depth=1
	fmul	d4, d2, d4
	ldr	d5, [x12]
	fmadd	d4, d1, d5, d4
	ldur	d6, [x12, #-16]
	fmadd	d4, d1, d6, d4
	fmul	d4, d0, d4
	fabs	d4, d4
	fmul	d4, d13, d4
	fmadd	d3, d12, d3, d4
	str	d3, [x9], #8
	add	x12, x12, #8
	fmov	d4, d5
	subs	x8, x8, #1
	b.ne	LBB17_639
LBB17_640:
	add	x8, sp, #1, lsl #12             ; =4096
	add	x8, x8, #2304
	ldr	q0, [x8, x5]
	str	q0, [x19, #7504]
	ldr	q0, [x8, x7]
	str	q0, [x19, #7520]
	ldr	q0, [x19, #7760]
	ldr	q1, [x19, #7776]
	str	q0, [sp, #5248]
	str	q1, [sp, #5264]
	cmp	w30, #0
	b.le	LBB17_646
; %bb.641:
	mov	w12, w10
	add	x8, sp, #1, lsl #12             ; =4096
	add	x8, x8, #1152
	add	x23, x8, #32
	ldr	d0, [x19, #7688]
	ldr	d1, [x19, #7744]
	ldr	d2, [x19, #7752]
	ldr	d3, [sp, #5272]
	mov	x8, x30
	mov	x9, x23
	ldr	d4, [sp, #5560]
LBB17_642:                              ; =>This Inner Loop Header: Depth=1
	fmul	d4, d2, d4
	ldr	d5, [x11]
	fmadd	d4, d1, d5, d4
	ldur	d6, [x11, #-16]
	fmadd	d4, d1, d6, d4
	fmul	d4, d0, d4
	fabs	d4, d4
	fmul	d4, d13, d4
	fmadd	d3, d12, d3, d4
	str	d3, [x9], #8
	add	x11, x11, #8
	fmov	d4, d5
	subs	x8, x8, #1
	b.ne	LBB17_642
; %bb.643:
	add	x8, sp, #1, lsl #12             ; =4096
	add	x8, x8, #1152
	ldr	q0, [x8, x5]
	str	q0, [x19, #7760]
	ldr	q0, [x8, x7]
	str	q0, [x19, #7776]
	cmp	w30, #0
	b.le	LBB17_680
; %bb.644:
	mov	x26, x30
	str	x23, [sp, #4928]                ; 8-byte Folded Spill
	str	x14, [sp, #4936]                ; 8-byte Folded Spill
	str	x0, [sp, #4944]                 ; 8-byte Folded Spill
	str	x22, [sp, #4960]                ; 8-byte Folded Spill
	str	x15, [sp, #4968]                ; 8-byte Folded Spill
	str	x12, [sp, #4976]                ; 8-byte Folded Spill
	str	x21, [sp, #4952]                ; 8-byte Folded Spill
	str	x13, [sp, #4984]                ; 8-byte Folded Spill
	mov	x23, x17
	mov	x22, x20
	mov	x21, x4
	mov	x20, x16
	mvn	w8, w10
	ldr	w9, [sp, #12]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	ubfiz	x8, x8, #3, #32
	add	x0, sp, #1, lsl #12             ; =4096
	add	x0, x0, #896
	add	x1, sp, #9, lsl #12             ; =36864
	add	x1, x1, #224
	add	x2, x8, #8
	bl	_memcpy
	cmp	w26, #3
	b.hi	LBB17_647
; %bb.645:
	mov	x8, #0                          ; =0x0
	ldr	x16, [sp, #4952]                ; 8-byte Folded Reload
	ldr	x3, [sp, #4928]                 ; 8-byte Folded Reload
	b	LBB17_651
LBB17_646:
	add	x8, sp, #1, lsl #12             ; =4096
	add	x8, x8, #1152
	ldr	q0, [x8, x5]
	str	q0, [x19, #7760]
	ldr	q0, [x8, x7]
	str	q0, [x19, #7776]
	b	LBB17_680
LBB17_647:
	and	x8, x26, #0x7ffffffc
	mov	x9, x8
LBB17_648:                              ; =>This Inner Loop Header: Depth=1
	subs	x9, x9, #4
	b.ne	LBB17_648
; %bb.649:
	cmp	x8, x26
	ldr	x16, [sp, #4952]                ; 8-byte Folded Reload
	ldr	x3, [sp, #4928]                 ; 8-byte Folded Reload
	b.ne	LBB17_651
; %bb.650:
	sub	x8, x8, #1
	ldr	x0, [sp, #4960]                 ; 8-byte Folded Reload
	b	LBB17_654
LBB17_651:
	mov	w9, #1                          ; =0x1
	sub	x8, x9, x8
	ldr	x0, [sp, #4960]                 ; 8-byte Folded Reload
LBB17_652:                              ; =>This Inner Loop Header: Depth=1
	sub	x8, x8, #1
	add	x9, x26, x8
	cmp	x9, #1
	b.ne	LBB17_652
; %bb.653:
	neg	x8, x8
LBB17_654:
	ldr	d0, [x3, x8, lsl #3]
	str	d0, [sp, #4960]                 ; 8-byte Folded Spill
	ldr	x9, [sp, #4936]                 ; 8-byte Folded Reload
	ldr	d0, [x9, x8, lsl #3]
	str	d0, [sp, #4952]                 ; 8-byte Folded Spill
	ldr	x9, [sp, #4944]                 ; 8-byte Folded Reload
	ldr	d0, [x9, x8, lsl #3]
	str	d0, [sp, #4944]                 ; 8-byte Folded Spill
	ldr	d0, [x24, x8, lsl #3]
	str	d0, [sp, #4936]                 ; 8-byte Folded Spill
	ldr	d0, [x28, x8, lsl #3]
	str	d0, [sp, #4920]                 ; 8-byte Folded Spill
	ldr	d0, [x0, x8, lsl #3]
	str	d0, [sp, #4896]                 ; 8-byte Folded Spill
	ldr	x9, [sp, #4968]                 ; 8-byte Folded Reload
	ldr	d0, [x9, x8, lsl #3]
	str	d0, [sp, #4880]                 ; 8-byte Folded Spill
	ldr	d0, [x25, x8, lsl #3]
	str	d0, [sp, #4864]                 ; 8-byte Folded Spill
	ldr	d8, [x16, x8, lsl #3]
	ldr	x9, [sp, #4984]                 ; 8-byte Folded Reload
	ldr	d9, [x9, x8, lsl #3]
	ldr	d10, [x23, x8, lsl #3]
	ldr	d11, [x22, x8, lsl #3]
	ldr	d12, [x21, x8, lsl #3]
	ldr	d13, [x20, x8, lsl #3]
	ldr	d0, [x27, x8, lsl #3]
	bl	_log10
	fmov	d14, #20.00000000
	ldr	d15, [sp, #384]                 ; 8-byte Folded Reload
	fmadd	d0, d0, d14, d15
	fcvt	s0, d0
	str	s0, [sp, #4984]                 ; 4-byte Folded Spill
	fmov	d0, d13
	bl	_log10
	fmadd	d0, d0, d14, d15
	fcvt	s0, d0
	str	s0, [sp, #4968]                 ; 4-byte Folded Spill
	fmov	d0, d12
	bl	_log10
	fmadd	d0, d0, d14, d15
	fcvt	s0, d0
	str	s0, [sp, #4928]                 ; 4-byte Folded Spill
	fmov	d0, d11
	bl	_log10
	fmadd	d0, d0, d14, d15
	fcvt	s0, d0
	str	s0, [sp, #4912]                 ; 4-byte Folded Spill
	fmov	d0, d10
	bl	_log10
	fmadd	d0, d0, d14, d15
	fcvt	s0, d0
	str	s0, [sp, #4904]                 ; 4-byte Folded Spill
	fmov	d0, d9
	bl	_log10
	fmadd	d0, d0, d14, d15
	fcvt	s0, d0
	str	s0, [sp, #4888]                 ; 4-byte Folded Spill
	fmov	d0, d8
	bl	_log10
	fmadd	d0, d0, d14, d15
	fcvt	s0, d0
	str	s0, [sp, #4872]                 ; 4-byte Folded Spill
	ldr	d0, [sp, #4864]                 ; 8-byte Folded Reload
	bl	_log10
	fmadd	d0, d0, d14, d15
	fcvt	s0, d0
	str	s0, [sp, #4864]                 ; 4-byte Folded Spill
	ldr	d0, [sp, #4880]                 ; 8-byte Folded Reload
	bl	_log10
	fmadd	d0, d0, d14, d15
	fcvt	s13, d0
	ldr	d0, [sp, #4896]                 ; 8-byte Folded Reload
	bl	_log10
	fmadd	d0, d0, d14, d15
	fcvt	s12, d0
	ldr	d0, [sp, #4920]                 ; 8-byte Folded Reload
	bl	_log10
	fmadd	d0, d0, d14, d15
	fcvt	s11, d0
	ldr	d0, [sp, #4936]                 ; 8-byte Folded Reload
	bl	_log10
	fmadd	d0, d0, d14, d15
	fcvt	s10, d0
	ldr	d0, [sp, #4944]                 ; 8-byte Folded Reload
	bl	_log10
	fmadd	d0, d0, d14, d15
	fcvt	s9, d0
	ldr	d0, [sp, #4952]                 ; 8-byte Folded Reload
	bl	_log10
	fmadd	d0, d0, d14, d15
	fcvt	s8, d0
	ldr	d0, [sp, #4960]                 ; 8-byte Folded Reload
	bl	_log10
	ldr	s1, [sp, #4984]                 ; 4-byte Folded Reload
	str	s1, [x19, #7796]
	fmadd	d0, d0, d14, d15
	fcvt	s0, d0
	ldr	s1, [sp, #4968]                 ; 4-byte Folded Reload
	str	s1, [x19, #7800]
	ldr	s1, [sp, #4928]                 ; 4-byte Folded Reload
	str	s1, [x19, #7804]
	ldr	s1, [sp, #4912]                 ; 4-byte Folded Reload
	str	s1, [x19, #7808]
	ldr	s1, [sp, #4904]                 ; 4-byte Folded Reload
	str	s1, [x19, #7812]
	ldr	s1, [sp, #4888]                 ; 4-byte Folded Reload
	str	s1, [x19, #7816]
	ldr	s1, [sp, #4872]                 ; 4-byte Folded Reload
	str	s1, [x19, #7820]
	ldr	s1, [sp, #4864]                 ; 4-byte Folded Reload
	str	s1, [x19, #7824]
	str	s13, [x19, #7828]
	str	s12, [x19, #7832]
	str	s11, [x19, #7836]
	str	s10, [x19, #7840]
	str	s9, [x19, #7844]
	str	s8, [x19, #7848]
	str	s0, [x19, #7852]
	ldr	x13, [sp, #4800]                ; 8-byte Folded Reload
	cmp	w13, #1
	b.ne	LBB17_656
; %bb.655:
	mov	x8, #0                          ; =0x0
	ldr	x12, [sp, #392]                 ; 8-byte Folded Reload
	ldr	x14, [sp, #4976]                ; 8-byte Folded Reload
	b	LBB17_665
LBB17_656:
	cmp	w13, #16
	ldr	x12, [sp, #392]                 ; 8-byte Folded Reload
	ldr	x14, [sp, #4976]                ; 8-byte Folded Reload
	b.hs	LBB17_658
; %bb.657:
	mov	x8, #0                          ; =0x0
	b	LBB17_662
LBB17_658:
	and	x8, x13, #0x7ffffff0
	add	x9, x12, x14, lsl #2
	add	x9, x9, #32
	add	x10, sp, #1, lsl #12            ; =4096
	add	x10, x10, #896
	add	x10, x10, #64
	mov	x11, x8
LBB17_659:                              ; =>This Inner Loop Header: Depth=1
	ldp	q1, q0, [x10, #-64]
	ldp	q3, q2, [x10, #-32]
	ldp	q5, q4, [x10]
	ldp	q7, q6, [x10, #32]
	fcvtn	v1.2s, v1.2d
	fcvtn2	v1.4s, v0.2d
	fcvtn	v0.2s, v3.2d
	fcvtn2	v0.4s, v2.2d
	fcvtn	v2.2s, v5.2d
	fcvtn2	v2.4s, v4.2d
	fcvtn	v3.2s, v7.2d
	fcvtn2	v3.4s, v6.2d
	stp	q1, q0, [x9, #-32]
	stp	q2, q3, [x9], #64
	add	x10, x10, #128
	subs	x11, x11, #16
	b.ne	LBB17_659
; %bb.660:
	cmp	x8, x13
	b.eq	LBB17_667
; %bb.661:
	tst	x13, #0xe
	b.eq	LBB17_665
LBB17_662:
	mov	x11, x8
	and	x8, x13, #0x7ffffffe
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #896
	add	x9, x9, x11, lsl #3
	lsl	x10, x11, #2
	add	x10, x10, x14, lsl #2
	add	x10, x12, x10
	sub	x11, x11, x8
LBB17_663:                              ; =>This Inner Loop Header: Depth=1
	ldr	q0, [x9], #16
	fcvtn	v0.2s, v0.2d
	str	d0, [x10], #8
	adds	x11, x11, #2
	b.ne	LBB17_663
; %bb.664:
	cmp	x8, x13
	b.eq	LBB17_667
LBB17_665:
	lsl	x9, x8, #2
	add	x9, x9, x14, lsl #2
	add	x9, x12, x9
	add	x10, sp, #1, lsl #12            ; =4096
	add	x10, x10, #896
	add	x10, x10, x8, lsl #3
	sub	x8, x13, x8
LBB17_666:                              ; =>This Inner Loop Header: Depth=1
	ldr	d0, [x10], #8
	fcvt	s0, d0
	str	s0, [x9], #4
	subs	x8, x8, #1
	b.ne	LBB17_666
LBB17_667:
	cmp	w13, #1
	b.ne	LBB17_669
; %bb.668:
	mov	x8, #0                          ; =0x0
	b	LBB17_678
LBB17_669:
	cmp	w13, #16
	b.hs	LBB17_671
; %bb.670:
	mov	x8, #0                          ; =0x0
	b	LBB17_675
LBB17_671:
	and	x8, x13, #0x7ffffff0
	ldr	x9, [sp, #400]                  ; 8-byte Folded Reload
	add	x9, x9, x14, lsl #2
	add	x9, x9, #32
	add	x10, sp, #1, lsl #12            ; =4096
	add	x10, x10, #896
	add	x10, x10, #64
	mov	x11, x8
LBB17_672:                              ; =>This Inner Loop Header: Depth=1
	ldp	q1, q0, [x10, #-64]
	ldp	q3, q2, [x10, #-32]
	ldp	q5, q4, [x10]
	ldp	q7, q6, [x10, #32]
	fcvtn	v1.2s, v1.2d
	fcvtn2	v1.4s, v0.2d
	fcvtn	v0.2s, v3.2d
	fcvtn2	v0.4s, v2.2d
	fcvtn	v2.2s, v5.2d
	fcvtn2	v2.4s, v4.2d
	fcvtn	v3.2s, v7.2d
	fcvtn2	v3.4s, v6.2d
	stp	q1, q0, [x9, #-32]
	stp	q2, q3, [x9], #64
	add	x10, x10, #128
	subs	x11, x11, #16
	b.ne	LBB17_672
; %bb.673:
	cmp	x8, x13
	b.eq	LBB17_680
; %bb.674:
	tst	x13, #0xe
	b.eq	LBB17_678
LBB17_675:
	mov	x11, x8
	and	x8, x13, #0x7ffffffe
	add	x9, sp, #1, lsl #12             ; =4096
	add	x9, x9, #896
	add	x9, x9, x11, lsl #3
	lsl	x10, x11, #2
	add	x10, x10, x14, lsl #2
	ldr	x12, [sp, #400]                 ; 8-byte Folded Reload
	add	x10, x12, x10
	sub	x11, x11, x8
LBB17_676:                              ; =>This Inner Loop Header: Depth=1
	ldr	q0, [x9], #16
	fcvtn	v0.2s, v0.2d
	str	d0, [x10], #8
	adds	x11, x11, #2
	b.ne	LBB17_676
; %bb.677:
	cmp	x8, x13
	b.eq	LBB17_680
LBB17_678:
	lsl	x9, x8, #2
	add	x9, x9, x14, lsl #2
	ldr	x10, [sp, #400]                 ; 8-byte Folded Reload
	add	x9, x10, x9
	add	x10, sp, #1, lsl #12            ; =4096
	add	x10, x10, #896
	add	x10, x10, x8, lsl #3
	sub	x8, x13, x8
LBB17_679:                              ; =>This Inner Loop Header: Depth=1
	ldr	d0, [x10], #8
	fcvt	s0, d0
	str	s0, [x9], #4
	subs	x8, x8, #1
	b.ne	LBB17_679
LBB17_680:
	ldur	x8, [x29, #-168]
Lloh285:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh286:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh287:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB17_682
; %bb.681:
	add	sp, sp, #10, lsl #12            ; =40960
	add	sp, sp, #144
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #128]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #32]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #16]             ; 16-byte Folded Reload
	ldp	d15, d14, [sp], #160            ; 16-byte Folded Reload
	ret
