;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Single
;;
define linkonce_odr void @_ZN5mydsp7computeEiPPfS1_(ptr noundef %0, i32 noundef %1, ptr noalias noundef %2, ptr noalias noundef %3) unnamed_addr #7 {
  %5 = load ptr, ptr %3, align 8, !tbaa !20
  %6 = getelementptr inbounds i8, ptr %0, i64 20
  %7 = load float, ptr %6, align 4, !tbaa !17
  %8 = getelementptr inbounds i8, ptr %0, i64 16
  %9 = load float, ptr %8, align 8, !tbaa !31
  %10 = fmul float %7, %9
  %11 = fadd float %10, 1.000000e+00
  %12 = fdiv float 1.000000e+00, %11
  %13 = getelementptr inbounds i8, ptr %0, i64 32
  %14 = load float, ptr %13, align 8, !tbaa !34
  %15 = fmul float %9, %14
  %16 = fmul float %7, %15
  %17 = getelementptr inbounds i8, ptr %0, i64 40
  %18 = load float, ptr %17, align 8, !tbaa !35
  %19 = fcmp olt float %18, 0x403772EE60000000
  %20 = select i1 %19, float 0x403772EE60000000, float %18
  %21 = tail call float @llvm.fabs.f32(float %18)
  %22 = select i1 %19, float 0x403772EE60000000, float %21
  %23 = fcmp ogt float %22, 2.000000e+01
  %24 = select i1 %23, float %22, float 2.000000e+01
  %25 = fdiv float 1.000000e+00, %24
  %26 = getelementptr inbounds i8, ptr %0, i64 44
  %27 = load float, ptr %26, align 4, !tbaa !33
  %28 = fmul float %27, %24
  %29 = getelementptr inbounds i8, ptr %0, i64 64
  %30 = load float, ptr %29, align 8, !tbaa !18
  %31 = fadd float %18, %30
  %32 = fcmp olt float %31, 0x403772EE60000000
  %33 = select i1 %32, float 0x403772EE60000000, float %31
  %34 = tail call float @llvm.fabs.f32(float %31)
  %35 = select i1 %32, float 0x403772EE60000000, float %34
  %36 = fcmp ogt float %35, 2.000000e+01
  %37 = select i1 %36, float %35, float 2.000000e+01
  %38 = fdiv float 1.000000e+00, %37
  %39 = fmul float %27, %37
  %40 = getelementptr inbounds i8, ptr %0, i64 84
  %41 = load float, ptr %40, align 4, !tbaa !16
  %42 = fdiv float %41, %33
  %43 = fcmp olt float %42, 2.047000e+03
  %44 = select i1 %43, float %42, float 2.047000e+03
  %45 = fcmp ogt float %44, 0.000000e+00
  %46 = select i1 %45, float %44, float 0.000000e+00
  %47 = fptosi float %46 to i32
  %48 = sitofp i32 %47 to float
  %49 = fsub float %46, %48
  %50 = getelementptr inbounds i8, ptr %0, i64 36
  %51 = load float, ptr %50, align 4, !tbaa !32
  %52 = fdiv float %51, %37
  %53 = xor i32 %47, -1
  %54 = fdiv float %41, %20
  %55 = fcmp olt float %54, 2.047000e+03
  %56 = select i1 %55, float %54, float 2.047000e+03
  %57 = fcmp ogt float %56, 0.000000e+00
  %58 = select i1 %57, float %56, float 0.000000e+00
  %59 = fptosi float %58 to i32
  %60 = sitofp i32 %59 to float
  %61 = fsub float 1.000000e+00, %58
  %62 = fadd float %61, %60
  %63 = fdiv float %51, %24
  %64 = fsub float %58, %60
  %65 = xor i32 %59, -1
  %66 = fsub float 1.000000e+00, %46
  %67 = fadd float %66, %48
  %68 = icmp sgt i32 %1, 0
  br i1 %68, label %69, label %220
