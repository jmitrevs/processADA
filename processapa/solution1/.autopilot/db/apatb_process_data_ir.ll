; ModuleID = '/home/brenton/kernel/processAPA/processapa/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.dune::FDHDChannelMapSP" = type { i32, i32, [150 x i32], [150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"], [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"], [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"], [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"] }
%"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >" = type { %"struct.std::basic_string<char>::_Alloc_hider", i64, %"union.std::basic_string<char>::(anonymous)" }
%"struct.std::basic_string<char>::_Alloc_hider" = type { i8* }
%"union.std::basic_string<char>::(anonymous)" = type { i64, [8 x i8] }
%"struct.dune::FDHDChannelMapSP::KeyValuePair" = type { i32, i32 }
%"struct.dune::FDHDChannelMapSP::HDChanInfoStruct" = type { i32, i32, i32, i32, %"struct.dune::FDHDChannelMapSP::HDChanInfo" }
%"struct.dune::FDHDChannelMapSP::HDChanInfo" = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i1 }

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #0

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #0

; Function Attrs: noinline
define void @apatb_process_data_ir(i32 %infile_size, i8* noalias nonnull %infiledata, %"class.dune::FDHDChannelMapSP"* noalias nocapture nonnull readonly dereferenceable(377648) %chanmap, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="3" %outdata) local_unnamed_addr #1 {
entry:
  %infiledata_copy = alloca i8, align 512
  %malloccall.0 = call i8* @malloc(i64 4)
  %chanmap_copy.0 = bitcast i8* %malloccall.0 to i32*
  %malloccall.1 = call i8* @malloc(i64 4)
  %chanmap_copy.1 = bitcast i8* %malloccall.1 to i32*
  %malloccall.2 = call i8* @malloc(i64 600)
  %chanmap_copy.2 = bitcast i8* %malloccall.2 to [150 x i32]*
  %malloccall.3.0 = call i8* @malloc(i64 1200)
  %chanmap_copy.3.0 = bitcast i8* %malloccall.3.0 to [150 x i8*]*
  %malloccall.3.1 = call i8* @malloc(i64 1200)
  %chanmap_copy.3.1 = bitcast i8* %malloccall.3.1 to [150 x i64]*
  %malloccall.3.2 = call i8* @malloc(i64 2400)
  %chanmap_copy.3.2 = bitcast i8* %malloccall.3.2 to [150 x %"union.std::basic_string<char>::(anonymous)"]*
  %malloccall.4 = call i8* @malloc(i64 1200)
  %chanmap_copy.4 = bitcast i8* %malloccall.4 to [150 x i64]*
  %malloccall.5 = call i8* @malloc(i64 1200)
  %chanmap_copy.5 = bitcast i8* %malloccall.5 to [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]*
  %malloccall.6 = call i8* @malloc(i64 1200)
  %chanmap_copy.6 = bitcast i8* %malloccall.6 to [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]*
  %malloccall.7 = call i8* @malloc(i64 368640)
  %chanmap_copy.7 = bitcast i8* %malloccall.7 to [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]*
  %outdata_copy = alloca [3 x i32], align 512
  %0 = bitcast i32* %outdata to [3 x i32]*
  call fastcc void @copy_in(i8* nonnull %infiledata, i8* nonnull align 512 %infiledata_copy, %"class.dune::FDHDChannelMapSP"* nonnull %chanmap, i32* %chanmap_copy.0, i32* %chanmap_copy.1, [150 x i32]* %chanmap_copy.2, [150 x i8*]* %chanmap_copy.3.0, [150 x i64]* %chanmap_copy.3.1, [150 x %"union.std::basic_string<char>::(anonymous)"]* %chanmap_copy.3.2, [150 x i64]* %chanmap_copy.4, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %chanmap_copy.5, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %chanmap_copy.6, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %chanmap_copy.7, [3 x i32]* nonnull %0, [3 x i32]* nonnull align 512 %outdata_copy)
  call void @apatb_process_data_hw(i32 %infile_size, i8* %infiledata_copy, i32* %chanmap_copy.0, i32* %chanmap_copy.1, [150 x i32]* %chanmap_copy.2, [150 x i8*]* %chanmap_copy.3.0, [150 x i64]* %chanmap_copy.3.1, [150 x %"union.std::basic_string<char>::(anonymous)"]* %chanmap_copy.3.2, [150 x i64]* %chanmap_copy.4, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %chanmap_copy.5, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %chanmap_copy.6, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %chanmap_copy.7, [3 x i32]* %outdata_copy)
  call void @copy_back(i8* %infiledata, i8* %infiledata_copy, %"class.dune::FDHDChannelMapSP"* %chanmap, i32* %chanmap_copy.0, i32* %chanmap_copy.1, [150 x i32]* %chanmap_copy.2, [150 x i8*]* %chanmap_copy.3.0, [150 x i64]* %chanmap_copy.3.1, [150 x %"union.std::basic_string<char>::(anonymous)"]* %chanmap_copy.3.2, [150 x i64]* %chanmap_copy.4, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %chanmap_copy.5, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %chanmap_copy.6, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %chanmap_copy.7, [3 x i32]* %0, [3 x i32]* %outdata_copy)
  call void @free(i8* %malloccall.0)
  call void @free(i8* %malloccall.1)
  call void @free(i8* %malloccall.2)
  call void @free(i8* %malloccall.3.0)
  call void @free(i8* %malloccall.3.1)
  call void @free(i8* %malloccall.3.2)
  call void @free(i8* %malloccall.4)
  call void @free(i8* %malloccall.5)
  call void @free(i8* %malloccall.6)
  call void @free(i8* %malloccall.7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in(i8* noalias readonly "unpacked"="0", i8* noalias align 512 "unpacked"="1", %"class.dune::FDHDChannelMapSP"* noalias readonly "unpacked"="2", i32* noalias nocapture "unpacked"="3.0" %.0, i32* noalias nocapture "unpacked"="3.1" %.1, [150 x i32]* noalias "unpacked"="3.2" %.2, [150 x i8*]* noalias nocapture "unpacked"="3.3.0.0" %.3.0, [150 x i64]* noalias nocapture "unpacked"="3.3.1" %.3.1, [150 x %"union.std::basic_string<char>::(anonymous)"]* noalias "unpacked"="3.3.2" %.3.2, [150 x i64]* noalias "unpacked"="3.4" %.4, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* noalias "unpacked"="3.5" %.5, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* noalias "unpacked"="3.6" %.6, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* noalias "unpacked"="3.7" %.7, [3 x i32]* noalias readonly "unpacked"="4", [3 x i32]* noalias align 512 "unpacked"="5") unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %1, i8* %0)
  call fastcc void @"onebyonecpy_hls.p0class.dune::FDHDChannelMapSP"(i32* %.0, i32* %.1, [150 x i32]* %.2, [150 x i8*]* %.3.0, [150 x i64]* %.3.1, [150 x %"union.std::basic_string<char>::(anonymous)"]* %.3.2, [150 x i64]* %.4, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %.5, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %.6, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %.7, %"class.dune::FDHDChannelMapSP"* %2)
  call fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* align 512 %4, [3 x i32]* %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i8(i8* noalias align 512 %dst, i8* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq i8* %dst, null
  %1 = icmp eq i8* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = load i8, i8* %src, align 1
  store i8 %3, i8* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a150i32([150 x i32]* %dst, [150 x i32]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [150 x i32]* %src, null
  %1 = icmp eq [150 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [150 x i32], [150 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [150 x i32], [150 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a8i8([8 x i8]* %dst, [8 x i8]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [8 x i8]* %src, null
  %1 = icmp eq [8 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [8 x i8], [8 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [8 x i8], [8 x i8]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i8, i8* %src.addr, align 1
  store i8 %3, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a150struct.dune::FDHDChannelMapSP::KeyValuePair"([150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %dst, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %src, null
  %1 = icmp eq [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond5 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond5, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx6 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.01 = getelementptr [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"], [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %src, i64 0, i64 %for.loop.idx6, i32 0
  %dst.addr.02 = getelementptr [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"], [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %dst, i64 0, i64 %for.loop.idx6, i32 0
  %3 = load i32, i32* %src.addr.01, align 4
  store i32 %3, i32* %dst.addr.02, align 4
  %src.addr.13 = getelementptr [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"], [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %src, i64 0, i64 %for.loop.idx6, i32 1
  %dst.addr.14 = getelementptr [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"], [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %dst, i64 0, i64 %for.loop.idx6, i32 1
  %4 = load i32, i32* %src.addr.13, align 4
  store i32 %4, i32* %dst.addr.14, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx6, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a5120struct.dune::FDHDChannelMapSP::HDChanInfoStruct"([5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src, null
  %1 = icmp eq [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond39 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond39, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx40 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.01 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src, i64 0, i64 %for.loop.idx40, i32 0
  %dst.addr.02 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst, i64 0, i64 %for.loop.idx40, i32 0
  %3 = load i32, i32* %src.addr.01, align 4
  store i32 %3, i32* %dst.addr.02, align 4
  %src.addr.13 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src, i64 0, i64 %for.loop.idx40, i32 1
  %dst.addr.14 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst, i64 0, i64 %for.loop.idx40, i32 1
  %4 = load i32, i32* %src.addr.13, align 4
  store i32 %4, i32* %dst.addr.14, align 4
  %src.addr.25 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src, i64 0, i64 %for.loop.idx40, i32 2
  %dst.addr.26 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst, i64 0, i64 %for.loop.idx40, i32 2
  %5 = load i32, i32* %src.addr.25, align 4
  store i32 %5, i32* %dst.addr.26, align 4
  %src.addr.37 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src, i64 0, i64 %for.loop.idx40, i32 3
  %dst.addr.38 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst, i64 0, i64 %for.loop.idx40, i32 3
  %6 = load i32, i32* %src.addr.37, align 4
  store i32 %6, i32* %dst.addr.38, align 4
  %src.addr.4.011 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src, i64 0, i64 %for.loop.idx40, i32 4, i32 0
  %dst.addr.4.012 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst, i64 0, i64 %for.loop.idx40, i32 4, i32 0
  %7 = load i32, i32* %src.addr.4.011, align 4
  store i32 %7, i32* %dst.addr.4.012, align 4
  %src.addr.4.113 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src, i64 0, i64 %for.loop.idx40, i32 4, i32 1
  %dst.addr.4.114 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst, i64 0, i64 %for.loop.idx40, i32 4, i32 1
  %8 = load i32, i32* %src.addr.4.113, align 4
  store i32 %8, i32* %dst.addr.4.114, align 4
  %src.addr.4.215 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src, i64 0, i64 %for.loop.idx40, i32 4, i32 2
  %dst.addr.4.216 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst, i64 0, i64 %for.loop.idx40, i32 4, i32 2
  %9 = load i32, i32* %src.addr.4.215, align 4
  store i32 %9, i32* %dst.addr.4.216, align 4
  %src.addr.4.317 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src, i64 0, i64 %for.loop.idx40, i32 4, i32 3
  %dst.addr.4.318 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst, i64 0, i64 %for.loop.idx40, i32 4, i32 3
  %10 = load i32, i32* %src.addr.4.317, align 4
  store i32 %10, i32* %dst.addr.4.318, align 4
  %src.addr.4.419 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src, i64 0, i64 %for.loop.idx40, i32 4, i32 4
  %dst.addr.4.420 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst, i64 0, i64 %for.loop.idx40, i32 4, i32 4
  %11 = load i32, i32* %src.addr.4.419, align 4
  store i32 %11, i32* %dst.addr.4.420, align 4
  %src.addr.4.521 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src, i64 0, i64 %for.loop.idx40, i32 4, i32 5
  %dst.addr.4.522 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst, i64 0, i64 %for.loop.idx40, i32 4, i32 5
  %12 = load i32, i32* %src.addr.4.521, align 4
  store i32 %12, i32* %dst.addr.4.522, align 4
  %src.addr.4.623 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src, i64 0, i64 %for.loop.idx40, i32 4, i32 6
  %dst.addr.4.624 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst, i64 0, i64 %for.loop.idx40, i32 4, i32 6
  %13 = load i32, i32* %src.addr.4.623, align 4
  store i32 %13, i32* %dst.addr.4.624, align 4
  %src.addr.4.725 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src, i64 0, i64 %for.loop.idx40, i32 4, i32 7
  %dst.addr.4.726 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst, i64 0, i64 %for.loop.idx40, i32 4, i32 7
  %14 = load i32, i32* %src.addr.4.725, align 4
  store i32 %14, i32* %dst.addr.4.726, align 4
  %src.addr.4.827 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src, i64 0, i64 %for.loop.idx40, i32 4, i32 8
  %dst.addr.4.828 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst, i64 0, i64 %for.loop.idx40, i32 4, i32 8
  %15 = load i32, i32* %src.addr.4.827, align 4
  store i32 %15, i32* %dst.addr.4.828, align 4
  %src.addr.4.929 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src, i64 0, i64 %for.loop.idx40, i32 4, i32 9
  %dst.addr.4.930 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst, i64 0, i64 %for.loop.idx40, i32 4, i32 9
  %16 = load i32, i32* %src.addr.4.929, align 4
  store i32 %16, i32* %dst.addr.4.930, align 4
  %src.addr.4.1031 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src, i64 0, i64 %for.loop.idx40, i32 4, i32 10
  %dst.addr.4.1032 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst, i64 0, i64 %for.loop.idx40, i32 4, i32 10
  %17 = load i32, i32* %src.addr.4.1031, align 4
  store i32 %17, i32* %dst.addr.4.1032, align 4
  %src.addr.4.1133 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src, i64 0, i64 %for.loop.idx40, i32 4, i32 11
  %dst.addr.4.1134 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst, i64 0, i64 %for.loop.idx40, i32 4, i32 11
  %18 = load i32, i32* %src.addr.4.1133, align 4
  store i32 %18, i32* %dst.addr.4.1134, align 4
  %src.addr.4.1235 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src, i64 0, i64 %for.loop.idx40, i32 4, i32 12
  %dst.addr.4.1236 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst, i64 0, i64 %for.loop.idx40, i32 4, i32 12
  %19 = load i32, i32* %src.addr.4.1235, align 4
  store i32 %19, i32* %dst.addr.4.1236, align 4
  %src.addr.4.1337 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src, i64 0, i64 %for.loop.idx40, i32 4, i32 13
  %dst.addr.4.1338 = getelementptr [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst, i64 0, i64 %for.loop.idx40, i32 4, i32 13
  %20 = bitcast i1* %src.addr.4.1337 to i8*
  %21 = load i8, i8* %20
  %22 = trunc i8 %21 to i1
  store i1 %22, i1* %dst.addr.4.1338, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx40, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* noalias align 512 %dst, [3 x i32]* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [3 x i32]* %dst, null
  %1 = icmp eq [3 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a3i32([3 x i32]* nonnull %dst, [3 x i32]* nonnull %src, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a3i32([3 x i32]* %dst, [3 x i32]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [3 x i32]* %src, null
  %1 = icmp eq [3 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x i32], [3 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [3 x i32], [3 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out(i8* noalias "unpacked"="0", i8* noalias readonly align 512 "unpacked"="1", %"class.dune::FDHDChannelMapSP"* noalias "unpacked"="2", i32* noalias nocapture readonly "unpacked"="3.0" %.0, i32* noalias nocapture readonly "unpacked"="3.1" %.1, [150 x i32]* noalias readonly "unpacked"="3.2" %.2, [150 x i8*]* noalias nocapture readonly "unpacked"="3.3.0.0" %.3.0, [150 x i64]* noalias nocapture readonly "unpacked"="3.3.1" %.3.1, [150 x %"union.std::basic_string<char>::(anonymous)"]* noalias readonly "unpacked"="3.3.2" %.3.2, [150 x i64]* noalias readonly "unpacked"="3.4" %.4, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* noalias readonly "unpacked"="3.5" %.5, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* noalias readonly "unpacked"="3.6" %.6, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* noalias readonly "unpacked"="3.7" %.7, [3 x i32]* noalias "unpacked"="4", [3 x i32]* noalias readonly align 512 "unpacked"="5") unnamed_addr #5 {
entry:
  call fastcc void @onebyonecpy_hls.p0i8(i8* %0, i8* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.dune::FDHDChannelMapSP.274"(%"class.dune::FDHDChannelMapSP"* %2, i32* %.0, i32* %.1, [150 x i32]* %.2, [150 x i8*]* %.3.0, [150 x i64]* %.3.1, [150 x %"union.std::basic_string<char>::(anonymous)"]* %.3.2, [150 x i64]* %.4, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %.5, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %.6, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %.7)
  call fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* %3, [3 x i32]* align 512 %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0class.dune::FDHDChannelMapSP.274"(%"class.dune::FDHDChannelMapSP"* noalias "unpacked"="0" %dst, i32* noalias nocapture readonly "unpacked"="1.0" %src.01, i32* noalias nocapture readonly "unpacked"="1.1" %src.12, [150 x i32]* noalias readonly "unpacked"="1.2" %src.23, [150 x i8*]* noalias nocapture readonly "unpacked"="1.3.0.0" %src.34.0, [150 x i64]* noalias nocapture readonly "unpacked"="1.3.1" %src.34.1, [150 x %"union.std::basic_string<char>::(anonymous)"]* noalias readonly "unpacked"="1.3.2" %src.34.2, [150 x i64]* noalias readonly "unpacked"="1.4" %src.45, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* noalias readonly "unpacked"="1.5" %src.56, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* noalias readonly "unpacked"="1.6" %src.67, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* noalias readonly "unpacked"="1.7" %src.78) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.dune::FDHDChannelMapSP"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %dst, i64 0, i32 0
  %1 = load i32, i32* %src.01, align 4
  store i32 %1, i32* %dst.0, align 4
  %dst.1 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %dst, i64 0, i32 1
  %2 = load i32, i32* %src.12, align 4
  store i32 %2, i32* %dst.1, align 4
  %dst.2 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %dst, i64 0, i32 2
  call void @arraycpy_hls.p0a150i32([150 x i32]* %dst.2, [150 x i32]* %src.23, i64 150)
  %dst.3 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %dst, i64 0, i32 3
  call void @"arraycpy_hls.p0a150class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >.294.301"([150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"]* %dst.3, [150 x i8*]* %src.34.0, [150 x i64]* %src.34.1, [150 x %"union.std::basic_string<char>::(anonymous)"]* %src.34.2, i64 150)
  %dst.4 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %dst, i64 0, i32 4
  call void @"arraycpy_hls.p0a150struct.dune::FDHDChannelMapSP::KeyValuePair.419"([150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %dst.4, [150 x i64]* %src.45, i64 150)
  %dst.5 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %dst, i64 0, i32 5
  call void @"arraycpy_hls.p0a150struct.dune::FDHDChannelMapSP::KeyValuePair"([150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %dst.5, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %src.56, i64 150)
  %dst.6 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %dst, i64 0, i32 6
  call void @"arraycpy_hls.p0a150struct.dune::FDHDChannelMapSP::KeyValuePair"([150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %dst.6, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %src.67, i64 150)
  %dst.7 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %dst, i64 0, i32 7
  call void @"arraycpy_hls.p0a5120struct.dune::FDHDChannelMapSP::HDChanInfoStruct"([5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst.7, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src.78, i64 5120)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a150class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >.294.301"([150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"]* "unpacked"="0" %dst, [150 x i8*]* nocapture readonly "unpacked"="1.0.0" %src.0, [150 x i64]* nocapture readonly "unpacked"="1.1" %src.1, [150 x %"union.std::basic_string<char>::(anonymous)"]* readonly "unpacked"="1.2" %src.2, i64 "unpacked"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.03 = getelementptr [150 x i8*], [150 x i8*]* %src.0, i64 0, i64 %for.loop.idx2
  %dst.addr.0.04 = getelementptr [150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"], [150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0
  %1 = load i8*, i8** %src.addr.0.03, align 8
  store i8* %1, i8** %dst.addr.0.04, align 8
  %src.addr.15 = getelementptr [150 x i64], [150 x i64]* %src.1, i64 0, i64 %for.loop.idx2
  %dst.addr.16 = getelementptr [150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"], [150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"]* %dst, i64 0, i64 %for.loop.idx2, i32 1
  %2 = load i64, i64* %src.addr.15, align 8
  store i64 %2, i64* %dst.addr.16, align 8
  %src.addr.2.09 = getelementptr [150 x %"union.std::basic_string<char>::(anonymous)"], [150 x %"union.std::basic_string<char>::(anonymous)"]* %src.2, i64 0, i64 %for.loop.idx2, i32 0
  %dst.addr.2.010 = getelementptr [150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"], [150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"]* %dst, i64 0, i64 %for.loop.idx2, i32 2, i32 0
  %3 = load i64, i64* %src.addr.2.09, align 8
  store i64 %3, i64* %dst.addr.2.010, align 8
  %src.addr.2.111 = getelementptr [150 x %"union.std::basic_string<char>::(anonymous)"], [150 x %"union.std::basic_string<char>::(anonymous)"]* %src.2, i64 0, i64 %for.loop.idx2, i32 1
  %dst.addr.2.112 = getelementptr [150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"], [150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"]* %dst, i64 0, i64 %for.loop.idx2, i32 2, i32 1
  call void @arraycpy_hls.p0a8i8([8 x i8]* %dst.addr.2.112, [8 x i8]* %src.addr.2.111, i64 8)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0class.dune::FDHDChannelMapSP"(i32* noalias nocapture "unpacked"="0.0" %dst.01, i32* noalias nocapture "unpacked"="0.1" %dst.12, [150 x i32]* noalias "unpacked"="0.2" %dst.23, [150 x i8*]* noalias nocapture "unpacked"="0.3.0.0" %dst.34.0, [150 x i64]* noalias nocapture "unpacked"="0.3.1" %dst.34.1, [150 x %"union.std::basic_string<char>::(anonymous)"]* noalias "unpacked"="0.3.2" %dst.34.2, [150 x i64]* noalias "unpacked"="0.4" %dst.45, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* noalias "unpacked"="0.5" %dst.56, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* noalias "unpacked"="0.6" %dst.67, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* noalias "unpacked"="0.7" %dst.78, %"class.dune::FDHDChannelMapSP"* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.dune::FDHDChannelMapSP"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %src, i64 0, i32 0
  %1 = load i32, i32* %src.0, align 4
  store i32 %1, i32* %dst.01, align 4
  %src.1 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %src, i64 0, i32 1
  %2 = load i32, i32* %src.1, align 4
  store i32 %2, i32* %dst.12, align 4
  %src.2 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %src, i64 0, i32 2
  call void @arraycpy_hls.p0a150i32([150 x i32]* %dst.23, [150 x i32]* %src.2, i64 150)
  %src.3 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %src, i64 0, i32 3
  call void @"arraycpy_hls.p0a150class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >.285.310"([150 x i8*]* %dst.34.0, [150 x i64]* %dst.34.1, [150 x %"union.std::basic_string<char>::(anonymous)"]* %dst.34.2, [150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"]* %src.3, i64 150)
  %src.4 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %src, i64 0, i32 4
  call void @"arraycpy_hls.p0a150struct.dune::FDHDChannelMapSP::KeyValuePair.414"([150 x i64]* %dst.45, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %src.4, i64 150)
  %src.5 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %src, i64 0, i32 5
  call void @"arraycpy_hls.p0a150struct.dune::FDHDChannelMapSP::KeyValuePair"([150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %dst.56, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %src.5, i64 150)
  %src.6 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %src, i64 0, i32 6
  call void @"arraycpy_hls.p0a150struct.dune::FDHDChannelMapSP::KeyValuePair"([150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %dst.67, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %src.6, i64 150)
  %src.7 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %src, i64 0, i32 7
  call void @"arraycpy_hls.p0a5120struct.dune::FDHDChannelMapSP::HDChanInfoStruct"([5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst.78, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src.7, i64 5120)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a150class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >.285.310"([150 x i8*]* nocapture "unpacked"="0.0.0" %dst.0, [150 x i64]* nocapture "unpacked"="0.1" %dst.1, [150 x %"union.std::basic_string<char>::(anonymous)"]* "unpacked"="0.2" %dst.2, [150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.03 = getelementptr [150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"], [150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0
  %dst.addr.0.04 = getelementptr [150 x i8*], [150 x i8*]* %dst.0, i64 0, i64 %for.loop.idx2
  %1 = load i8*, i8** %src.addr.0.03, align 8
  store i8* %1, i8** %dst.addr.0.04, align 8
  %src.addr.15 = getelementptr [150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"], [150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"]* %src, i64 0, i64 %for.loop.idx2, i32 1
  %dst.addr.16 = getelementptr [150 x i64], [150 x i64]* %dst.1, i64 0, i64 %for.loop.idx2
  %2 = load i64, i64* %src.addr.15, align 8
  store i64 %2, i64* %dst.addr.16, align 8
  %src.addr.2.09 = getelementptr [150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"], [150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"]* %src, i64 0, i64 %for.loop.idx2, i32 2, i32 0
  %dst.addr.2.010 = getelementptr [150 x %"union.std::basic_string<char>::(anonymous)"], [150 x %"union.std::basic_string<char>::(anonymous)"]* %dst.2, i64 0, i64 %for.loop.idx2, i32 0
  %3 = load i64, i64* %src.addr.2.09, align 8
  store i64 %3, i64* %dst.addr.2.010, align 8
  %src.addr.2.111 = getelementptr [150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"], [150 x %"class.std::basic_string<char, std::char_traits<char>, std::allocator<char> >"]* %src, i64 0, i64 %for.loop.idx2, i32 2, i32 1
  %dst.addr.2.112 = getelementptr [150 x %"union.std::basic_string<char>::(anonymous)"], [150 x %"union.std::basic_string<char>::(anonymous)"]* %dst.2, i64 0, i64 %for.loop.idx2, i32 1
  call void @arraycpy_hls.p0a8i8([8 x i8]* %dst.addr.2.112, [8 x i8]* %src.addr.2.111, i64 8)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a150struct.dune::FDHDChannelMapSP::KeyValuePair.414"([150 x i64]* %dst, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %src, null
  %1 = icmp eq [150 x i64]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond5 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond5, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx6 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.01 = getelementptr [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"], [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %src, i64 0, i64 %for.loop.idx6, i32 0
  %3 = getelementptr [150 x i64], [150 x i64]* %dst, i64 0, i64 %for.loop.idx6
  %4 = load i32, i32* %src.addr.01, align 4
  %5 = load i64, i64* %3, align 4
  %6 = zext i32 %4 to i64
  %7 = and i64 %5, -4294967296
  %.partset1 = or i64 %7, %6
  store i64 %.partset1, i64* %3, align 4
  %src.addr.13 = getelementptr [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"], [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %src, i64 0, i64 %for.loop.idx6, i32 1
  %8 = load i32, i32* %src.addr.13, align 4
  %9 = zext i32 %8 to i64
  %10 = shl i64 %9, 32
  %.partset = or i64 %10, %6
  store i64 %.partset, i64* %3, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx6, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a150struct.dune::FDHDChannelMapSP::KeyValuePair.419"([150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %dst, [150 x i64]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [150 x i64]* %src, null
  %1 = icmp eq [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond5 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond5, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx6 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [150 x i64], [150 x i64]* %src, i64 0, i64 %for.loop.idx6
  %dst.addr.02 = getelementptr [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"], [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %dst, i64 0, i64 %for.loop.idx6, i32 0
  %4 = load i64, i64* %3, align 4
  %.partselect1 = trunc i64 %4 to i32
  store i32 %.partselect1, i32* %dst.addr.02, align 4
  %dst.addr.14 = getelementptr [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"], [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %dst, i64 0, i64 %for.loop.idx6, i32 1
  %5 = load i64, i64* %3, align 4
  %6 = lshr i64 %5, 32
  %.partselect = trunc i64 %6 to i32
  store i32 %.partselect, i32* %dst.addr.14, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx6, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_process_data_hw(i32, i8*, i32*, i32*, [150 x i32]*, [150 x i8*]*, [150 x i64]*, [150 x %"union.std::basic_string<char>::(anonymous)"]*, [150 x i64]*, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]*, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]*, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]*, [3 x i32]*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back(i8* noalias "unpacked"="0", i8* noalias readonly align 512 "unpacked"="1", %"class.dune::FDHDChannelMapSP"* noalias "unpacked"="2", i32* noalias nocapture readonly "unpacked"="3.0" %.0, i32* noalias nocapture readonly "unpacked"="3.1" %.1, [150 x i32]* noalias readonly "unpacked"="3.2" %.2, [150 x i8*]* noalias nocapture readonly "unpacked"="3.3.0.0" %.3.0, [150 x i64]* noalias nocapture readonly "unpacked"="3.3.1" %.3.1, [150 x %"union.std::basic_string<char>::(anonymous)"]* noalias readonly "unpacked"="3.3.2" %.3.2, [150 x i64]* noalias readonly "unpacked"="3.4" %.4, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* noalias readonly "unpacked"="3.5" %.5, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* noalias readonly "unpacked"="3.6" %.6, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* noalias readonly "unpacked"="3.7" %.7, [3 x i32]* noalias "unpacked"="4", [3 x i32]* noalias readonly align 512 "unpacked"="5") unnamed_addr #5 {
entry:
  call fastcc void @onebyonecpy_hls.p0i8(i8* %0, i8* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* %3, [3 x i32]* align 512 %4)
  ret void
}

define void @process_data_hw_stub_wrapper(i32, i8*, i32*, i32*, [150 x i32]*, [150 x i8*]*, [150 x i64]*, [150 x %"union.std::basic_string<char>::(anonymous)"]*, [150 x i64]*, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]*, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]*, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]*, [3 x i32]*) #6 {
entry:
  %malloccall = tail call i8* @malloc(i64 377648)
  %13 = bitcast i8* %malloccall to %"class.dune::FDHDChannelMapSP"*
  call void @copy_out(i8* null, i8* %1, %"class.dune::FDHDChannelMapSP"* %13, i32* %2, i32* %3, [150 x i32]* %4, [150 x i8*]* %5, [150 x i64]* %6, [150 x %"union.std::basic_string<char>::(anonymous)"]* %7, [150 x i64]* %8, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %9, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %10, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %11, [3 x i32]* null, [3 x i32]* %12)
  %14 = bitcast [3 x i32]* %12 to i32*
  call void @process_data_hw_stub(i32 %0, i8* %1, %"class.dune::FDHDChannelMapSP"* %13, i32* %14)
  call void @copy_in(i8* null, i8* %1, %"class.dune::FDHDChannelMapSP"* %13, i32* %2, i32* %3, [150 x i32]* %4, [150 x i8*]* %5, [150 x i64]* %6, [150 x %"union.std::basic_string<char>::(anonymous)"]* %7, [150 x i64]* %8, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %9, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %10, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %11, [3 x i32]* null, [3 x i32]* %12)
  ret void
}

declare void @process_data_hw_stub(i32, i8*, %"class.dune::FDHDChannelMapSP"*, i32*)

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="arraycpy_hls" }
attributes #5 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}