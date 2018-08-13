; ModuleID = '/home/idlab-52/Desktop/GitVivado/WATCHMAN/prototype_watchman_HLS_designs/axi_example/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define void @_Z7examplePiS_(i32* %A, i32* %B) nounwind uwtable {
  %1 = alloca i32*, align 8                       ; [#uses=4 type=i32**]
  %2 = alloca i32*, align 8                       ; [#uses=4 type=i32**]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store i32* %A, i32** %1, align 8
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !20), !dbg !21 ; [debug line = 92:18] [debug variable = A]
  store i32* %B, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !22), !dbg !23 ; [debug line = 92:29] [debug variable = B]
  %3 = load i32** %1, align 8, !dbg !24           ; [#uses=1 type=i32*] [debug line = 92:37]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %3, i32 50) nounwind, !dbg !24 ; [debug line = 92:37]
  %4 = load i32** %2, align 8, !dbg !26           ; [#uses=1 type=i32*] [debug line = 92:66]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %4, i32 50) nounwind, !dbg !26 ; [debug line = 92:66]
  %5 = load i32** %1, align 8, !dbg !27           ; [#uses=1 type=i32*] [debug line = 93:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %5, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !27 ; [debug line = 93:1]
  %6 = load i32** %2, align 8, !dbg !28           ; [#uses=1 type=i32*] [debug line = 94:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %6, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !28 ; [debug line = 94:1]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !29), !dbg !30 ; [debug line = 96:6] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !31         ; [debug line = 98:7]
  br label %7, !dbg !31                           ; [debug line = 98:7]

; <label>:7                                       ; preds = %21, %0
  %8 = load i32* %i, align 4, !dbg !31            ; [#uses=1 type=i32] [debug line = 98:7]
  %9 = icmp slt i32 %8, 50, !dbg !31              ; [#uses=1 type=i1] [debug line = 98:7]
  br i1 %9, label %10, label %24, !dbg !31        ; [debug line = 98:7]

; <label>:10                                      ; preds = %7
  %11 = load i32* %i, align 4, !dbg !33           ; [#uses=1 type=i32] [debug line = 99:5]
  %12 = sext i32 %11 to i64, !dbg !33             ; [#uses=1 type=i64] [debug line = 99:5]
  %13 = load i32** %1, align 8, !dbg !33          ; [#uses=1 type=i32*] [debug line = 99:5]
  %14 = getelementptr inbounds i32* %13, i64 %12, !dbg !33 ; [#uses=1 type=i32*] [debug line = 99:5]
  %15 = load i32* %14, align 4, !dbg !33          ; [#uses=1 type=i32] [debug line = 99:5]
  %16 = add nsw i32 %15, 5, !dbg !33              ; [#uses=1 type=i32] [debug line = 99:5]
  %17 = load i32* %i, align 4, !dbg !33           ; [#uses=1 type=i32] [debug line = 99:5]
  %18 = sext i32 %17 to i64, !dbg !33             ; [#uses=1 type=i64] [debug line = 99:5]
  %19 = load i32** %2, align 8, !dbg !33          ; [#uses=1 type=i32*] [debug line = 99:5]
  %20 = getelementptr inbounds i32* %19, i64 %18, !dbg !33 ; [#uses=1 type=i32*] [debug line = 99:5]
  store i32 %16, i32* %20, align 4, !dbg !33      ; [debug line = 99:5]
  br label %21, !dbg !35                          ; [debug line = 100:3]

; <label>:21                                      ; preds = %10
  %22 = load i32* %i, align 4, !dbg !36           ; [#uses=1 type=i32] [debug line = 98:22]
  %23 = add nsw i32 %22, 1, !dbg !36              ; [#uses=1 type=i32] [debug line = 98:22]
  store i32 %23, i32* %i, align 4, !dbg !36       ; [debug line = 98:22]
  br label %7, !dbg !36                           ; [debug line = 98:22]

; <label>:24                                      ; preds = %7
  ret void, !dbg !37                              ; [debug line = 101:1]
}

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!13}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/idlab-52/Desktop/GitVivado/WATCHMAN/prototype_watchman_HLS_designs/axi_example/.autopilot/db/axi_ex.pragma.2.cpp", metadata !"/home/idlab-52/Desktop/GitVivado/WATCHMAN", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"example", metadata !"example", metadata !"_Z7examplePiS_", metadata !6, i32 92, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*)* @_Z7examplePiS_, null, null, metadata !11, i32 92} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"prototype_watchman_HLS_designs/axi_ex.cpp", metadata !"/home/idlab-52/Desktop/GitVivado/WATCHMAN", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{void (i32*, i32*)* @_Z7examplePiS_, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"A", metadata !"B"}
!19 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!20 = metadata !{i32 786689, metadata !5, metadata !"A", metadata !6, i32 16777308, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!21 = metadata !{i32 92, i32 18, metadata !5, null}
!22 = metadata !{i32 786689, metadata !5, metadata !"B", metadata !6, i32 33554524, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!23 = metadata !{i32 92, i32 29, metadata !5, null}
!24 = metadata !{i32 92, i32 37, metadata !25, null}
!25 = metadata !{i32 786443, metadata !5, i32 92, i32 36, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!26 = metadata !{i32 92, i32 66, metadata !25, null}
!27 = metadata !{i32 93, i32 1, metadata !25, null}
!28 = metadata !{i32 94, i32 1, metadata !25, null}
!29 = metadata !{i32 786688, metadata !25, metadata !"i", metadata !6, i32 96, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!30 = metadata !{i32 96, i32 6, metadata !25, null}
!31 = metadata !{i32 98, i32 7, metadata !32, null}
!32 = metadata !{i32 786443, metadata !25, i32 98, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 99, i32 5, metadata !34, null}
!34 = metadata !{i32 786443, metadata !32, i32 98, i32 26, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 100, i32 3, metadata !34, null}
!36 = metadata !{i32 98, i32 22, metadata !32, null}
!37 = metadata !{i32 101, i32 1, metadata !25, null}