69:                                               ; preds = %4
  %70 = getelementptr inbounds i8, ptr %0, i64 32892
  %71 = load float, ptr %70, align 4, !tbaa !19
  %72 = getelementptr inbounds i8, ptr %0, i64 28
  %73 = getelementptr inbounds i8, ptr %0, i64 48
  %74 = getelementptr inbounds i8, ptr %0, i64 52
  %75 = getelementptr inbounds i8, ptr %0, i64 56
  %76 = getelementptr inbounds i8, ptr %0, i64 60
  %77 = getelementptr inbounds i8, ptr %0, i64 68
  %78 = getelementptr inbounds i8, ptr %0, i64 72
  %79 = getelementptr inbounds i8, ptr %0, i64 76
  %80 = getelementptr inbounds i8, ptr %0, i64 80
  %81 = getelementptr inbounds i8, ptr %0, i64 92
  %82 = getelementptr inbounds i8, ptr %0, i64 88
  %83 = getelementptr inbounds i8, ptr %0, i64 16476
  %84 = getelementptr inbounds i8, ptr %0, i64 32860
  %85 = getelementptr inbounds i8, ptr %0, i64 32864
  %86 = getelementptr inbounds i8, ptr %0, i64 32868
  %87 = getelementptr inbounds i8, ptr %0, i64 32872
  %88 = getelementptr inbounds i8, ptr %0, i64 32876
  %89 = getelementptr inbounds i8, ptr %0, i64 32880
  %90 = getelementptr inbounds i8, ptr %0, i64 32884
  %91 = getelementptr inbounds i8, ptr %0, i64 32888
  %92 = getelementptr inbounds i8, ptr %0, i64 32896
  %93 = getelementptr inbounds i8, ptr %0, i64 32900
  %94 = getelementptr inbounds i8, ptr %0, i64 32904
  %95 = getelementptr inbounds i8, ptr %0, i64 32908
  %96 = getelementptr inbounds i8, ptr %0, i64 32912
  %97 = getelementptr inbounds i8, ptr %0, i64 32916
  %98 = getelementptr inbounds i8, ptr %0, i64 32920
  %99 = getelementptr inbounds i8, ptr %0, i64 32924
  %100 = fmul float %71, 0xBFD5555560000000
  %101 = load i32, ptr %72, align 4, !tbaa !36
  %102 = load i32, ptr %82, align 8, !tbaa !37
  %103 = sitofp i32 %101 to float
  %104 = zext nneg i32 %1 to i64
  %105 = load float, ptr %74, align 4, !tbaa !15
  %106 = fadd float %28, %105
  %107 = tail call float @llvm.floor.f32(float %106)
  %108 = fsub float %105, %107
  %109 = fadd float %28, %108
  store float %109, ptr %73, align 8, !tbaa !15
  %110 = tail call float @llvm.fmuladd.f32(float %109, float 2.000000e+00, float -1.000000e+00)
  %111 = fmul float %110, %110
  store float %111, ptr %75, align 8, !tbaa !15
  %112 = load float, ptr %76, align 4, !tbaa !15
  %113 = fsub float %111, %112
  %114 = load float, ptr %78, align 4, !tbaa !15
  %115 = fadd float %39, %114
  %116 = tail call float @llvm.floor.f32(float %115)
  %117 = fsub float %114, %116
  %118 = fadd float %39, %117
  store float %118, ptr %77, align 4, !tbaa !15
  %119 = tail call float @llvm.fmuladd.f32(float %118, float 2.000000e+00, float -1.000000e+00)
  %120 = fmul float %119, %119
  store float %120, ptr %79, align 4, !tbaa !15
  %121 = load float, ptr %80, align 4, !tbaa !15
  %122 = fsub float %120, %121
  %123 = fmul float %52, %103
  %124 = fmul float %123, %122
  %125 = and i32 %102, 4095
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds [4096 x float], ptr %81, i64 0, i64 %126
  store float %124, ptr %127, align 4, !tbaa !15
  %128 = fmul float %63, %103
  %129 = fmul float %128, %113
  %130 = getelementptr inbounds [4096 x float], ptr %83, i64 0, i64 %126
  store float %129, ptr %130, align 4, !tbaa !15
  %131 = fmul float %51, %103
  %132 = fmul float %38, %122
  %133 = tail call float @llvm.fmuladd.f32(float %25, float %113, float %132)
  %134 = add i32 %102, %53
  %135 = and i32 %134, 4095
  %136 = zext nneg i32 %135 to i64
  %137 = getelementptr inbounds [4096 x float], ptr %81, i64 0, i64 %136
  %138 = load float, ptr %137, align 4, !tbaa !15
  %139 = sub nsw i32 %102, %59
  %140 = and i32 %139, 4095
  %141 = zext nneg i32 %140 to i64
  %142 = getelementptr inbounds [4096 x float], ptr %83, i64 0, i64 %141
  %143 = load float, ptr %142, align 4, !tbaa !15
  %144 = fmul float %62, %143
  %145 = tail call float @llvm.fmuladd.f32(float %49, float %138, float %144)
  %146 = add i32 %102, %65
  %147 = and i32 %146, 4095
  %148 = zext nneg i32 %147 to i64
  %149 = getelementptr inbounds [4096 x float], ptr %83, i64 0, i64 %148
  %150 = load float, ptr %149, align 4, !tbaa !15
  %151 = tail call float @llvm.fmuladd.f32(float %64, float %150, float %145)
  %152 = sub nsw i32 %102, %47
  %153 = and i32 %152, 4095
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds [4096 x float], ptr %81, i64 0, i64 %154
  %156 = load float, ptr %155, align 4, !tbaa !15
  %157 = tail call float @llvm.fmuladd.f32(float %67, float %156, float %151)
  %158 = fneg float %157
  %159 = tail call float @llvm.fmuladd.f32(float %131, float %133, float %158)
  %160 = load float, ptr %85, align 4, !tbaa !15
  %161 = tail call float @llvm.fmuladd.f32(float %16, float %159, float %160)
  %162 = fmul float %12, %161
  store float %162, ptr %84, align 4, !tbaa !15
  %163 = load float, ptr %87, align 4, !tbaa !15
  %164 = tail call float @llvm.fmuladd.f32(float %10, float %162, float %163)
  %165 = fmul float %12, %164
  store float %165, ptr %86, align 4, !tbaa !15
  %166 = load float, ptr %89, align 4, !tbaa !15
  %167 = tail call float @llvm.fmuladd.f32(float %10, float %165, float %166)
  %168 = fmul float %12, %167
  store float %168, ptr %88, align 4, !tbaa !15
  %169 = load float, ptr %91, align 4, !tbaa !15
  %170 = tail call float @llvm.fmuladd.f32(float %10, float %168, float %169)
  %171 = fmul float %12, %170
  store float %171, ptr %90, align 4, !tbaa !15
  %172 = fmul float %162, %162
  %173 = fmul float %162, %172
  %174 = load float, ptr %93, align 4, !tbaa !15
  %175 = fmul float %14, %159
  %176 = fmul float %175, %175
  %177 = fmul float %175, %176
  %178 = fsub float %177, %173
  %179 = tail call float @llvm.fmuladd.f32(float %10, float %178, float %174)
  %180 = fmul float %12, %179
  store float %180, ptr %92, align 8, !tbaa !15
  %181 = fmul float %165, %165
  %182 = fmul float %165, %181
  %183 = load float, ptr %95, align 4, !tbaa !15
  %184 = fadd float %173, %180
  %185 = fsub float %184, %182
  %186 = tail call float @llvm.fmuladd.f32(float %10, float %185, float %183)
  %187 = fmul float %12, %186
  store float %187, ptr %94, align 8, !tbaa !15
  %188 = fmul float %168, %168
  %189 = fmul float %168, %188
  %190 = load float, ptr %97, align 4, !tbaa !15
  %191 = fadd float %182, %187
  %192 = fsub float %191, %189
  %193 = tail call float @llvm.fmuladd.f32(float %10, float %192, float %190)
  %194 = fmul float %12, %193
  store float %194, ptr %96, align 8, !tbaa !15
  %195 = load float, ptr %99, align 4, !tbaa !15
  %196 = fadd float %189, %194
  %197 = fmul float %171, %171
  %198 = fmul float %171, %197
  %199 = fsub float %196, %198
  %200 = tail call float @llvm.fmuladd.f32(float %10, float %199, float %195)
  %201 = fmul float %12, %200
  store float %201, ptr %98, align 8, !tbaa !15
  %202 = tail call float @llvm.fmuladd.f32(float %100, float %201, float %171)
  store float %202, ptr %5, align 4, !tbaa !15
  %203 = load float, ptr %73, align 8, !tbaa !15
  store float %203, ptr %74, align 4, !tbaa !15
  %204 = load float, ptr %75, align 8, !tbaa !15
  store float %204, ptr %76, align 4, !tbaa !15
  %205 = load float, ptr %77, align 4, !tbaa !15
  store float %205, ptr %78, align 4, !tbaa !15
  %206 = load float, ptr %79, align 4, !tbaa !15
  store float %206, ptr %80, align 4, !tbaa !15
  %207 = add nsw i32 %102, 1
  %208 = load float, ptr %84, align 4, !tbaa !15
  store float %208, ptr %85, align 4, !tbaa !15
  %209 = load float, ptr %86, align 4, !tbaa !15
  store float %209, ptr %87, align 4, !tbaa !15
  %210 = load float, ptr %88, align 4, !tbaa !15
  store float %210, ptr %89, align 4, !tbaa !15
  %211 = load float, ptr %90, align 4, !tbaa !15
  store float %211, ptr %91, align 4, !tbaa !15
  %212 = load float, ptr %92, align 8, !tbaa !15
  store float %212, ptr %93, align 4, !tbaa !15
  %213 = load float, ptr %94, align 8, !tbaa !15
  store float %213, ptr %95, align 4, !tbaa !15
  %214 = load float, ptr %96, align 8, !tbaa !15
  store float %214, ptr %97, align 4, !tbaa !15
  %215 = load float, ptr %98, align 8, !tbaa !15
  store float %215, ptr %99, align 4, !tbaa !15
  %216 = icmp eq i32 %1, 1
  br i1 %216, label %217, label %221
