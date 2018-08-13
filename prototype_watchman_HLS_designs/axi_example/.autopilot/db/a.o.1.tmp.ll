; ModuleID = '/home/idlab-52/Desktop/GitVivado/WATCHMAN/prototype_watchman_HLS_designs/axi_example/.autopilot/db/a.o.1.tmp.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@example.str = internal unnamed_addr constant [8 x i8] c"example\00" ; [#uses=1 type=[8 x i8]*]
@__empty_str = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=0 type=[1 x i8]*]
@AP_complete_mode = internal unnamed_addr constant [9 x i8] c"COMPLETE\00" ; [#uses=0 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=10 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=2 type=[5 x i8]*]
@.str = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=2 type=[5 x i8]*]

; [#uses=3]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @example(i32* %A, i32* %B) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %A) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %B) nounwind, !map !26
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @example.str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %A}, i64 0, metadata !30), !dbg !34 ; [debug line = 92:18] [debug variable = A]
  call void @llvm.dbg.value(metadata !{i32* %B}, i64 0, metadata !35), !dbg !36 ; [debug line = 92:29] [debug variable = B]
  call void (...)* @_ssdm_op_SpecInterface(i32* %A, [5 x i8]* @.str, i32 1, i32 1, [5 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str2, [1 x i8]* @.str2, [1 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str2, [1 x i8]* @.str2)
  call void (...)* @_ssdm_op_SpecInterface(i32* %B, [5 x i8]* @.str, i32 1, i32 1, [5 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str2, [1 x i8]* @.str2, [1 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str2, [1 x i8]* @.str2)
  br label %1, !dbg !37                           ; [debug line = 98:7]

; <label>:1                                       ; preds = %3, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %3 ]            ; [#uses=2 type=i32]
  %exitcond = icmp eq i32 %i, 50, !dbg !37        ; [#uses=1 type=i1] [debug line = 98:7]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 50, i64 50, i64 50) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %4, label %3, !dbg !37   ; [debug line = 98:7]

; <label>:3                                       ; preds = %1
  %A.load = load volatile i32* %A, align 4, !dbg !40 ; [#uses=1 type=i32] [debug line = 99:5]
  %tmp.1 = add nsw i32 %A.load, 5, !dbg !40       ; [#uses=1 type=i32] [debug line = 99:5]
  store volatile i32 %tmp.1, i32* %B, align 4, !dbg !40 ; [debug line = 99:5]
  %i.1 = add nsw i32 %i, 1, !dbg !42              ; [#uses=1 type=i32] [debug line = 98:22]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !43), !dbg !42 ; [debug line = 98:22] [debug variable = i]
  br label %1, !dbg !42                           ; [debug line = 98:22]

; <label>:4                                       ; preds = %1
  ret void, !dbg !44                              ; [debug line = 101:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
declare i32 @_ssdm_GepAggregate(...)

; [#uses=0]
declare i32 @_ssdm_ArrayAggregate(...)

; [#uses=0]
declare i32 @._ssdm_op_SpecChannel(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/idlab-52/Desktop/GitVivado/WATCHMAN/prototype_watchman_HLS_designs/axi_example/.autopilot/db/axi_ex.pragma.2.cpp", metadata !"/home/idlab-52/Desktop/GitVivado/WATCHMAN", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"example", metadata !"example", metadata !"_Z7examplePiS_", metadata !6, i32 92, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 92} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"prototype_watchman_HLS_designs/axi_ex.cpp", metadata !"/home/idlab-52/Desktop/GitVivado/WATCHMAN", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"A", metadata !"B"}
!19 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"A", metadata !24, metadata !"int", i32 0, i32 31}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 49, i32 1}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 31, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"B", metadata !24, metadata !"int", i32 0, i32 31}
!30 = metadata !{i32 786689, metadata !5, metadata !"A", null, i32 92, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!31 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1600, i64 32, i32 0, i32 0, metadata !10, metadata !32, i32 0, i32 0} ; [ DW_TAG_array_type ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786465, i64 0, i64 49}       ; [ DW_TAG_subrange_type ]
!34 = metadata !{i32 92, i32 18, metadata !5, null}
!35 = metadata !{i32 786689, metadata !5, metadata !"B", null, i32 92, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 92, i32 29, metadata !5, null}
!37 = metadata !{i32 98, i32 7, metadata !38, null}
!38 = metadata !{i32 786443, metadata !39, i32 98, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 786443, metadata !5, i32 92, i32 36, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 99, i32 5, metadata !41, null}
!41 = metadata !{i32 786443, metadata !38, i32 98, i32 26, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 98, i32 22, metadata !38, null}
!43 = metadata !{i32 786688, metadata !39, metadata !"i", metadata !6, i32 96, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!44 = metadata !{i32 101, i32 1, metadata !39, null}
