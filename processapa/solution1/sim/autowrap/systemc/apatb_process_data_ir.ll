; ModuleID = '/home/brenton/kernel/processAPA/processapa/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.dune::FDHDChannelMapSP" = type { i32, i32, [150 x i32], [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"], [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"], [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"], [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"] }
%"struct.dune::FDHDChannelMapSP::KeyValuePair" = type { i32, i32 }
%"struct.dune::FDHDChannelMapSP::HDChanInfoStruct" = type { i32, i32, i32, i32, %"struct.dune::FDHDChannelMapSP::HDChanInfo" }
%"struct.dune::FDHDChannelMapSP::HDChanInfo" = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i1 }

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #0

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #0

; Function Attrs: noinline
define void @apatb_process_data_ir(i32 %infile_size, i8* noalias nonnull "fpga.decayed.dim.hint"="28320800" "maxi" %infiledata, %"class.dune::FDHDChannelMapSP"* noalias nocapture nonnull readonly dereferenceable(372848) %chanmap, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="276" %outdata) local_unnamed_addr #1 {
entry:
  %malloccall = tail call i8* @malloc(i64 28320800)
  %infiledata_copy = bitcast i8* %malloccall to [28320800 x i8]*
  %malloccall1.0 = call i8* @malloc(i64 4)
  %chanmap_copy.0 = bitcast i8* %malloccall1.0 to i32*
  %malloccall1.1 = call i8* @malloc(i64 4)
  %chanmap_copy.1 = bitcast i8* %malloccall1.1 to i32*
  %malloccall1.2 = call i8* @malloc(i64 600)
  %chanmap_copy.2 = bitcast i8* %malloccall1.2 to [150 x i32]*
  %malloccall1.3 = call i8* @malloc(i64 1200)
  %chanmap_copy.3 = bitcast i8* %malloccall1.3 to [150 x i64]*
  %malloccall1.4 = call i8* @malloc(i64 1200)
  %chanmap_copy.4 = bitcast i8* %malloccall1.4 to [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]*
  %malloccall1.5 = call i8* @malloc(i64 1200)
  %chanmap_copy.5 = bitcast i8* %malloccall1.5 to [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]*
  %malloccall1.6 = call i8* @malloc(i64 368640)
  %chanmap_copy.6 = bitcast i8* %malloccall1.6 to [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]*
  %outdata_copy = alloca [276 x i32], align 512
  %0 = bitcast i8* %infiledata to [28320800 x i8]*
  %1 = bitcast i32* %outdata to [276 x i32]*
  call fastcc void @copy_in([28320800 x i8]* nonnull %0, [28320800 x i8]* %infiledata_copy, %"class.dune::FDHDChannelMapSP"* nonnull %chanmap, i32* %chanmap_copy.0, i32* %chanmap_copy.1, [150 x i32]* %chanmap_copy.2, [150 x i64]* %chanmap_copy.3, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %chanmap_copy.4, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %chanmap_copy.5, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %chanmap_copy.6, [276 x i32]* nonnull %1, [276 x i32]* nonnull align 512 %outdata_copy)
  call void @apatb_process_data_hw(i32 %infile_size, [28320800 x i8]* %infiledata_copy, i32* %chanmap_copy.0, i32* %chanmap_copy.1, [150 x i32]* %chanmap_copy.2, [150 x i64]* %chanmap_copy.3, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %chanmap_copy.4, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %chanmap_copy.5, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %chanmap_copy.6, [276 x i32]* %outdata_copy)
  call void @copy_back([28320800 x i8]* %0, [28320800 x i8]* %infiledata_copy, %"class.dune::FDHDChannelMapSP"* %chanmap, i32* %chanmap_copy.0, i32* %chanmap_copy.1, [150 x i32]* %chanmap_copy.2, [150 x i64]* %chanmap_copy.3, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %chanmap_copy.4, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %chanmap_copy.5, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %chanmap_copy.6, [276 x i32]* %1, [276 x i32]* %outdata_copy)
  tail call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1.0)
  call void @free(i8* %malloccall1.1)
  call void @free(i8* %malloccall1.2)
  call void @free(i8* %malloccall1.3)
  call void @free(i8* %malloccall1.4)
  call void @free(i8* %malloccall1.5)
  call void @free(i8* %malloccall1.6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([28320800 x i8]* noalias readonly "unpacked"="0", [28320800 x i8]* noalias "unpacked"="1", %"class.dune::FDHDChannelMapSP"* noalias readonly "unpacked"="2", i32* noalias nocapture "unpacked"="3.0" %.0, i32* noalias nocapture "unpacked"="3.1" %.1, [150 x i32]* noalias "unpacked"="3.2" %.2, [150 x i64]* noalias "unpacked"="3.3" %.3, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* noalias "unpacked"="3.4" %.4, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* noalias "unpacked"="3.5" %.5, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* noalias "unpacked"="3.6" %.6, [276 x i32]* noalias readonly "unpacked"="4", [276 x i32]* noalias align 512 "unpacked"="5") unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0a28320800i8([28320800 x i8]* %1, [28320800 x i8]* %0)
  call fastcc void @"onebyonecpy_hls.p0class.dune::FDHDChannelMapSP"(i32* %.0, i32* %.1, [150 x i32]* %.2, [150 x i64]* %.3, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %.4, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %.5, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %.6, %"class.dune::FDHDChannelMapSP"* %2)
  call fastcc void @onebyonecpy_hls.p0a276i32([276 x i32]* align 512 %4, [276 x i32]* %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a28320800i8([28320800 x i8]* noalias %dst, [28320800 x i8]* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [28320800 x i8]* %dst, null
  %1 = icmp eq [28320800 x i8]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a28320800i8([28320800 x i8]* nonnull %dst, [28320800 x i8]* nonnull %src, i64 28320800)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a28320800i8([28320800 x i8]* %dst, [28320800 x i8]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [28320800 x i8]* %src, null
  %1 = icmp eq [28320800 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [28320800 x i8], [28320800 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [28320800 x i8], [28320800 x i8]* %src, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @"onebyonecpy_hls.p0class.dune::FDHDChannelMapSP"(i32* noalias nocapture "unpacked"="0.0" %dst.01, i32* noalias nocapture "unpacked"="0.1" %dst.12, [150 x i32]* noalias "unpacked"="0.2" %dst.23, [150 x i64]* noalias "unpacked"="0.3" %dst.34, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* noalias "unpacked"="0.4" %dst.45, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* noalias "unpacked"="0.5" %dst.56, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* noalias "unpacked"="0.6" %dst.67, %"class.dune::FDHDChannelMapSP"* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
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
  call void @"arraycpy_hls.p0a150struct.dune::FDHDChannelMapSP::KeyValuePair.393"([150 x i64]* %dst.34, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %src.3, i64 150)
  %src.4 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %src, i64 0, i32 4
  call void @"arraycpy_hls.p0a150struct.dune::FDHDChannelMapSP::KeyValuePair"([150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %dst.45, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %src.4, i64 150)
  %src.5 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %src, i64 0, i32 5
  call void @"arraycpy_hls.p0a150struct.dune::FDHDChannelMapSP::KeyValuePair"([150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %dst.56, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %src.5, i64 150)
  %src.6 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %src, i64 0, i32 6
  call void @"arraycpy_hls.p0a5120struct.dune::FDHDChannelMapSP::HDChanInfoStruct"([5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst.67, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src.6, i64 5120)
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
define internal fastcc void @onebyonecpy_hls.p0a276i32([276 x i32]* noalias align 512 %dst, [276 x i32]* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [276 x i32]* %dst, null
  %1 = icmp eq [276 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a276i32([276 x i32]* nonnull %dst, [276 x i32]* nonnull %src, i64 276)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a276i32([276 x i32]* %dst, [276 x i32]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [276 x i32]* %src, null
  %1 = icmp eq [276 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [276 x i32], [276 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [276 x i32], [276 x i32]* %src, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @copy_out([28320800 x i8]* noalias "unpacked"="0", [28320800 x i8]* noalias readonly "unpacked"="1", %"class.dune::FDHDChannelMapSP"* noalias "unpacked"="2", i32* noalias nocapture readonly "unpacked"="3.0" %.0, i32* noalias nocapture readonly "unpacked"="3.1" %.1, [150 x i32]* noalias readonly "unpacked"="3.2" %.2, [150 x i64]* noalias readonly "unpacked"="3.3" %.3, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* noalias readonly "unpacked"="3.4" %.4, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* noalias readonly "unpacked"="3.5" %.5, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* noalias readonly "unpacked"="3.6" %.6, [276 x i32]* noalias "unpacked"="4", [276 x i32]* noalias readonly align 512 "unpacked"="5") unnamed_addr #5 {
entry:
  call fastcc void @onebyonecpy_hls.p0a28320800i8([28320800 x i8]* %0, [28320800 x i8]* %1)
  call fastcc void @"onebyonecpy_hls.p0class.dune::FDHDChannelMapSP.273"(%"class.dune::FDHDChannelMapSP"* %2, i32* %.0, i32* %.1, [150 x i32]* %.2, [150 x i64]* %.3, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %.4, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %.5, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %.6)
  call fastcc void @onebyonecpy_hls.p0a276i32([276 x i32]* %3, [276 x i32]* align 512 %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0class.dune::FDHDChannelMapSP.273"(%"class.dune::FDHDChannelMapSP"* noalias "unpacked"="0" %dst, i32* noalias nocapture readonly "unpacked"="1.0" %src.01, i32* noalias nocapture readonly "unpacked"="1.1" %src.12, [150 x i32]* noalias readonly "unpacked"="1.2" %src.23, [150 x i64]* noalias readonly "unpacked"="1.3" %src.34, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* noalias readonly "unpacked"="1.4" %src.45, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* noalias readonly "unpacked"="1.5" %src.56, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* noalias readonly "unpacked"="1.6" %src.67) unnamed_addr #3 {
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
  call void @"arraycpy_hls.p0a150struct.dune::FDHDChannelMapSP::KeyValuePair.398"([150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %dst.3, [150 x i64]* %src.34, i64 150)
  %dst.4 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %dst, i64 0, i32 4
  call void @"arraycpy_hls.p0a150struct.dune::FDHDChannelMapSP::KeyValuePair"([150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %dst.4, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %src.45, i64 150)
  %dst.5 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %dst, i64 0, i32 5
  call void @"arraycpy_hls.p0a150struct.dune::FDHDChannelMapSP::KeyValuePair"([150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %dst.5, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %src.56, i64 150)
  %dst.6 = getelementptr %"class.dune::FDHDChannelMapSP", %"class.dune::FDHDChannelMapSP"* %dst, i64 0, i32 6
  call void @"arraycpy_hls.p0a5120struct.dune::FDHDChannelMapSP::HDChanInfoStruct"([5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %dst.6, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %src.67, i64 5120)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a150struct.dune::FDHDChannelMapSP::KeyValuePair.393"([150 x i64]* %dst, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* readonly %src, i64 %num) local_unnamed_addr #4 {
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
define void @"arraycpy_hls.p0a150struct.dune::FDHDChannelMapSP::KeyValuePair.398"([150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %dst, [150 x i64]* readonly %src, i64 %num) local_unnamed_addr #4 {
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

declare void @apatb_process_data_hw(i32, [28320800 x i8]*, i32*, i32*, [150 x i32]*, [150 x i64]*, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]*, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]*, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]*, [276 x i32]*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([28320800 x i8]* noalias "unpacked"="0", [28320800 x i8]* noalias readonly "unpacked"="1", %"class.dune::FDHDChannelMapSP"* noalias "unpacked"="2", i32* noalias nocapture readonly "unpacked"="3.0" %.0, i32* noalias nocapture readonly "unpacked"="3.1" %.1, [150 x i32]* noalias readonly "unpacked"="3.2" %.2, [150 x i64]* noalias readonly "unpacked"="3.3" %.3, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* noalias readonly "unpacked"="3.4" %.4, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* noalias readonly "unpacked"="3.5" %.5, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* noalias readonly "unpacked"="3.6" %.6, [276 x i32]* noalias "unpacked"="4", [276 x i32]* noalias readonly align 512 "unpacked"="5") unnamed_addr #5 {
entry:
  call fastcc void @onebyonecpy_hls.p0a28320800i8([28320800 x i8]* %0, [28320800 x i8]* %1)
  call fastcc void @onebyonecpy_hls.p0a276i32([276 x i32]* %3, [276 x i32]* align 512 %4)
  ret void
}

define void @process_data_hw_stub_wrapper(i32, [28320800 x i8]*, i32*, i32*, [150 x i32]*, [150 x i64]*, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]*, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]*, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]*, [276 x i32]*) #6 {
entry:
  %malloccall = tail call i8* @malloc(i64 372848)
  %10 = bitcast i8* %malloccall to %"class.dune::FDHDChannelMapSP"*
  call void @copy_out([28320800 x i8]* null, [28320800 x i8]* %1, %"class.dune::FDHDChannelMapSP"* %10, i32* %2, i32* %3, [150 x i32]* %4, [150 x i64]* %5, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %6, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %7, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %8, [276 x i32]* null, [276 x i32]* %9)
  %11 = bitcast [28320800 x i8]* %1 to i8*
  %12 = bitcast [276 x i32]* %9 to i32*
  call void @process_data_hw_stub(i32 %0, i8* %11, %"class.dune::FDHDChannelMapSP"* %10, i32* %12)
  call void @copy_in([28320800 x i8]* null, [28320800 x i8]* %1, %"class.dune::FDHDChannelMapSP"* %10, i32* %2, i32* %3, [150 x i32]* %4, [150 x i64]* %5, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %6, [150 x %"struct.dune::FDHDChannelMapSP::KeyValuePair"]* %7, [5120 x %"struct.dune::FDHDChannelMapSP::HDChanInfoStruct"]* %8, [276 x i32]* null, [276 x i32]* %9)
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