217:                                              ; preds = %221, %69
  %218 = phi i32 [ %207, %69 ], [ %325, %221 ]
  %219 = getelementptr inbounds i8, ptr %0, i64 24
  store <2 x i32> <i32 1, i32 1>, ptr %219, align 8, !tbaa !36
  store i32 %218, ptr %82, align 8, !tbaa !37
  br label %220
220:                                              ; preds = %217, %4
  ret void
221:                                              ; preds = %69, %221
  %222 = phi float [ %332, %221 ], [ %214, %69 ]
  %223 = phi float [ %331, %221 ], [ %213, %69 ]
  %224 = phi float [ %330, %221 ], [ %212, %69 ]
  %225 = phi float [ %329, %221 ], [ %211, %69 ]
  %226 = phi float [ %328, %221 ], [ %210, %69 ]
  %227 = phi float [ %327, %221 ], [ %209, %69 ]
  %228 = phi float [ %326, %221 ], [ %208, %69 ]
  %229 = phi float [ %324, %221 ], [ %206, %69 ]
  %230 = phi float [ %323, %221 ], [ %205, %69 ]
  %231 = phi float [ %322, %221 ], [ %204, %69 ]
  %232 = phi float [ %321, %221 ], [ %203, %69 ]
  %233 = phi i64 [ %334, %221 ], [ 1, %69 ]
  %234 = phi i32 [ %325, %221 ], [ %207, %69 ]
  %235 = fadd float %28, %232
  %236 = tail call float @llvm.floor.f32(float %235)
  %237 = fsub float %232, %236
  %238 = fadd float %28, %237
  store float %238, ptr %73, align 8, !tbaa !15
  %239 = tail call float @llvm.fmuladd.f32(float %238, float 2.000000e+00, float -1.000000e+00)
  %240 = fmul float %239, %239
  store float %240, ptr %75, align 8, !tbaa !15
  %241 = fsub float %240, %231
  %242 = fadd float %39, %230
  %243 = tail call float @llvm.floor.f32(float %242)
  %244 = fsub float %230, %243
  %245 = fadd float %39, %244
  store float %245, ptr %77, align 4, !tbaa !15
  %246 = tail call float @llvm.fmuladd.f32(float %245, float 2.000000e+00, float -1.000000e+00)
  %247 = fmul float %246, %246
  store float %247, ptr %79, align 4, !tbaa !15
  %248 = fsub float %247, %229
  %249 = fmul float %52, %248
  %250 = and i32 %234, 4095
  %251 = zext nneg i32 %250 to i64
  %252 = getelementptr inbounds [4096 x float], ptr %81, i64 0, i64 %251
  store float %249, ptr %252, align 4, !tbaa !15
  %253 = fmul float %63, %241
  %254 = getelementptr inbounds [4096 x float], ptr %83, i64 0, i64 %251
  store float %253, ptr %254, align 4, !tbaa !15
  %255 = load float, ptr %50, align 4, !tbaa !32
  %256 = fmul float %38, %248
  %257 = tail call float @llvm.fmuladd.f32(float %25, float %241, float %256)
  %258 = add i32 %234, %53
  %259 = and i32 %258, 4095
  %260 = zext nneg i32 %259 to i64
  %261 = getelementptr inbounds [4096 x float], ptr %81, i64 0, i64 %260
  %262 = load float, ptr %261, align 4, !tbaa !15
  %263 = sub nsw i32 %234, %59
  %264 = and i32 %263, 4095
  %265 = zext nneg i32 %264 to i64
  %266 = getelementptr inbounds [4096 x float], ptr %83, i64 0, i64 %265
  %267 = load float, ptr %266, align 4, !tbaa !15
  %268 = fmul float %62, %267
  %269 = tail call float @llvm.fmuladd.f32(float %49, float %262, float %268)
  %270 = add i32 %234, %65
  %271 = and i32 %270, 4095
  %272 = zext nneg i32 %271 to i64
  %273 = getelementptr inbounds [4096 x float], ptr %83, i64 0, i64 %272
  %274 = load float, ptr %273, align 4, !tbaa !15
  %275 = tail call float @llvm.fmuladd.f32(float %64, float %274, float %269)
  %276 = sub nsw i32 %234, %47
  %277 = and i32 %276, 4095
  %278 = zext nneg i32 %277 to i64
  %279 = getelementptr inbounds [4096 x float], ptr %81, i64 0, i64 %278
  %280 = load float, ptr %279, align 4, !tbaa !15
  %281 = tail call float @llvm.fmuladd.f32(float %67, float %280, float %275)
  %282 = fneg float %281
  %283 = tail call float @llvm.fmuladd.f32(float %255, float %257, float %282)
  %284 = tail call float @llvm.fmuladd.f32(float %16, float %283, float %228)
  %285 = fmul float %12, %284
  store float %285, ptr %84, align 4, !tbaa !15
  %286 = tail call float @llvm.fmuladd.f32(float %10, float %285, float %227)
  %287 = fmul float %12, %286
  store float %287, ptr %86, align 4, !tbaa !15
  %288 = tail call float @llvm.fmuladd.f32(float %10, float %287, float %226)
  %289 = fmul float %12, %288
  store float %289, ptr %88, align 4, !tbaa !15
  %290 = tail call float @llvm.fmuladd.f32(float %10, float %289, float %225)
  %291 = fmul float %12, %290
  store float %291, ptr %90, align 4, !tbaa !15
  %292 = fmul float %285, %285
  %293 = fmul float %285, %292
  %294 = fmul float %14, %283
  %295 = fmul float %294, %294
  %296 = fmul float %294, %295
  %297 = fsub float %296, %293
  %298 = tail call float @llvm.fmuladd.f32(float %10, float %297, float %224)
  %299 = fmul float %12, %298
  store float %299, ptr %92, align 8, !tbaa !15
  %300 = fmul float %287, %287
  %301 = fmul float %287, %300
  %302 = fadd float %293, %299
  %303 = fsub float %302, %301
  %304 = tail call float @llvm.fmuladd.f32(float %10, float %303, float %223)
  %305 = fmul float %12, %304
  store float %305, ptr %94, align 8, !tbaa !15
  %306 = fmul float %289, %289
  %307 = fmul float %289, %306
  %308 = fadd float %301, %305
  %309 = fsub float %308, %307
  %310 = tail call float @llvm.fmuladd.f32(float %10, float %309, float %222)
  %311 = fmul float %12, %310
  store float %311, ptr %96, align 8, !tbaa !15
  %312 = load float, ptr %99, align 4, !tbaa !15
  %313 = fadd float %307, %311
  %314 = fmul float %291, %291
  %315 = fmul float %291, %314
  %316 = fsub float %313, %315
  %317 = tail call float @llvm.fmuladd.f32(float %10, float %316, float %312)
  %318 = fmul float %12, %317
  store float %318, ptr %98, align 8, !tbaa !15
  %319 = tail call float @llvm.fmuladd.f32(float %100, float %318, float %291)
  %320 = getelementptr inbounds float, ptr %5, i64 %233
  store float %319, ptr %320, align 4, !tbaa !15
  %321 = load float, ptr %73, align 8, !tbaa !15
  store float %321, ptr %74, align 4, !tbaa !15
  %322 = load float, ptr %75, align 8, !tbaa !15
  store float %322, ptr %76, align 4, !tbaa !15
  %323 = load float, ptr %77, align 4, !tbaa !15
  store float %323, ptr %78, align 4, !tbaa !15
  %324 = load float, ptr %79, align 4, !tbaa !15
  store float %324, ptr %80, align 4, !tbaa !15
  %325 = add nsw i32 %234, 1
  %326 = load float, ptr %84, align 4, !tbaa !15
  store float %326, ptr %85, align 4, !tbaa !15
  %327 = load float, ptr %86, align 4, !tbaa !15
  store float %327, ptr %87, align 4, !tbaa !15
  %328 = load float, ptr %88, align 4, !tbaa !15
  store float %328, ptr %89, align 4, !tbaa !15
  %329 = load float, ptr %90, align 4, !tbaa !15
  store float %329, ptr %91, align 4, !tbaa !15
  %330 = load float, ptr %92, align 8, !tbaa !15
  store float %330, ptr %93, align 4, !tbaa !15
  %331 = load float, ptr %94, align 8, !tbaa !15
  store float %331, ptr %95, align 4, !tbaa !15
  %332 = load float, ptr %96, align 8, !tbaa !15
  store float %332, ptr %97, align 4, !tbaa !15
  %333 = load float, ptr %98, align 8, !tbaa !15
  store float %333, ptr %99, align 4, !tbaa !15
  %334 = add nuw nsw i64 %233, 1
  %335 = icmp eq i64 %334, %104
  br i1 %335, label %217, label %221, !llvm.loop !38
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Double
;;
define linkonce_odr void @_ZN5mydsp7computeEiPPfS1_(ptr noundef %0, i32 noundef %1, ptr noalias noundef %2, ptr noalias noundef %3) unnamed_addr #7 {
  %5 = load ptr, ptr %3, align 8, !tbaa !25
  %6 = getelementptr inbounds i8, ptr %0, i64 32
  %7 = load float, ptr %6, align 8, !tbaa !20
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds i8, ptr %0, i64 24
  %10 = load double, ptr %9, align 8, !tbaa !36
  %11 = fmul double %10, %8
  %12 = fadd double %11, 1.000000e+00
  %13 = fdiv double 1.000000e+00, %12
  %14 = getelementptr inbounds i8, ptr %0, i64 44
  %15 = load float, ptr %14, align 4, !tbaa !21
  %16 = fpext float %15 to double
  %17 = fmul double %10, %16
  %18 = fmul double %17, %8
  %19 = getelementptr inbounds i8, ptr %0, i64 56
  %20 = load float, ptr %19, align 8, !tbaa !22
  %21 = fpext float %20 to double
  %22 = fcmp olt double %21, 0x403772EE5DCBB977
  %23 = select i1 %22, double 0x403772EE5DCBB977, double %21
  %24 = tail call double @llvm.fabs.f64(double %21)
  %25 = select i1 %22, double 0x403772EE5DCBB977, double %24
  %26 = fcmp ogt double %25, 2.000000e+01
  %27 = select i1 %26, double %25, double 2.000000e+01
  %28 = fdiv double 1.000000e+00, %27
  %29 = getelementptr inbounds i8, ptr %0, i64 64
  %30 = load double, ptr %29, align 8, !tbaa !18
  %31 = fmul double %30, %27
  %32 = getelementptr inbounds i8, ptr %0, i64 104
  %33 = load float, ptr %32, align 8, !tbaa !23
  %34 = fpext float %33 to double
  %35 = fadd double %21, %34
  %36 = fcmp olt double %35, 0x403772EE5DCBB977
  %37 = select i1 %36, double 0x403772EE5DCBB977, double %35
  %38 = tail call double @llvm.fabs.f64(double %35)
  %39 = select i1 %36, double 0x403772EE5DCBB977, double %38
  %40 = fcmp ogt double %39, 2.000000e+01
  %41 = select i1 %40, double %39, double 2.000000e+01
  %42 = fdiv double 1.000000e+00, %41
  %43 = fmul double %30, %41
  %44 = getelementptr inbounds i8, ptr %0, i64 144
  %45 = load double, ptr %44, align 8, !tbaa !19
  %46 = fdiv double %45, %37
  %47 = fcmp olt double %46, 2.047000e+03
  %48 = select i1 %47, double %46, double 2.047000e+03
  %49 = fcmp ogt double %48, 0.000000e+00
  %50 = select i1 %49, double %48, double 0.000000e+00
  %51 = fptosi double %50 to i32
  %52 = sitofp i32 %51 to double
  %53 = fsub double %50, %52
  %54 = getelementptr inbounds i8, ptr %0, i64 48
  %55 = load double, ptr %54, align 8, !tbaa !17
  %56 = fdiv double %55, %41
  %57 = xor i32 %51, -1
  %58 = fdiv double %45, %23
  %59 = fcmp olt double %58, 2.047000e+03
  %60 = select i1 %59, double %58, double 2.047000e+03
  %61 = fcmp ogt double %60, 0.000000e+00
  %62 = select i1 %61, double %60, double 0.000000e+00
  %63 = fptosi double %62 to i32
  %64 = sitofp i32 %63 to double
  %65 = fsub double 1.000000e+00, %62
  %66 = fadd double %65, %64
  %67 = fdiv double %55, %27
  %68 = fsub double %62, %64
  %69 = xor i32 %63, -1
  %70 = fsub double 1.000000e+00, %50
  %71 = fadd double %70, %52
  %72 = icmp sgt i32 %1, 0
  br i1 %72, label %73, label %226
