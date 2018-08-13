; ModuleID = '/home/idlab-52/Desktop/GitVivado/WATCHMAN/prototype_watchman_HLS_designs/axi_example/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@example_str = internal unnamed_addr constant [8 x i8] c"example\00" ; [#uses=1 type=[8 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=10 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=2 type=[5 x i8]*]
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=2 type=[5 x i8]*]

; [#uses=3]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @example(i32* %A, i32* %B) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %A) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %B) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @example_str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %A}, i64 0, metadata !17), !dbg !29 ; [debug line = 92:18] [debug variable = A]
  call void @llvm.dbg.value(metadata !{i32* %B}, i64 0, metadata !30), !dbg !31 ; [debug line = 92:29] [debug variable = B]
  call void (...)* @_ssdm_op_SpecInterface(i32* %A, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecInterface(i32* %B, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  br label %1, !dbg !32                           ; [debug line = 98:7]

; <label>:1                                       ; preds = %2, %0
  %i = phi i6 [ 0, %0 ], [ %i_1, %2 ]             ; [#uses=2 type=i6]
  %exitcond = icmp eq i6 %i, -14, !dbg !32        ; [#uses=1 type=i1] [debug line = 98:7]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 50, i64 50, i64 50) nounwind ; [#uses=0 type=i32]
  %i_1 = add i6 %i, 1, !dbg !35                   ; [#uses=1 type=i6] [debug line = 98:22]
  br i1 %exitcond, label %3, label %2, !dbg !32   ; [debug line = 98:7]

; <label>:2                                       ; preds = %1
  %A_read = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %A) nounwind, !dbg !36 ; [#uses=1 type=i32] [debug line = 99:5]
  %tmp_1 = add nsw i32 %A_read, 5, !dbg !36       ; [#uses=1 type=i32] [debug line = 99:5]
  call void @_ssdm_op_Write.axis.volatile.i32P(i32* %B, i32 %tmp_1) nounwind, !dbg !36 ; [debug line = 99:5]
  call void @llvm.dbg.value(metadata !{i6 %i_1}, i64 0, metadata !38), !dbg !35 ; [debug line = 98:22] [debug variable = i]
  br label %1, !dbg !35                           ; [debug line = 98:22]

; <label>:3                                       ; preds = %1
  ret void, !dbg !39                              ; [debug line = 101:1]
}

; [#uses=1]
define weak void @_ssdm_op_Write.axis.volatile.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.axis.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0                           ; [#uses=1 type=i32]
  ret i32 %empty
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"A", metadata !"B"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"A", metadata !11, metadata !"int", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 49, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"B", metadata !11, metadata !"int", i32 0, i32 31}
!17 = metadata !{i32 786689, metadata !18, metadata !"A", null, i32 92, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!18 = metadata !{i32 786478, i32 0, metadata !19, metadata !"example", metadata !"example", metadata !"_Z7examplePiS_", metadata !19, i32 92, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 92} ; [ DW_TAG_subprogram ]
!19 = metadata !{i32 786473, metadata !"prototype_watchman_HLS_designs/axi_ex.cpp", metadata !"/home/idlab-52/Desktop/GitVivado/WATCHMAN", null} ; [ DW_TAG_file_type ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{null, metadata !22, metadata !22}
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!26 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1600, i64 32, i32 0, i32 0, metadata !23, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786465, i64 0, i64 49}       ; [ DW_TAG_subrange_type ]
!29 = metadata !{i32 92, i32 18, metadata !18, null}
!30 = metadata !{i32 786689, metadata !18, metadata !"B", null, i32 92, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!31 = metadata !{i32 92, i32 29, metadata !18, null}
!32 = metadata !{i32 98, i32 7, metadata !33, null}
!33 = metadata !{i32 786443, metadata !34, i32 98, i32 3, metadata !19, i32 1} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 786443, metadata !18, i32 92, i32 36, metadata !19, i32 0} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 98, i32 22, metadata !33, null}
!36 = metadata !{i32 99, i32 5, metadata !37, null}
!37 = metadata !{i32 786443, metadata !33, i32 98, i32 26, metadata !19, i32 2} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 786688, metadata !34, metadata !"i", metadata !19, i32 96, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!39 = metadata !{i32 101, i32 1, metadata !34, null}