73:                                               ; preds = %4
  %74 = getelementptr inbounds i8, ptr %0, i64 65760
  %75 = load float, ptr %74, align 8, !tbaa !24
  %76 = fpext float %75 to double
  %77 = getelementptr inbounds i8, ptr %0, i64 40
  %78 = getelementptr inbounds i8, ptr %0, i64 80
  %79 = getelementptr inbounds i8, ptr %0, i64 96
  %80 = getelementptr inbounds i8, ptr %0, i64 120
  %81 = getelementptr inbounds i8, ptr %0, i64 136
  %82 = getelementptr inbounds i8, ptr %0, i64 160
  %83 = getelementptr inbounds i8, ptr %0, i64 152
  %84 = getelementptr inbounds i8, ptr %0, i64 32928
  %85 = getelementptr inbounds i8, ptr %0, i64 65704
  %86 = getelementptr inbounds i8, ptr %0, i64 65720
  %87 = getelementptr inbounds i8, ptr %0, i64 65736
  %88 = getelementptr inbounds i8, ptr %0, i64 65752
  %89 = getelementptr inbounds i8, ptr %0, i64 65776
  %90 = getelementptr inbounds i8, ptr %0, i64 65792
  %91 = getelementptr inbounds i8, ptr %0, i64 65808
  %92 = getelementptr inbounds i8, ptr %0, i64 65824
  %93 = fmul double %76, 0xBFD5555555555555
  %94 = load i32, ptr %77, align 4, !tbaa !38
  %95 = load double, ptr %78, align 8, !tbaa !16
  %96 = load double, ptr %79, align 8, !tbaa !16
  %97 = load double, ptr %80, align 8, !tbaa !16
  %98 = load double, ptr %81, align 8, !tbaa !16
  %99 = load i32, ptr %83, align 8, !tbaa !37
  %100 = load double, ptr %85, align 8, !tbaa !16
  %101 = load double, ptr %86, align 8, !tbaa !16
  %102 = load double, ptr %87, align 8, !tbaa !16
  %103 = load double, ptr %88, align 8, !tbaa !16
  %104 = load double, ptr %89, align 8, !tbaa !16
  %105 = load double, ptr %90, align 8, !tbaa !16
  %106 = load double, ptr %91, align 8, !tbaa !16
  %107 = load double, ptr %92, align 8, !tbaa !16
  %108 = sitofp i32 %94 to double
  %109 = zext nneg i32 %1 to i64
  %110 = fadd double %31, %95
  %111 = tail call double @llvm.floor.f64(double %110)
  %112 = fsub double %95, %111
  %113 = fadd double %31, %112
  %114 = tail call double @llvm.fmuladd.f64(double %113, double 2.000000e+00, double -1.000000e+00)
  %115 = fmul double %114, %114
  %116 = fsub double %115, %96
  %117 = fadd double %43, %97
  %118 = tail call double @llvm.floor.f64(double %117)
  %119 = fsub double %97, %118
  %120 = fadd double %43, %119
  %121 = tail call double @llvm.fmuladd.f64(double %120, double 2.000000e+00, double -1.000000e+00)
  %122 = fmul double %121, %121
  %123 = fsub double %122, %98
  %124 = fmul double %56, %108
  %125 = fmul double %124, %123
  %126 = and i32 %99, 4095
  %127 = zext nneg i32 %126 to i64
  %128 = getelementptr inbounds [4096 x double], ptr %82, i64 0, i64 %127
  store double %125, ptr %128, align 8, !tbaa !16
  %129 = fmul double %67, %108
  %130 = fmul double %129, %116
  %131 = getelementptr inbounds [4096 x double], ptr %84, i64 0, i64 %127
  store double %130, ptr %131, align 8, !tbaa !16
  %132 = fmul double %55, %108
  %133 = fmul double %42, %123
  %134 = tail call double @llvm.fmuladd.f64(double %28, double %116, double %133)
  %135 = add i32 %99, %57
  %136 = and i32 %135, 4095
  %137 = zext nneg i32 %136 to i64
  %138 = getelementptr inbounds [4096 x double], ptr %82, i64 0, i64 %137
  %139 = load double, ptr %138, align 8, !tbaa !16
  %140 = sub nsw i32 %99, %63
  %141 = and i32 %140, 4095
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds [4096 x double], ptr %84, i64 0, i64 %142
  %144 = load double, ptr %143, align 8, !tbaa !16
  %145 = fmul double %66, %144
  %146 = tail call double @llvm.fmuladd.f64(double %53, double %139, double %145)
  %147 = add i32 %99, %69
  %148 = and i32 %147, 4095
  %149 = zext nneg i32 %148 to i64
  %150 = getelementptr inbounds [4096 x double], ptr %84, i64 0, i64 %149
  %151 = load double, ptr %150, align 8, !tbaa !16
  %152 = tail call double @llvm.fmuladd.f64(double %68, double %151, double %146)
  %153 = sub nsw i32 %99, %51
  %154 = and i32 %153, 4095
  %155 = zext nneg i32 %154 to i64
  %156 = getelementptr inbounds [4096 x double], ptr %82, i64 0, i64 %155
  %157 = load double, ptr %156, align 8, !tbaa !16
  %158 = tail call double @llvm.fmuladd.f64(double %71, double %157, double %152)
  %159 = fneg double %158
  %160 = tail call double @llvm.fmuladd.f64(double %132, double %134, double %159)
  %161 = tail call double @llvm.fmuladd.f64(double %18, double %160, double %100)
  %162 = fmul double %13, %161
  %163 = tail call double @llvm.fmuladd.f64(double %11, double %162, double %101)
  %164 = fmul double %13, %163
  %165 = tail call double @llvm.fmuladd.f64(double %11, double %164, double %102)
  %166 = fmul double %13, %165
  %167 = tail call double @llvm.fmuladd.f64(double %11, double %166, double %103)
  %168 = fmul double %13, %167
  %169 = fmul double %162, %162
  %170 = fmul double %162, %169
  %171 = fmul double %160, %16
  %172 = fmul double %171, %171
  %173 = fmul double %171, %172
  %174 = fsub double %173, %170
  %175 = tail call double @llvm.fmuladd.f64(double %11, double %174, double %104)
  %176 = fmul double %13, %175
  %177 = fmul double %164, %164
  %178 = fmul double %164, %177
  %179 = fadd double %170, %176
  %180 = fsub double %179, %178
  %181 = tail call double @llvm.fmuladd.f64(double %11, double %180, double %105)
  %182 = fmul double %13, %181
  %183 = fmul double %166, %166
  %184 = fmul double %166, %183
  %185 = fadd double %178, %182
  %186 = fsub double %185, %184
  %187 = tail call double @llvm.fmuladd.f64(double %11, double %186, double %106)
  %188 = fmul double %13, %187
  %189 = fadd double %184, %188
  %190 = fmul double %168, %168
  %191 = fmul double %168, %190
  %192 = fsub double %189, %191
  %193 = tail call double @llvm.fmuladd.f64(double %11, double %192, double %107)
  %194 = fmul double %13, %193
  %195 = tail call double @llvm.fmuladd.f64(double %93, double %194, double %168)
  %196 = fptrunc double %195 to float
  store float %196, ptr %5, align 4, !tbaa !39
  %197 = add nsw i32 %99, 1
  %198 = icmp eq i32 %1, 1
  br i1 %198, label %199, label %227
199:                                              ; preds = %227, %73
  %200 = phi double [ %113, %73 ], [ %245, %227 ]
  %201 = phi double [ %115, %73 ], [ %247, %227 ]
  %202 = phi double [ %120, %73 ], [ %252, %227 ]
  %203 = phi double [ %122, %73 ], [ %254, %227 ]
  %204 = phi double [ %162, %73 ], [ %291, %227 ]
  %205 = phi double [ %164, %73 ], [ %293, %227 ]
  %206 = phi double [ %166, %73 ], [ %295, %227 ]
  %207 = phi double [ %168, %73 ], [ %297, %227 ]
  %208 = phi double [ %176, %73 ], [ %305, %227 ]
  %209 = phi double [ %182, %73 ], [ %311, %227 ]
  %210 = phi double [ %188, %73 ], [ %317, %227 ]
  %211 = phi double [ %194, %73 ], [ %323, %227 ]
  %212 = phi i32 [ %197, %73 ], [ %327, %227 ]
  %213 = getelementptr inbounds i8, ptr %0, i64 36
  %214 = getelementptr inbounds i8, ptr %0, i64 72
  %215 = getelementptr inbounds i8, ptr %0, i64 88
  %216 = getelementptr inbounds i8, ptr %0, i64 112
  %217 = getelementptr inbounds i8, ptr %0, i64 128
  %218 = getelementptr inbounds i8, ptr %0, i64 65696
  %219 = getelementptr inbounds i8, ptr %0, i64 65712
  %220 = getelementptr inbounds i8, ptr %0, i64 65728
  %221 = getelementptr inbounds i8, ptr %0, i64 65744
  %222 = getelementptr inbounds i8, ptr %0, i64 65768
  %223 = getelementptr inbounds i8, ptr %0, i64 65784
  %224 = getelementptr inbounds i8, ptr %0, i64 65800
  %225 = getelementptr inbounds i8, ptr %0, i64 65816
  store <2 x i32> <i32 1, i32 1>, ptr %213, align 4, !tbaa !38
  store double %200, ptr %78, align 8, !tbaa !16
  store double %200, ptr %214, align 8, !tbaa !16
  store double %201, ptr %215, align 8, !tbaa !16
  store double %201, ptr %79, align 8, !tbaa !16
  store double %202, ptr %80, align 8, !tbaa !16
  store double %202, ptr %216, align 8, !tbaa !16
  store double %203, ptr %217, align 8, !tbaa !16
  store double %203, ptr %81, align 8, !tbaa !16
  store i32 %212, ptr %83, align 8, !tbaa !37
  store double %204, ptr %85, align 8, !tbaa !16
  store double %204, ptr %218, align 8, !tbaa !16
  store double %205, ptr %86, align 8, !tbaa !16
  store double %205, ptr %219, align 8, !tbaa !16
  store double %206, ptr %87, align 8, !tbaa !16
  store double %206, ptr %220, align 8, !tbaa !16
  store double %207, ptr %88, align 8, !tbaa !16
  store double %207, ptr %221, align 8, !tbaa !16
  store double %208, ptr %89, align 8, !tbaa !16
  store double %208, ptr %222, align 8, !tbaa !16
  store double %209, ptr %90, align 8, !tbaa !16
  store double %209, ptr %223, align 8, !tbaa !16
  store double %210, ptr %91, align 8, !tbaa !16
  store double %210, ptr %224, align 8, !tbaa !16
  store double %211, ptr %92, align 8, !tbaa !16
  store double %211, ptr %225, align 8, !tbaa !16
  br label %226
226:                                              ; preds = %199, %4
  ret void
227:                                              ; preds = %73, %227
  %228 = phi i64 [ %328, %227 ], [ 1, %73 ]
  %229 = phi double [ %323, %227 ], [ %194, %73 ]
  %230 = phi double [ %317, %227 ], [ %188, %73 ]
  %231 = phi double [ %311, %227 ], [ %182, %73 ]
  %232 = phi double [ %305, %227 ], [ %176, %73 ]
  %233 = phi double [ %297, %227 ], [ %168, %73 ]
  %234 = phi double [ %295, %227 ], [ %166, %73 ]
  %235 = phi double [ %293, %227 ], [ %164, %73 ]
  %236 = phi double [ %291, %227 ], [ %162, %73 ]
  %237 = phi i32 [ %327, %227 ], [ %197, %73 ]
  %238 = phi double [ %254, %227 ], [ %122, %73 ]
  %239 = phi double [ %252, %227 ], [ %120, %73 ]
  %240 = phi double [ %247, %227 ], [ %115, %73 ]
  %241 = phi double [ %245, %227 ], [ %113, %73 ]
  %242 = fadd double %31, %241
  %243 = tail call double @llvm.floor.f64(double %242)
  %244 = fsub double %241, %243
  %245 = fadd double %31, %244
  %246 = tail call double @llvm.fmuladd.f64(double %245, double 2.000000e+00, double -1.000000e+00)
  %247 = fmul double %246, %246
  %248 = fsub double %247, %240
  %249 = fadd double %43, %239
  %250 = tail call double @llvm.floor.f64(double %249)
  %251 = fsub double %239, %250
  %252 = fadd double %43, %251
  %253 = tail call double @llvm.fmuladd.f64(double %252, double 2.000000e+00, double -1.000000e+00)
  %254 = fmul double %253, %253
  %255 = fsub double %254, %238
  %256 = fmul double %56, %255
  %257 = and i32 %237, 4095
  %258 = zext nneg i32 %257 to i64
  %259 = getelementptr inbounds [4096 x double], ptr %82, i64 0, i64 %258
  store double %256, ptr %259, align 8, !tbaa !16
  %260 = fmul double %67, %248
  %261 = getelementptr inbounds [4096 x double], ptr %84, i64 0, i64 %258
  store double %260, ptr %261, align 8, !tbaa !16
  %262 = fmul double %42, %255
  %263 = tail call double @llvm.fmuladd.f64(double %28, double %248, double %262)
  %264 = add i32 %237, %57
  %265 = and i32 %264, 4095
  %266 = zext nneg i32 %265 to i64
  %267 = getelementptr inbounds [4096 x double], ptr %82, i64 0, i64 %266
  %268 = load double, ptr %267, align 8, !tbaa !16
  %269 = sub nsw i32 %237, %63
  %270 = and i32 %269, 4095
  %271 = zext nneg i32 %270 to i64
  %272 = getelementptr inbounds [4096 x double], ptr %84, i64 0, i64 %271
  %273 = load double, ptr %272, align 8, !tbaa !16
  %274 = fmul double %66, %273
  %275 = tail call double @llvm.fmuladd.f64(double %53, double %268, double %274)
  %276 = add i32 %237, %69
  %277 = and i32 %276, 4095
  %278 = zext nneg i32 %277 to i64
  %279 = getelementptr inbounds [4096 x double], ptr %84, i64 0, i64 %278
  %280 = load double, ptr %279, align 8, !tbaa !16
  %281 = tail call double @llvm.fmuladd.f64(double %68, double %280, double %275)
  %282 = sub nsw i32 %237, %51
  %283 = and i32 %282, 4095
  %284 = zext nneg i32 %283 to i64
  %285 = getelementptr inbounds [4096 x double], ptr %82, i64 0, i64 %284
  %286 = load double, ptr %285, align 8, !tbaa !16
  %287 = tail call double @llvm.fmuladd.f64(double %71, double %286, double %281)
  %288 = fneg double %287
  %289 = tail call double @llvm.fmuladd.f64(double %55, double %263, double %288)
  %290 = tail call double @llvm.fmuladd.f64(double %18, double %289, double %236)
  %291 = fmul double %13, %290
  %292 = tail call double @llvm.fmuladd.f64(double %11, double %291, double %235)
  %293 = fmul double %13, %292
  %294 = tail call double @llvm.fmuladd.f64(double %11, double %293, double %234)
  %295 = fmul double %13, %294
  %296 = tail call double @llvm.fmuladd.f64(double %11, double %295, double %233)
  %297 = fmul double %13, %296
  %298 = fmul double %291, %291
  %299 = fmul double %291, %298
  %300 = fmul double %289, %16
  %301 = fmul double %300, %300
  %302 = fmul double %300, %301
  %303 = fsub double %302, %299
  %304 = tail call double @llvm.fmuladd.f64(double %11, double %303, double %232)
  %305 = fmul double %13, %304
  %306 = fmul double %293, %293
  %307 = fmul double %293, %306
  %308 = fadd double %299, %305
  %309 = fsub double %308, %307
  %310 = tail call double @llvm.fmuladd.f64(double %11, double %309, double %231)
  %311 = fmul double %13, %310
  %312 = fmul double %295, %295
  %313 = fmul double %295, %312
  %314 = fadd double %307, %311
  %315 = fsub double %314, %313
  %316 = tail call double @llvm.fmuladd.f64(double %11, double %315, double %230)
  %317 = fmul double %13, %316
  %318 = fadd double %313, %317
  %319 = fmul double %297, %297
  %320 = fmul double %297, %319
  %321 = fsub double %318, %320
  %322 = tail call double @llvm.fmuladd.f64(double %11, double %321, double %229)
  %323 = fmul double %13, %322
  %324 = tail call double @llvm.fmuladd.f64(double %93, double %323, double %297)
  %325 = fptrunc double %324 to float
  %326 = getelementptr inbounds float, ptr %5, i64 %228
  store float %325, ptr %326, align 4, !tbaa !39
  %327 = add nsw i32 %237, 1
  %328 = add nuw nsw i64 %228, 1
  %329 = icmp eq i64 %328, %109
  br i1 %329, label %199, label %227, !llvm.loop !40
}
