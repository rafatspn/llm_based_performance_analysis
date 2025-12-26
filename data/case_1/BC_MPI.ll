; ModuleID = 'code_1.cpp'
source_filename = "code_1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.bg::Vector" = type { %"class.bg::DataStruct", i64, i32, ptr }
%"class.bg::DataStruct" = type { %"class.std::shared_ptr", ptr, i64 }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::_Sp_counted_base" = type { ptr, i32, i32 }

$_ZN2bg6VectorIdEC2Em = comdat any

$_ZN2bg6VectorIdEclEi = comdat any

$_ZN2bg8function3F_0IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii = comdat any

$_ZN2bg8function3F_1IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii = comdat any

$_ZN2bg8function3F_2IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii = comdat any

$_ZN2bg8function3F_3IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii = comdat any

$_ZN2bg8function3F_4IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii = comdat any

$_ZN2bg8function3F_5IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii = comdat any

$_ZN2bg8function3F_6IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii = comdat any

$_ZN2bg8function3F_7IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii = comdat any

$_ZN2bg8function3F_8IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii = comdat any

$_ZN2bg8function3F_9IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii = comdat any

$_ZN2bg6VectorIdED2Ev = comdat any

$_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZN2bg10DataStructIdEC2Ev = comdat any

$_ZN2bg10DataStructIdED2Ev = comdat any

$_ZNSt10shared_ptrIA_dEC2EDn = comdat any

$_ZNSt10shared_ptrIA_dEC2Ev = comdat any

$_ZNSt12__shared_ptrIA_dLN9__gnu_cxx12_Lock_policyE2EEC2Ev = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev = comdat any

$_ZNSt10shared_ptrIA_dED2Ev = comdat any

$_ZNSt12__shared_ptrIA_dLN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv = comdat any

$_ZSt3powImdEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_ = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt11char_traitsIcE7compareEPKcS2_m = comdat any

@.str = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"BENCHMARK GENERATOR \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"MPI\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Number of processors = \00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Input size (default value): n = \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Input size: n = \00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Input size (default value): x = \00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Input size: x = \00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Input size: p = \00", align 1
@__libc_single_threaded = external global i8, align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z7MODEL_1mmii(i64 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) #0 personality ptr @__gxx_personality_v0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %"class.bg::Vector", align 8
  %13 = alloca %"class.bg::Vector", align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca %"class.bg::Vector", align 8
  %17 = alloca %"class.bg::Vector", align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i64 %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %22 = load i64, ptr %5, align 8
  %23 = mul i64 %22, 10
  store i64 %23, ptr %9, align 8
  %24 = load i64, ptr %9, align 8
  %25 = trunc i64 %24 to i32
  %26 = sext i32 %25 to i64
  store i64 %26, ptr %10, align 8
  %27 = load i64, ptr %9, align 8
  %28 = load i32, ptr %8, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %27, %29
  %31 = trunc i64 %30 to i32
  %32 = sext i32 %31 to i64
  store i64 %32, ptr %11, align 8
  %33 = load i64, ptr %10, align 8
  call void @_ZN2bg6VectorIdEC2Em(ptr noundef nonnull align 8 dereferenceable(56) %12, i64 noundef %33)
  %34 = load i64, ptr %10, align 8
  invoke void @_ZN2bg6VectorIdEC2Em(ptr noundef nonnull align 8 dereferenceable(56) %13, i64 noundef %34)
          to label %35 unwind label %67

35:                                               ; preds = %4
  %36 = load i64, ptr %10, align 8
  invoke void @_ZN2bg6VectorIdEC2Em(ptr noundef nonnull align 8 dereferenceable(56) %16, i64 noundef %36)
          to label %37 unwind label %71

37:                                               ; preds = %35
  %38 = load i64, ptr %11, align 8
  invoke void @_ZN2bg6VectorIdEC2Em(ptr noundef nonnull align 8 dereferenceable(56) %17, i64 noundef %38)
          to label %39 unwind label %75

39:                                               ; preds = %37
  store i32 50, ptr %18, align 4
  %40 = load i32, ptr %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %99

42:                                               ; preds = %39
  store i32 0, ptr %19, align 4
  br label %43

43:                                               ; preds = %64, %42
  %44 = load i32, ptr %19, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, ptr %10, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %83

48:                                               ; preds = %43
  %49 = call i32 @rand() #10
  %50 = srem i32 %49, 1000
  %51 = load i32, ptr %19, align 4
  %52 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %12, i32 noundef %51)
          to label %53 unwind label %79

53:                                               ; preds = %48
  store i32 %50, ptr %52, align 4
  %54 = call i32 @rand() #10
  %55 = srem i32 %54, 1000
  %56 = load i32, ptr %19, align 4
  %57 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %13, i32 noundef %56)
          to label %58 unwind label %79

58:                                               ; preds = %53
  store i32 %55, ptr %57, align 4
  %59 = call i32 @rand() #10
  %60 = srem i32 %59, 1000
  %61 = load i32, ptr %19, align 4
  %62 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %16, i32 noundef %61)
          to label %63 unwind label %79

63:                                               ; preds = %58
  store i32 %60, ptr %62, align 4
  br label %64

64:                                               ; preds = %63
  %65 = load i32, ptr %19, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %19, align 4
  br label %43, !llvm.loop !6

67:                                               ; preds = %4
  %68 = landingpad { ptr, i32 }
          cleanup
  %69 = extractvalue { ptr, i32 } %68, 0
  store ptr %69, ptr %14, align 8
  %70 = extractvalue { ptr, i32 } %68, 1
  store i32 %70, ptr %15, align 4
  br label %181

71:                                               ; preds = %35
  %72 = landingpad { ptr, i32 }
          cleanup
  %73 = extractvalue { ptr, i32 } %72, 0
  store ptr %73, ptr %14, align 8
  %74 = extractvalue { ptr, i32 } %72, 1
  store i32 %74, ptr %15, align 4
  br label %180

75:                                               ; preds = %37
  %76 = landingpad { ptr, i32 }
          cleanup
  %77 = extractvalue { ptr, i32 } %76, 0
  store ptr %77, ptr %14, align 8
  %78 = extractvalue { ptr, i32 } %76, 1
  store i32 %78, ptr %15, align 4
  br label %179

79:                                               ; preds = %167, %160, %153, %146, %139, %132, %125, %118, %111, %104, %89, %58, %53, %48
  %80 = landingpad { ptr, i32 }
          cleanup
  %81 = extractvalue { ptr, i32 } %80, 0
  store ptr %81, ptr %14, align 8
  %82 = extractvalue { ptr, i32 } %80, 1
  store i32 %82, ptr %15, align 4
  call void @_ZN2bg6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %17) #10
  br label %179

83:                                               ; preds = %43
  store i32 0, ptr %20, align 4
  br label %84

84:                                               ; preds = %95, %83
  %85 = load i32, ptr %20, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, ptr %11, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = call i32 @rand() #10
  %91 = srem i32 %90, 1000
  %92 = load i32, ptr %20, align 4
  %93 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %17, i32 noundef %92)
          to label %94 unwind label %79

94:                                               ; preds = %89
  store i32 %91, ptr %93, align 4
  br label %95

95:                                               ; preds = %94
  %96 = load i32, ptr %20, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %20, align 4
  br label %84, !llvm.loop !8

98:                                               ; preds = %84
  br label %99

99:                                               ; preds = %98, %39
  store i32 0, ptr %21, align 4
  br label %100

100:                                              ; preds = %175, %99
  %101 = load i32, ptr %21, align 4
  %102 = load i32, ptr %18, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %178

104:                                              ; preds = %100
  %105 = load i64, ptr %5, align 8
  %106 = load i64, ptr %6, align 8
  %107 = load i64, ptr %10, align 8
  %108 = load i64, ptr %11, align 8
  %109 = load i32, ptr %7, align 4
  %110 = load i32, ptr %8, align 4
  invoke void @_ZN2bg8function3F_0IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii(i64 noundef %105, i64 noundef %106, ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %17, i64 noundef %107, i64 noundef %108, i32 noundef %109, i32 noundef %110)
          to label %111 unwind label %79

111:                                              ; preds = %104
  %112 = load i64, ptr %5, align 8
  %113 = load i64, ptr %6, align 8
  %114 = load i64, ptr %10, align 8
  %115 = load i64, ptr %11, align 8
  %116 = load i32, ptr %7, align 4
  %117 = load i32, ptr %8, align 4
  invoke void @_ZN2bg8function3F_1IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii(i64 noundef %112, i64 noundef %113, ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %17, i64 noundef %114, i64 noundef %115, i32 noundef %116, i32 noundef %117)
          to label %118 unwind label %79

118:                                              ; preds = %111
  %119 = load i64, ptr %5, align 8
  %120 = load i64, ptr %6, align 8
  %121 = load i64, ptr %10, align 8
  %122 = load i64, ptr %11, align 8
  %123 = load i32, ptr %7, align 4
  %124 = load i32, ptr %8, align 4
  invoke void @_ZN2bg8function3F_2IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii(i64 noundef %119, i64 noundef %120, ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %17, i64 noundef %121, i64 noundef %122, i32 noundef %123, i32 noundef %124)
          to label %125 unwind label %79

125:                                              ; preds = %118
  %126 = load i64, ptr %5, align 8
  %127 = load i64, ptr %6, align 8
  %128 = load i64, ptr %10, align 8
  %129 = load i64, ptr %11, align 8
  %130 = load i32, ptr %7, align 4
  %131 = load i32, ptr %8, align 4
  invoke void @_ZN2bg8function3F_3IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii(i64 noundef %126, i64 noundef %127, ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %17, i64 noundef %128, i64 noundef %129, i32 noundef %130, i32 noundef %131)
          to label %132 unwind label %79

132:                                              ; preds = %125
  %133 = load i64, ptr %5, align 8
  %134 = load i64, ptr %6, align 8
  %135 = load i64, ptr %10, align 8
  %136 = load i64, ptr %11, align 8
  %137 = load i32, ptr %7, align 4
  %138 = load i32, ptr %8, align 4
  invoke void @_ZN2bg8function3F_4IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii(i64 noundef %133, i64 noundef %134, ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %17, i64 noundef %135, i64 noundef %136, i32 noundef %137, i32 noundef %138)
          to label %139 unwind label %79

139:                                              ; preds = %132
  %140 = load i64, ptr %5, align 8
  %141 = load i64, ptr %6, align 8
  %142 = load i64, ptr %10, align 8
  %143 = load i64, ptr %11, align 8
  %144 = load i32, ptr %7, align 4
  %145 = load i32, ptr %8, align 4
  invoke void @_ZN2bg8function3F_5IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii(i64 noundef %140, i64 noundef %141, ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %17, i64 noundef %142, i64 noundef %143, i32 noundef %144, i32 noundef %145)
          to label %146 unwind label %79

146:                                              ; preds = %139
  %147 = load i64, ptr %5, align 8
  %148 = load i64, ptr %6, align 8
  %149 = load i64, ptr %10, align 8
  %150 = load i64, ptr %11, align 8
  %151 = load i32, ptr %7, align 4
  %152 = load i32, ptr %8, align 4
  invoke void @_ZN2bg8function3F_6IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii(i64 noundef %147, i64 noundef %148, ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %17, i64 noundef %149, i64 noundef %150, i32 noundef %151, i32 noundef %152)
          to label %153 unwind label %79

153:                                              ; preds = %146
  %154 = load i64, ptr %5, align 8
  %155 = load i64, ptr %6, align 8
  %156 = load i64, ptr %10, align 8
  %157 = load i64, ptr %11, align 8
  %158 = load i32, ptr %7, align 4
  %159 = load i32, ptr %8, align 4
  invoke void @_ZN2bg8function3F_7IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii(i64 noundef %154, i64 noundef %155, ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %17, i64 noundef %156, i64 noundef %157, i32 noundef %158, i32 noundef %159)
          to label %160 unwind label %79

160:                                              ; preds = %153
  %161 = load i64, ptr %5, align 8
  %162 = load i64, ptr %6, align 8
  %163 = load i64, ptr %10, align 8
  %164 = load i64, ptr %11, align 8
  %165 = load i32, ptr %7, align 4
  %166 = load i32, ptr %8, align 4
  invoke void @_ZN2bg8function3F_8IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii(i64 noundef %161, i64 noundef %162, ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %17, i64 noundef %163, i64 noundef %164, i32 noundef %165, i32 noundef %166)
          to label %167 unwind label %79

167:                                              ; preds = %160
  %168 = load i64, ptr %5, align 8
  %169 = load i64, ptr %6, align 8
  %170 = load i64, ptr %10, align 8
  %171 = load i64, ptr %11, align 8
  %172 = load i32, ptr %7, align 4
  %173 = load i32, ptr %8, align 4
  invoke void @_ZN2bg8function3F_9IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii(i64 noundef %168, i64 noundef %169, ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %17, i64 noundef %170, i64 noundef %171, i32 noundef %172, i32 noundef %173)
          to label %174 unwind label %79

174:                                              ; preds = %167
  br label %175

175:                                              ; preds = %174
  %176 = load i32, ptr %21, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, ptr %21, align 4
  br label %100, !llvm.loop !9

178:                                              ; preds = %100
  call void @_ZN2bg6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %17) #10
  call void @_ZN2bg6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %16) #10
  call void @_ZN2bg6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %13) #10
  call void @_ZN2bg6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %12) #10
  ret void

179:                                              ; preds = %79, %75
  call void @_ZN2bg6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %16) #10
  br label %180

180:                                              ; preds = %179, %71
  call void @_ZN2bg6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %13) #10
  br label %181

181:                                              ; preds = %180, %67
  call void @_ZN2bg6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %12) #10
  br label %182

182:                                              ; preds = %181
  %183 = load ptr, ptr %14, align 8
  %184 = load i32, ptr %15, align 4
  %185 = insertvalue { ptr, i32 } poison, ptr %183, 0
  %186 = insertvalue { ptr, i32 } %185, i32 %184, 1
  resume { ptr, i32 } %186
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2bg6VectorIdEC2Em(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  call void @_ZN2bg10DataStructIdEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  %8 = getelementptr inbounds %"class.bg::Vector", ptr %7, i32 0, i32 1
  %9 = load i64, ptr %4, align 8
  store i64 %9, ptr %8, align 8
  %10 = load i64, ptr %4, align 8
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %"class.bg::Vector", ptr %7, i32 0, i32 2
  store i32 %11, ptr %12, align 8
  %13 = getelementptr inbounds %"class.bg::Vector", ptr %7, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = sext i32 %14 to i64
  %16 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %15, i64 4)
  %17 = extractvalue { i64, i1 } %16, 1
  %18 = extractvalue { i64, i1 } %16, 0
  %19 = select i1 %17, i64 -1, i64 %18
  %20 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %19) #11
          to label %21 unwind label %23

21:                                               ; preds = %2
  %22 = getelementptr inbounds %"class.bg::Vector", ptr %7, i32 0, i32 3
  store ptr %20, ptr %22, align 8
  ret void

23:                                               ; preds = %2
  %24 = landingpad { ptr, i32 }
          cleanup
  %25 = extractvalue { ptr, i32 } %24, 0
  store ptr %25, ptr %5, align 8
  %26 = extractvalue { ptr, i32 } %24, 1
  store i32 %26, ptr %6, align 4
  call void @_ZN2bg10DataStructIdED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  br label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %5, align 8
  %29 = load i32, ptr %6, align 4
  %30 = insertvalue { ptr, i32 } poison, ptr %28, 0
  %31 = insertvalue { ptr, i32 } %30, i32 %29, 1
  resume { ptr, i32 } %31
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) #2 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.bg::Vector", ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %7, i64 %9
  ret ptr %10
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2bg8function3F_0IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #0 comdat {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i64 %0, ptr %11, align 8
  store i64 %1, ptr %12, align 8
  store ptr %2, ptr %13, align 8
  store ptr %3, ptr %14, align 8
  store ptr %4, ptr %15, align 8
  store ptr %5, ptr %16, align 8
  store i64 %6, ptr %17, align 8
  store i64 %7, ptr %18, align 8
  store i32 %8, ptr %19, align 4
  store i32 %9, ptr %20, align 4
  store i32 0, ptr %27, align 4
  br label %30

30:                                               ; preds = %40, %10
  %31 = load i32, ptr %27, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load ptr, ptr %13, align 8
  %35 = getelementptr inbounds %"class.bg::Vector", ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = load i64, ptr %17, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @MPI_Bcast(ptr noundef %36, i32 noundef %38, i32 noundef 1275069445, i32 noundef 0, i32 noundef 1140850688)
  br label %40

40:                                               ; preds = %33
  %41 = load i32, ptr %27, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %27, align 4
  br label %30, !llvm.loop !10

43:                                               ; preds = %30
  store i32 0, ptr %28, align 4
  br label %44

44:                                               ; preds = %83, %43
  %45 = load i32, ptr %28, align 4
  %46 = load i64, ptr %11, align 8
  %47 = call noundef double @_ZSt3powImdEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(i64 noundef %46, double noundef 5.000000e-01)
  %48 = fptosi double %47 to i32
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %86

50:                                               ; preds = %44
  store i32 0, ptr %29, align 4
  br label %51

51:                                               ; preds = %79, %50
  %52 = load i32, ptr %29, align 4
  %53 = load i64, ptr %11, align 8
  %54 = trunc i64 %53 to i32
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %51
  %57 = load i32, ptr %29, align 4
  store i32 %57, ptr %22, align 4
  %58 = load i32, ptr %22, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, ptr %17, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i64, ptr %17, align 8
  %64 = sub i64 %63, 1
  %65 = trunc i64 %64 to i32
  store i32 %65, ptr %22, align 4
  br label %66

66:                                               ; preds = %62, %56
  %67 = load ptr, ptr %14, align 8
  %68 = load i32, ptr %22, align 4
  %69 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %67, i32 noundef %68)
  %70 = load i32, ptr %69, align 4
  %71 = load ptr, ptr %14, align 8
  %72 = load i32, ptr %22, align 4
  %73 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %71, i32 noundef %72)
  %74 = load i32, ptr %73, align 4
  %75 = mul nsw i32 %70, %74
  %76 = load ptr, ptr %13, align 8
  %77 = load i32, ptr %22, align 4
  %78 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %76, i32 noundef %77)
  store i32 %75, ptr %78, align 4
  br label %79

79:                                               ; preds = %66
  %80 = load i32, ptr %29, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %29, align 4
  br label %51, !llvm.loop !11

82:                                               ; preds = %51
  br label %83

83:                                               ; preds = %82
  %84 = load i32, ptr %28, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr %28, align 4
  br label %44, !llvm.loop !12

86:                                               ; preds = %44
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2bg8function3F_1IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #0 comdat {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i64 %0, ptr %11, align 8
  store i64 %1, ptr %12, align 8
  store ptr %2, ptr %13, align 8
  store ptr %3, ptr %14, align 8
  store ptr %4, ptr %15, align 8
  store ptr %5, ptr %16, align 8
  store i64 %6, ptr %17, align 8
  store i64 %7, ptr %18, align 8
  store i32 %8, ptr %19, align 4
  store i32 %9, ptr %20, align 4
  store i32 0, ptr %27, align 4
  br label %30

30:                                               ; preds = %45, %10
  %31 = load i32, ptr %27, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load ptr, ptr %16, align 8
  %35 = getelementptr inbounds %"class.bg::Vector", ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = load i64, ptr %17, align 8
  %38 = trunc i64 %37 to i32
  %39 = load ptr, ptr %13, align 8
  %40 = getelementptr inbounds %"class.bg::Vector", ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8
  %42 = load i64, ptr %17, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @MPI_Scatter(ptr noundef %36, i32 noundef %38, i32 noundef 1275069445, ptr noundef %41, i32 noundef %43, i32 noundef 1275069445, i32 noundef 0, i32 noundef 1140850688)
  br label %45

45:                                               ; preds = %33
  %46 = load i32, ptr %27, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %27, align 4
  br label %30, !llvm.loop !13

48:                                               ; preds = %30
  store i32 0, ptr %28, align 4
  br label %49

49:                                               ; preds = %88, %48
  %50 = load i32, ptr %28, align 4
  %51 = load i64, ptr %11, align 8
  %52 = call noundef double @_ZSt3powImdEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(i64 noundef %51, double noundef 5.000000e-01)
  %53 = fptosi double %52 to i32
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %91

55:                                               ; preds = %49
  store i32 0, ptr %29, align 4
  br label %56

56:                                               ; preds = %84, %55
  %57 = load i32, ptr %29, align 4
  %58 = load i64, ptr %11, align 8
  %59 = trunc i64 %58 to i32
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %56
  %62 = load i32, ptr %29, align 4
  store i32 %62, ptr %22, align 4
  %63 = load i32, ptr %22, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, ptr %17, align 8
  %66 = icmp ugt i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i64, ptr %17, align 8
  %69 = sub i64 %68, 1
  %70 = trunc i64 %69 to i32
  store i32 %70, ptr %22, align 4
  br label %71

71:                                               ; preds = %67, %61
  %72 = load ptr, ptr %14, align 8
  %73 = load i32, ptr %22, align 4
  %74 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %72, i32 noundef %73)
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %14, align 8
  %77 = load i32, ptr %22, align 4
  %78 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %76, i32 noundef %77)
  %79 = load i32, ptr %78, align 4
  %80 = mul nsw i32 %75, %79
  %81 = load ptr, ptr %13, align 8
  %82 = load i32, ptr %22, align 4
  %83 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %81, i32 noundef %82)
  store i32 %80, ptr %83, align 4
  br label %84

84:                                               ; preds = %71
  %85 = load i32, ptr %29, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %29, align 4
  br label %56, !llvm.loop !14

87:                                               ; preds = %56
  br label %88

88:                                               ; preds = %87
  %89 = load i32, ptr %28, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %28, align 4
  br label %49, !llvm.loop !15

91:                                               ; preds = %49
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2bg8function3F_2IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #0 comdat {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i64 %0, ptr %11, align 8
  store i64 %1, ptr %12, align 8
  store ptr %2, ptr %13, align 8
  store ptr %3, ptr %14, align 8
  store ptr %4, ptr %15, align 8
  store ptr %5, ptr %16, align 8
  store i64 %6, ptr %17, align 8
  store i64 %7, ptr %18, align 8
  store i32 %8, ptr %19, align 4
  store i32 %9, ptr %20, align 4
  store i32 0, ptr %27, align 4
  br label %30

30:                                               ; preds = %45, %10
  %31 = load i32, ptr %27, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load ptr, ptr %15, align 8
  %35 = getelementptr inbounds %"class.bg::Vector", ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = load i64, ptr %17, align 8
  %38 = trunc i64 %37 to i32
  %39 = load ptr, ptr %16, align 8
  %40 = getelementptr inbounds %"class.bg::Vector", ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8
  %42 = load i64, ptr %17, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @MPI_Allgather(ptr noundef %36, i32 noundef %38, i32 noundef 1275069445, ptr noundef %41, i32 noundef %43, i32 noundef 1275069445, i32 noundef 1140850688)
  br label %45

45:                                               ; preds = %33
  %46 = load i32, ptr %27, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %27, align 4
  br label %30, !llvm.loop !16

48:                                               ; preds = %30
  store i32 0, ptr %28, align 4
  br label %49

49:                                               ; preds = %88, %48
  %50 = load i32, ptr %28, align 4
  %51 = load i64, ptr %11, align 8
  %52 = call noundef double @_ZSt3powImdEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(i64 noundef %51, double noundef 5.000000e-01)
  %53 = fptosi double %52 to i32
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %91

55:                                               ; preds = %49
  store i32 0, ptr %29, align 4
  br label %56

56:                                               ; preds = %84, %55
  %57 = load i32, ptr %29, align 4
  %58 = load i64, ptr %11, align 8
  %59 = trunc i64 %58 to i32
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %56
  %62 = load i32, ptr %29, align 4
  store i32 %62, ptr %22, align 4
  %63 = load i32, ptr %22, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, ptr %17, align 8
  %66 = icmp ugt i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i64, ptr %17, align 8
  %69 = sub i64 %68, 1
  %70 = trunc i64 %69 to i32
  store i32 %70, ptr %22, align 4
  br label %71

71:                                               ; preds = %67, %61
  %72 = load ptr, ptr %14, align 8
  %73 = load i32, ptr %22, align 4
  %74 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %72, i32 noundef %73)
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %14, align 8
  %77 = load i32, ptr %22, align 4
  %78 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %76, i32 noundef %77)
  %79 = load i32, ptr %78, align 4
  %80 = mul nsw i32 %75, %79
  %81 = load ptr, ptr %13, align 8
  %82 = load i32, ptr %22, align 4
  %83 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %81, i32 noundef %82)
  store i32 %80, ptr %83, align 4
  br label %84

84:                                               ; preds = %71
  %85 = load i32, ptr %29, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %29, align 4
  br label %56, !llvm.loop !17

87:                                               ; preds = %56
  br label %88

88:                                               ; preds = %87
  %89 = load i32, ptr %28, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %28, align 4
  br label %49, !llvm.loop !18

91:                                               ; preds = %49
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2bg8function3F_3IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #0 comdat {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i64 %0, ptr %11, align 8
  store i64 %1, ptr %12, align 8
  store ptr %2, ptr %13, align 8
  store ptr %3, ptr %14, align 8
  store ptr %4, ptr %15, align 8
  store ptr %5, ptr %16, align 8
  store i64 %6, ptr %17, align 8
  store i64 %7, ptr %18, align 8
  store i32 %8, ptr %19, align 4
  store i32 %9, ptr %20, align 4
  store i32 0, ptr %27, align 4
  br label %30

30:                                               ; preds = %43, %10
  %31 = load i32, ptr %27, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load ptr, ptr %13, align 8
  %35 = getelementptr inbounds %"class.bg::Vector", ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr %14, align 8
  %38 = getelementptr inbounds %"class.bg::Vector", ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8
  %40 = load i64, ptr %17, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @MPI_Reduce(ptr noundef %36, ptr noundef %39, i32 noundef %41, i32 noundef 1275069445, i32 noundef 1476395011, i32 noundef 0, i32 noundef 1140850688)
  br label %43

43:                                               ; preds = %33
  %44 = load i32, ptr %27, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %27, align 4
  br label %30, !llvm.loop !19

46:                                               ; preds = %30
  store i32 0, ptr %28, align 4
  br label %47

47:                                               ; preds = %86, %46
  %48 = load i32, ptr %28, align 4
  %49 = load i64, ptr %11, align 8
  %50 = call noundef double @_ZSt3powImdEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(i64 noundef %49, double noundef 5.000000e-01)
  %51 = fptosi double %50 to i32
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %89

53:                                               ; preds = %47
  store i32 0, ptr %29, align 4
  br label %54

54:                                               ; preds = %82, %53
  %55 = load i32, ptr %29, align 4
  %56 = load i64, ptr %11, align 8
  %57 = trunc i64 %56 to i32
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %85

59:                                               ; preds = %54
  %60 = load i32, ptr %29, align 4
  store i32 %60, ptr %22, align 4
  %61 = load i32, ptr %22, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, ptr %17, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i64, ptr %17, align 8
  %67 = sub i64 %66, 1
  %68 = trunc i64 %67 to i32
  store i32 %68, ptr %22, align 4
  br label %69

69:                                               ; preds = %65, %59
  %70 = load ptr, ptr %14, align 8
  %71 = load i32, ptr %22, align 4
  %72 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %70, i32 noundef %71)
  %73 = load i32, ptr %72, align 4
  %74 = load ptr, ptr %14, align 8
  %75 = load i32, ptr %22, align 4
  %76 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %74, i32 noundef %75)
  %77 = load i32, ptr %76, align 4
  %78 = mul nsw i32 %73, %77
  %79 = load ptr, ptr %13, align 8
  %80 = load i32, ptr %22, align 4
  %81 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %79, i32 noundef %80)
  store i32 %78, ptr %81, align 4
  br label %82

82:                                               ; preds = %69
  %83 = load i32, ptr %29, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr %29, align 4
  br label %54, !llvm.loop !20

85:                                               ; preds = %54
  br label %86

86:                                               ; preds = %85
  %87 = load i32, ptr %28, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr %28, align 4
  br label %47, !llvm.loop !21

89:                                               ; preds = %47
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2bg8function3F_4IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #0 comdat {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i64 %0, ptr %11, align 8
  store i64 %1, ptr %12, align 8
  store ptr %2, ptr %13, align 8
  store ptr %3, ptr %14, align 8
  store ptr %4, ptr %15, align 8
  store ptr %5, ptr %16, align 8
  store i64 %6, ptr %17, align 8
  store i64 %7, ptr %18, align 8
  store i32 %8, ptr %19, align 4
  store i32 %9, ptr %20, align 4
  store i32 0, ptr %27, align 4
  br label %30

30:                                               ; preds = %43, %10
  %31 = load i32, ptr %27, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load ptr, ptr %14, align 8
  %35 = getelementptr inbounds %"class.bg::Vector", ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr %15, align 8
  %38 = getelementptr inbounds %"class.bg::Vector", ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8
  %40 = load i64, ptr %17, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @MPI_Allreduce(ptr noundef %36, ptr noundef %39, i32 noundef %41, i32 noundef 1275069445, i32 noundef 1476395011, i32 noundef 1140850688)
  br label %43

43:                                               ; preds = %33
  %44 = load i32, ptr %27, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %27, align 4
  br label %30, !llvm.loop !22

46:                                               ; preds = %30
  store i32 0, ptr %28, align 4
  br label %47

47:                                               ; preds = %86, %46
  %48 = load i32, ptr %28, align 4
  %49 = load i64, ptr %11, align 8
  %50 = call noundef double @_ZSt3powImdEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(i64 noundef %49, double noundef 5.000000e-01)
  %51 = fptosi double %50 to i32
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %89

53:                                               ; preds = %47
  store i32 0, ptr %29, align 4
  br label %54

54:                                               ; preds = %82, %53
  %55 = load i32, ptr %29, align 4
  %56 = load i64, ptr %11, align 8
  %57 = trunc i64 %56 to i32
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %85

59:                                               ; preds = %54
  %60 = load i32, ptr %29, align 4
  store i32 %60, ptr %22, align 4
  %61 = load i32, ptr %22, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, ptr %17, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i64, ptr %17, align 8
  %67 = sub i64 %66, 1
  %68 = trunc i64 %67 to i32
  store i32 %68, ptr %22, align 4
  br label %69

69:                                               ; preds = %65, %59
  %70 = load ptr, ptr %14, align 8
  %71 = load i32, ptr %22, align 4
  %72 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %70, i32 noundef %71)
  %73 = load i32, ptr %72, align 4
  %74 = load ptr, ptr %14, align 8
  %75 = load i32, ptr %22, align 4
  %76 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %74, i32 noundef %75)
  %77 = load i32, ptr %76, align 4
  %78 = mul nsw i32 %73, %77
  %79 = load ptr, ptr %13, align 8
  %80 = load i32, ptr %22, align 4
  %81 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %79, i32 noundef %80)
  store i32 %78, ptr %81, align 4
  br label %82

82:                                               ; preds = %69
  %83 = load i32, ptr %29, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr %29, align 4
  br label %54, !llvm.loop !23

85:                                               ; preds = %54
  br label %86

86:                                               ; preds = %85
  %87 = load i32, ptr %28, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr %28, align 4
  br label %47, !llvm.loop !24

89:                                               ; preds = %47
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2bg8function3F_5IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #0 comdat {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i64 %0, ptr %11, align 8
  store i64 %1, ptr %12, align 8
  store ptr %2, ptr %13, align 8
  store ptr %3, ptr %14, align 8
  store ptr %4, ptr %15, align 8
  store ptr %5, ptr %16, align 8
  store i64 %6, ptr %17, align 8
  store i64 %7, ptr %18, align 8
  store i32 %8, ptr %19, align 4
  store i32 %9, ptr %20, align 4
  store i32 0, ptr %27, align 4
  br label %30

30:                                               ; preds = %40, %10
  %31 = load i32, ptr %27, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load ptr, ptr %13, align 8
  %35 = getelementptr inbounds %"class.bg::Vector", ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = load i64, ptr %17, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @MPI_Bcast(ptr noundef %36, i32 noundef %38, i32 noundef 1275069445, i32 noundef 0, i32 noundef 1140850688)
  br label %40

40:                                               ; preds = %33
  %41 = load i32, ptr %27, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %27, align 4
  br label %30, !llvm.loop !25

43:                                               ; preds = %30
  store i32 0, ptr %28, align 4
  br label %44

44:                                               ; preds = %83, %43
  %45 = load i32, ptr %28, align 4
  %46 = load i64, ptr %11, align 8
  %47 = call noundef double @_ZSt3powImdEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(i64 noundef %46, double noundef 5.000000e-01)
  %48 = fptosi double %47 to i32
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %86

50:                                               ; preds = %44
  store i32 0, ptr %29, align 4
  br label %51

51:                                               ; preds = %79, %50
  %52 = load i32, ptr %29, align 4
  %53 = load i64, ptr %11, align 8
  %54 = trunc i64 %53 to i32
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %51
  %57 = load i32, ptr %29, align 4
  store i32 %57, ptr %22, align 4
  %58 = load i32, ptr %22, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, ptr %17, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i64, ptr %17, align 8
  %64 = sub i64 %63, 1
  %65 = trunc i64 %64 to i32
  store i32 %65, ptr %22, align 4
  br label %66

66:                                               ; preds = %62, %56
  %67 = load ptr, ptr %14, align 8
  %68 = load i32, ptr %22, align 4
  %69 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %67, i32 noundef %68)
  %70 = load i32, ptr %69, align 4
  %71 = load ptr, ptr %14, align 8
  %72 = load i32, ptr %22, align 4
  %73 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %71, i32 noundef %72)
  %74 = load i32, ptr %73, align 4
  %75 = mul nsw i32 %70, %74
  %76 = load ptr, ptr %13, align 8
  %77 = load i32, ptr %22, align 4
  %78 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %76, i32 noundef %77)
  store i32 %75, ptr %78, align 4
  br label %79

79:                                               ; preds = %66
  %80 = load i32, ptr %29, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %29, align 4
  br label %51, !llvm.loop !26

82:                                               ; preds = %51
  br label %83

83:                                               ; preds = %82
  %84 = load i32, ptr %28, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr %28, align 4
  br label %44, !llvm.loop !27

86:                                               ; preds = %44
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2bg8function3F_6IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #0 comdat {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i64 %0, ptr %11, align 8
  store i64 %1, ptr %12, align 8
  store ptr %2, ptr %13, align 8
  store ptr %3, ptr %14, align 8
  store ptr %4, ptr %15, align 8
  store ptr %5, ptr %16, align 8
  store i64 %6, ptr %17, align 8
  store i64 %7, ptr %18, align 8
  store i32 %8, ptr %19, align 4
  store i32 %9, ptr %20, align 4
  store i32 0, ptr %27, align 4
  br label %30

30:                                               ; preds = %45, %10
  %31 = load i32, ptr %27, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load ptr, ptr %16, align 8
  %35 = getelementptr inbounds %"class.bg::Vector", ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = load i64, ptr %17, align 8
  %38 = trunc i64 %37 to i32
  %39 = load ptr, ptr %13, align 8
  %40 = getelementptr inbounds %"class.bg::Vector", ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8
  %42 = load i64, ptr %17, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @MPI_Scatter(ptr noundef %36, i32 noundef %38, i32 noundef 1275069445, ptr noundef %41, i32 noundef %43, i32 noundef 1275069445, i32 noundef 0, i32 noundef 1140850688)
  br label %45

45:                                               ; preds = %33
  %46 = load i32, ptr %27, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %27, align 4
  br label %30, !llvm.loop !28

48:                                               ; preds = %30
  store i32 0, ptr %28, align 4
  br label %49

49:                                               ; preds = %88, %48
  %50 = load i32, ptr %28, align 4
  %51 = load i64, ptr %11, align 8
  %52 = call noundef double @_ZSt3powImdEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(i64 noundef %51, double noundef 5.000000e-01)
  %53 = fptosi double %52 to i32
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %91

55:                                               ; preds = %49
  store i32 0, ptr %29, align 4
  br label %56

56:                                               ; preds = %84, %55
  %57 = load i32, ptr %29, align 4
  %58 = load i64, ptr %11, align 8
  %59 = trunc i64 %58 to i32
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %56
  %62 = load i32, ptr %29, align 4
  store i32 %62, ptr %22, align 4
  %63 = load i32, ptr %22, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, ptr %17, align 8
  %66 = icmp ugt i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i64, ptr %17, align 8
  %69 = sub i64 %68, 1
  %70 = trunc i64 %69 to i32
  store i32 %70, ptr %22, align 4
  br label %71

71:                                               ; preds = %67, %61
  %72 = load ptr, ptr %14, align 8
  %73 = load i32, ptr %22, align 4
  %74 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %72, i32 noundef %73)
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %14, align 8
  %77 = load i32, ptr %22, align 4
  %78 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %76, i32 noundef %77)
  %79 = load i32, ptr %78, align 4
  %80 = mul nsw i32 %75, %79
  %81 = load ptr, ptr %13, align 8
  %82 = load i32, ptr %22, align 4
  %83 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %81, i32 noundef %82)
  store i32 %80, ptr %83, align 4
  br label %84

84:                                               ; preds = %71
  %85 = load i32, ptr %29, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %29, align 4
  br label %56, !llvm.loop !29

87:                                               ; preds = %56
  br label %88

88:                                               ; preds = %87
  %89 = load i32, ptr %28, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %28, align 4
  br label %49, !llvm.loop !30

91:                                               ; preds = %49
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2bg8function3F_7IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #0 comdat {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i64 %0, ptr %11, align 8
  store i64 %1, ptr %12, align 8
  store ptr %2, ptr %13, align 8
  store ptr %3, ptr %14, align 8
  store ptr %4, ptr %15, align 8
  store ptr %5, ptr %16, align 8
  store i64 %6, ptr %17, align 8
  store i64 %7, ptr %18, align 8
  store i32 %8, ptr %19, align 4
  store i32 %9, ptr %20, align 4
  store i32 0, ptr %27, align 4
  br label %30

30:                                               ; preds = %45, %10
  %31 = load i32, ptr %27, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load ptr, ptr %14, align 8
  %35 = getelementptr inbounds %"class.bg::Vector", ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = load i64, ptr %17, align 8
  %38 = trunc i64 %37 to i32
  %39 = load ptr, ptr %16, align 8
  %40 = getelementptr inbounds %"class.bg::Vector", ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8
  %42 = load i64, ptr %17, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @MPI_Gather(ptr noundef %36, i32 noundef %38, i32 noundef 1275069445, ptr noundef %41, i32 noundef %43, i32 noundef 1275069445, i32 noundef 0, i32 noundef 1140850688)
  br label %45

45:                                               ; preds = %33
  %46 = load i32, ptr %27, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %27, align 4
  br label %30, !llvm.loop !31

48:                                               ; preds = %30
  store i32 0, ptr %28, align 4
  br label %49

49:                                               ; preds = %88, %48
  %50 = load i32, ptr %28, align 4
  %51 = load i64, ptr %11, align 8
  %52 = call noundef double @_ZSt3powImdEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(i64 noundef %51, double noundef 5.000000e-01)
  %53 = fptosi double %52 to i32
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %91

55:                                               ; preds = %49
  store i32 0, ptr %29, align 4
  br label %56

56:                                               ; preds = %84, %55
  %57 = load i32, ptr %29, align 4
  %58 = load i64, ptr %11, align 8
  %59 = trunc i64 %58 to i32
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %56
  %62 = load i32, ptr %29, align 4
  store i32 %62, ptr %22, align 4
  %63 = load i32, ptr %22, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, ptr %17, align 8
  %66 = icmp ugt i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i64, ptr %17, align 8
  %69 = sub i64 %68, 1
  %70 = trunc i64 %69 to i32
  store i32 %70, ptr %22, align 4
  br label %71

71:                                               ; preds = %67, %61
  %72 = load ptr, ptr %14, align 8
  %73 = load i32, ptr %22, align 4
  %74 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %72, i32 noundef %73)
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %14, align 8
  %77 = load i32, ptr %22, align 4
  %78 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %76, i32 noundef %77)
  %79 = load i32, ptr %78, align 4
  %80 = mul nsw i32 %75, %79
  %81 = load ptr, ptr %13, align 8
  %82 = load i32, ptr %22, align 4
  %83 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %81, i32 noundef %82)
  store i32 %80, ptr %83, align 4
  br label %84

84:                                               ; preds = %71
  %85 = load i32, ptr %29, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %29, align 4
  br label %56, !llvm.loop !32

87:                                               ; preds = %56
  br label %88

88:                                               ; preds = %87
  %89 = load i32, ptr %28, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %28, align 4
  br label %49, !llvm.loop !33

91:                                               ; preds = %49
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2bg8function3F_8IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #0 comdat {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i64 %0, ptr %11, align 8
  store i64 %1, ptr %12, align 8
  store ptr %2, ptr %13, align 8
  store ptr %3, ptr %14, align 8
  store ptr %4, ptr %15, align 8
  store ptr %5, ptr %16, align 8
  store i64 %6, ptr %17, align 8
  store i64 %7, ptr %18, align 8
  store i32 %8, ptr %19, align 4
  store i32 %9, ptr %20, align 4
  store i32 0, ptr %27, align 4
  br label %31

31:                                               ; preds = %63, %10
  %32 = load i32, ptr %27, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %66

34:                                               ; preds = %31
  %35 = load i32, ptr %19, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  store i32 1, ptr %28, align 4
  br label %38

38:                                               ; preds = %50, %37
  %39 = load i32, ptr %28, align 4
  %40 = load i32, ptr %20, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load ptr, ptr %13, align 8
  %44 = getelementptr inbounds %"class.bg::Vector", ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  %46 = load i64, ptr %17, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32, ptr %28, align 4
  %49 = call i32 @MPI_Send(ptr noundef %45, i32 noundef %47, i32 noundef 1275069445, i32 noundef %48, i32 noundef 0, i32 noundef 1140850688)
  br label %50

50:                                               ; preds = %42
  %51 = load i32, ptr %28, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %28, align 4
  br label %38, !llvm.loop !34

53:                                               ; preds = %38
  br label %61

54:                                               ; preds = %34
  %55 = load ptr, ptr %14, align 8
  %56 = getelementptr inbounds %"class.bg::Vector", ptr %55, i32 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = load i64, ptr %17, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @MPI_Recv(ptr noundef %57, i32 noundef %59, i32 noundef 1275069445, i32 noundef 0, i32 noundef 0, i32 noundef 1140850688, ptr noundef inttoptr (i64 1 to ptr))
  br label %61

61:                                               ; preds = %54, %53
  %62 = call i32 @MPI_Barrier(i32 noundef 1140850688)
  br label %63

63:                                               ; preds = %61
  %64 = load i32, ptr %27, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %27, align 4
  br label %31, !llvm.loop !35

66:                                               ; preds = %31
  store i32 0, ptr %29, align 4
  br label %67

67:                                               ; preds = %106, %66
  %68 = load i32, ptr %29, align 4
  %69 = load i64, ptr %11, align 8
  %70 = call noundef double @_ZSt3powImdEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(i64 noundef %69, double noundef 5.000000e-01)
  %71 = fptosi double %70 to i32
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %109

73:                                               ; preds = %67
  store i32 0, ptr %30, align 4
  br label %74

74:                                               ; preds = %102, %73
  %75 = load i32, ptr %30, align 4
  %76 = load i64, ptr %11, align 8
  %77 = trunc i64 %76 to i32
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %74
  %80 = load i32, ptr %30, align 4
  store i32 %80, ptr %22, align 4
  %81 = load i32, ptr %22, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, ptr %17, align 8
  %84 = icmp ugt i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i64, ptr %17, align 8
  %87 = sub i64 %86, 1
  %88 = trunc i64 %87 to i32
  store i32 %88, ptr %22, align 4
  br label %89

89:                                               ; preds = %85, %79
  %90 = load ptr, ptr %14, align 8
  %91 = load i32, ptr %22, align 4
  %92 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %90, i32 noundef %91)
  %93 = load i32, ptr %92, align 4
  %94 = load ptr, ptr %14, align 8
  %95 = load i32, ptr %22, align 4
  %96 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %94, i32 noundef %95)
  %97 = load i32, ptr %96, align 4
  %98 = mul nsw i32 %93, %97
  %99 = load ptr, ptr %13, align 8
  %100 = load i32, ptr %22, align 4
  %101 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %99, i32 noundef %100)
  store i32 %98, ptr %101, align 4
  br label %102

102:                                              ; preds = %89
  %103 = load i32, ptr %30, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, ptr %30, align 4
  br label %74, !llvm.loop !36

105:                                              ; preds = %74
  br label %106

106:                                              ; preds = %105
  %107 = load i32, ptr %29, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %29, align 4
  br label %67, !llvm.loop !37

109:                                              ; preds = %67
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2bg8function3F_9IdEEvmmRNS_6VectorIT_EES5_S5_S5_mmii(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #0 comdat {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i64 %0, ptr %11, align 8
  store i64 %1, ptr %12, align 8
  store ptr %2, ptr %13, align 8
  store ptr %3, ptr %14, align 8
  store ptr %4, ptr %15, align 8
  store ptr %5, ptr %16, align 8
  store i64 %6, ptr %17, align 8
  store i64 %7, ptr %18, align 8
  store i32 %8, ptr %19, align 4
  store i32 %9, ptr %20, align 4
  store i32 0, ptr %27, align 4
  br label %31

31:                                               ; preds = %63, %10
  %32 = load i32, ptr %27, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %66

34:                                               ; preds = %31
  %35 = load i32, ptr %19, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  store i32 1, ptr %28, align 4
  br label %38

38:                                               ; preds = %50, %37
  %39 = load i32, ptr %28, align 4
  %40 = load i32, ptr %20, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load ptr, ptr %13, align 8
  %44 = getelementptr inbounds %"class.bg::Vector", ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  %46 = load i64, ptr %17, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32, ptr %28, align 4
  %49 = call i32 @MPI_Send(ptr noundef %45, i32 noundef %47, i32 noundef 1275069445, i32 noundef %48, i32 noundef 0, i32 noundef 1140850688)
  br label %50

50:                                               ; preds = %42
  %51 = load i32, ptr %28, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %28, align 4
  br label %38, !llvm.loop !38

53:                                               ; preds = %38
  br label %61

54:                                               ; preds = %34
  %55 = load ptr, ptr %14, align 8
  %56 = getelementptr inbounds %"class.bg::Vector", ptr %55, i32 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = load i64, ptr %17, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @MPI_Recv(ptr noundef %57, i32 noundef %59, i32 noundef 1275069445, i32 noundef 0, i32 noundef 0, i32 noundef 1140850688, ptr noundef inttoptr (i64 1 to ptr))
  br label %61

61:                                               ; preds = %54, %53
  %62 = call i32 @MPI_Barrier(i32 noundef 1140850688)
  br label %63

63:                                               ; preds = %61
  %64 = load i32, ptr %27, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %27, align 4
  br label %31, !llvm.loop !39

66:                                               ; preds = %31
  store i32 0, ptr %29, align 4
  br label %67

67:                                               ; preds = %106, %66
  %68 = load i32, ptr %29, align 4
  %69 = load i64, ptr %11, align 8
  %70 = call noundef double @_ZSt3powImdEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(i64 noundef %69, double noundef 5.000000e-01)
  %71 = fptosi double %70 to i32
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %109

73:                                               ; preds = %67
  store i32 0, ptr %30, align 4
  br label %74

74:                                               ; preds = %102, %73
  %75 = load i32, ptr %30, align 4
  %76 = load i64, ptr %11, align 8
  %77 = trunc i64 %76 to i32
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %74
  %80 = load i32, ptr %30, align 4
  store i32 %80, ptr %22, align 4
  %81 = load i32, ptr %22, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, ptr %17, align 8
  %84 = icmp ugt i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i64, ptr %17, align 8
  %87 = sub i64 %86, 1
  %88 = trunc i64 %87 to i32
  store i32 %88, ptr %22, align 4
  br label %89

89:                                               ; preds = %85, %79
  %90 = load ptr, ptr %14, align 8
  %91 = load i32, ptr %22, align 4
  %92 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %90, i32 noundef %91)
  %93 = load i32, ptr %92, align 4
  %94 = load ptr, ptr %14, align 8
  %95 = load i32, ptr %22, align 4
  %96 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %94, i32 noundef %95)
  %97 = load i32, ptr %96, align 4
  %98 = mul nsw i32 %93, %97
  %99 = load ptr, ptr %13, align 8
  %100 = load i32, ptr %22, align 4
  %101 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2bg6VectorIdEclEi(ptr noundef nonnull align 8 dereferenceable(56) %99, i32 noundef %100)
  store i32 %98, ptr %101, align 4
  br label %102

102:                                              ; preds = %89
  %103 = load i32, ptr %30, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, ptr %30, align 4
  br label %74, !llvm.loop !40

105:                                              ; preds = %74
  br label %106

106:                                              ; preds = %105
  %107 = load i32, ptr %29, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %29, align 4
  br label %67, !llvm.loop !41

109:                                              ; preds = %67
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2bg6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.bg::Vector", ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  call void @_ZdaPv(ptr noundef %5) #12
  br label %8

8:                                                ; preds = %7, %1
  call void @_ZN2bg10DataStructIdED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  ret void
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) #3 personality ptr @__gxx_personality_v0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca double, align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %16 = call i32 @MPI_Init(ptr noundef %4, ptr noundef %5)
  %17 = call i32 @MPI_Comm_rank(i32 noundef 1140850688, ptr noundef %6)
  %18 = call i32 @MPI_Comm_size(i32 noundef 1140850688, ptr noundef %7)
  store i64 1, ptr %8, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #10
  store double 1.000000e+00, ptr %10, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #10
  store i64 1, ptr %12, align 8
  store i32 1, ptr %13, align 4
  br label %19

19:                                               ; preds = %85, %2
  %20 = load i32, ptr %13, align 4
  %21 = load i32, ptr %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %88

23:                                               ; preds = %19
  %24 = load ptr, ptr %5, align 8
  %25 = load i32, ptr %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8
  %29 = call i32 @strcmp(ptr noundef @.str, ptr noundef %28) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %23
  %32 = load ptr, ptr %5, align 8
  %33 = load i32, ptr %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %32, i64 %34
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %36)
          to label %38 unwind label %50

38:                                               ; preds = %31
  %39 = load i32, ptr %13, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %13, align 4
  %41 = load i32, ptr %4, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load ptr, ptr %5, align 8
  %45 = load i32, ptr %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %44, i64 %46
  %48 = load ptr, ptr %47, align 8
  %49 = call i64 @__isoc23_strtoull(ptr noundef %48, ptr noundef null, i32 noundef 0) #10
  store i64 %49, ptr %8, align 8
  br label %54

50:                                               ; preds = %179, %174, %171, %168, %166, %162, %159, %157, %154, %151, %148, %146, %143, %139, %136, %134, %131, %128, %125, %123, %120, %118, %116, %113, %111, %109, %107, %105, %103, %101, %63, %31
  %51 = landingpad { ptr, i32 }
          cleanup
  %52 = extractvalue { ptr, i32 } %51, 0
  store ptr %52, ptr %14, align 8
  %53 = extractvalue { ptr, i32 } %51, 1
  store i32 %53, ptr %15, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #10
  br label %183

54:                                               ; preds = %43, %38
  br label %55

55:                                               ; preds = %54, %23
  %56 = load ptr, ptr %5, align 8
  %57 = load i32, ptr %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %56, i64 %58
  %60 = load ptr, ptr %59, align 8
  %61 = call i32 @strcmp(ptr noundef @.str.1, ptr noundef %60) #13
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %55
  %64 = load ptr, ptr %5, align 8
  %65 = load i32, ptr %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %64, i64 %66
  %68 = load ptr, ptr %67, align 8
  %69 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %68)
          to label %70 unwind label %50

70:                                               ; preds = %63
  %71 = load i32, ptr %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %13, align 4
  %73 = load i32, ptr %4, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load ptr, ptr %5, align 8
  %77 = load i32, ptr %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %76, i64 %78
  %80 = load ptr, ptr %79, align 8
  %81 = call i64 @__isoc23_strtoull(ptr noundef %80, ptr noundef null, i32 noundef 0) #10
  %82 = uitofp i64 %81 to double
  store double %82, ptr %10, align 8
  br label %83

83:                                               ; preds = %75, %70
  br label %84

84:                                               ; preds = %83, %55
  br label %85

85:                                               ; preds = %84
  %86 = load i32, ptr %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %13, align 4
  br label %19, !llvm.loop !42

88:                                               ; preds = %19
  %89 = load double, ptr %10, align 8
  %90 = fmul double 1.000000e-01, %89
  store double %90, ptr %10, align 8
  %91 = load i64, ptr %8, align 8
  %92 = uitofp i64 %91 to double
  %93 = load double, ptr %10, align 8
  %94 = fmul double %92, %93
  %95 = fptoui double %94 to i64
  store i64 %95, ptr %8, align 8
  %96 = load i32, ptr %7, align 4
  %97 = mul nsw i32 %96, 1000
  %98 = sext i32 %97 to i64
  store i64 %98, ptr %12, align 8
  %99 = load i32, ptr %6, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %174

101:                                              ; preds = %88
  %102 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2)
          to label %103 unwind label %50

103:                                              ; preds = %101
  %104 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %105 unwind label %50

105:                                              ; preds = %103
  %106 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %104, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %107 unwind label %50

107:                                              ; preds = %105
  %108 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3)
          to label %109 unwind label %50

109:                                              ; preds = %107
  %110 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %111 unwind label %50

111:                                              ; preds = %109
  %112 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.4)
          to label %113 unwind label %50

113:                                              ; preds = %111
  %114 = load i32, ptr %7, align 4
  %115 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %112, i32 noundef %114)
          to label %116 unwind label %50

116:                                              ; preds = %113
  %117 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %115, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %118 unwind label %50

118:                                              ; preds = %116
  %119 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %120 unwind label %50

120:                                              ; preds = %118
  %121 = invoke noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef @.str)
          to label %122 unwind label %50

122:                                              ; preds = %120
  br i1 %121, label %123, label %131

123:                                              ; preds = %122
  %124 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5)
          to label %125 unwind label %50

125:                                              ; preds = %123
  %126 = load i64, ptr %8, align 8
  %127 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %124, i64 noundef %126)
          to label %128 unwind label %50

128:                                              ; preds = %125
  %129 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %127, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %130 unwind label %50

130:                                              ; preds = %128
  br label %143

131:                                              ; preds = %122
  %132 = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef @.str)
          to label %133 unwind label %50

133:                                              ; preds = %131
  br i1 %132, label %134, label %142

134:                                              ; preds = %133
  %135 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.6)
          to label %136 unwind label %50

136:                                              ; preds = %134
  %137 = load i64, ptr %8, align 8
  %138 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %135, i64 noundef %137)
          to label %139 unwind label %50

139:                                              ; preds = %136
  %140 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %138, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %141 unwind label %50

141:                                              ; preds = %139
  br label %142

142:                                              ; preds = %141, %133
  br label %143

143:                                              ; preds = %142, %130
  %144 = invoke noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef @.str.1)
          to label %145 unwind label %50

145:                                              ; preds = %143
  br i1 %144, label %146, label %154

146:                                              ; preds = %145
  %147 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.7)
          to label %148 unwind label %50

148:                                              ; preds = %146
  %149 = load double, ptr %10, align 8
  %150 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %147, double noundef %149)
          to label %151 unwind label %50

151:                                              ; preds = %148
  %152 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %150, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %153 unwind label %50

153:                                              ; preds = %151
  br label %166

154:                                              ; preds = %145
  %155 = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef @.str.1)
          to label %156 unwind label %50

156:                                              ; preds = %154
  br i1 %155, label %157, label %165

157:                                              ; preds = %156
  %158 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.8)
          to label %159 unwind label %50

159:                                              ; preds = %157
  %160 = load double, ptr %10, align 8
  %161 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %158, double noundef %160)
          to label %162 unwind label %50

162:                                              ; preds = %159
  %163 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %161, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %164 unwind label %50

164:                                              ; preds = %162
  br label %165

165:                                              ; preds = %164, %156
  br label %166

166:                                              ; preds = %165, %153
  %167 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.9)
          to label %168 unwind label %50

168:                                              ; preds = %166
  %169 = load i64, ptr %12, align 8
  %170 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %167, i64 noundef %169)
          to label %171 unwind label %50

171:                                              ; preds = %168
  %172 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %170, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %173 unwind label %50

173:                                              ; preds = %171
  br label %174

174:                                              ; preds = %173, %88
  %175 = load i64, ptr %8, align 8
  %176 = load i64, ptr %12, align 8
  %177 = load i32, ptr %6, align 4
  %178 = load i32, ptr %7, align 4
  invoke void @_Z7MODEL_1mmii(i64 noundef %175, i64 noundef %176, i32 noundef %177, i32 noundef %178)
          to label %179 unwind label %50

179:                                              ; preds = %174
  %180 = invoke i32 @MPI_Finalize()
          to label %181 unwind label %50

181:                                              ; preds = %179
  store i32 0, ptr %3, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #10
  %182 = load i32, ptr %3, align 4
  ret i32 %182

183:                                              ; preds = %50
  %184 = load ptr, ptr %14, align 8
  %185 = load i32, ptr %15, align 4
  %186 = insertvalue { ptr, i32 } poison, ptr %184, 0
  %187 = insertvalue { ptr, i32 } %186, i32 %185, 1
  resume { ptr, i32 } %187
}

declare i32 @MPI_Init(ptr noundef, ptr noundef) #4

declare i32 @MPI_Comm_rank(i32 noundef, ptr noundef) #4

declare i32 @MPI_Comm_size(i32 noundef, ptr noundef) #4

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) #4

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #4

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6)
  %8 = xor i1 %7, true
  ret i1 %8
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) #4

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %7 = load ptr, ptr %4, align 8
  %8 = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %7)
  %9 = icmp eq i64 %6, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8
  %12 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(ptr noundef nonnull align 8 dereferenceable(32) %11) #10
  %13 = load ptr, ptr %4, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %14) #10
  %16 = call noundef i32 @_ZNSt11char_traitsIcE7compareEPKcS2_m(ptr noundef %12, ptr noundef %13, i64 noundef %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %10, %2
  %20 = phi i1 [ false, %2 ], [ %18, %10 ]
  ret i1 %20
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) #4

declare i32 @MPI_Finalize() #4

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2bg10DataStructIdEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.bg::DataStruct", ptr %3, i32 0, i32 0
  call void @_ZNSt10shared_ptrIA_dEC2EDn(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr null) #10
  %5 = getelementptr inbounds %"class.bg::DataStruct", ptr %3, i32 0, i32 1
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %"class.bg::DataStruct", ptr %3, i32 0, i32 2
  store i64 0, ptr %6, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) #7

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2bg10DataStructIdED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.bg::DataStruct", ptr %3, i32 0, i32 0
  call void @_ZNSt10shared_ptrIA_dED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10shared_ptrIA_dEC2EDn(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) unnamed_addr #2 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  call void @_ZNSt10shared_ptrIA_dEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10shared_ptrIA_dEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt12__shared_ptrIA_dLN9__gnu_cxx12_Lock_policyE2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIA_dLN9__gnu_cxx12_Lock_policyE2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_ptr", ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds %"class.std::__shared_ptr", ptr %3, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_count", ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10shared_ptrIA_dED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt12__shared_ptrIA_dLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIA_dLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_ptr", ptr %3, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_count", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::__shared_count", ptr %3, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #10
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i64, align 8
  store ptr %0, ptr %12, align 8
  %21 = load ptr, ptr %12, align 8
  store i8 1, ptr %13, align 1
  store i8 1, ptr %14, align 1
  store i8 1, ptr %15, align 1
  store i32 32, ptr %16, align 4
  store i32 32, ptr %17, align 4
  store i64 4294967297, ptr %18, align 8
  %22 = getelementptr inbounds %"class.std::_Sp_counted_base", ptr %21, i32 0, i32 1
  store ptr %22, ptr %19, align 8
  %23 = load ptr, ptr %19, align 8
  %24 = load atomic i64, ptr %23 acquire, align 8
  store i64 %24, ptr %20, align 8
  %25 = load i64, ptr %20, align 8
  %26 = icmp eq i64 %25, 4294967297
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = getelementptr inbounds %"class.std::_Sp_counted_base", ptr %21, i32 0, i32 1
  store i32 0, ptr %28, align 8
  %29 = getelementptr inbounds %"class.std::_Sp_counted_base", ptr %21, i32 0, i32 2
  store i32 0, ptr %29, align 4
  %30 = load ptr, ptr %21, align 8
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  call void %32(ptr noundef nonnull align 8 dereferenceable(16) %21) #10
  %33 = load ptr, ptr %21, align 8
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  call void %35(ptr noundef nonnull align 8 dereferenceable(16) %21) #10
  br label %63

36:                                               ; preds = %1
  %37 = getelementptr inbounds %"class.std::_Sp_counted_base", ptr %21, i32 0, i32 1
  store ptr %37, ptr %10, align 8
  store i32 -1, ptr %11, align 4
  %38 = load i8, ptr @__libc_single_threaded, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load ptr, ptr %10, align 8
  %42 = load i32, ptr %11, align 4
  store ptr %41, ptr %6, align 8
  store i32 %42, ptr %7, align 4
  %43 = load ptr, ptr %6, align 8
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %8, align 4
  %45 = load i32, ptr %7, align 4
  %46 = load ptr, ptr %6, align 8
  %47 = load i32, ptr %46, align 4
  %48 = add nsw i32 %47, %45
  store i32 %48, ptr %46, align 4
  %49 = load i32, ptr %8, align 4
  store i32 %49, ptr %9, align 4
  br label %58

50:                                               ; preds = %36
  %51 = load ptr, ptr %10, align 8
  %52 = load i32, ptr %11, align 4
  store ptr %51, ptr %2, align 8
  store i32 %52, ptr %3, align 4
  %53 = load ptr, ptr %2, align 8
  %54 = load i32, ptr %3, align 4
  store i32 %54, ptr %4, align 4
  %55 = load i32, ptr %4, align 4
  %56 = atomicrmw volatile add ptr %53, i32 %55 acq_rel, align 4
  store i32 %56, ptr %5, align 4
  %57 = load i32, ptr %5, align 4
  store i32 %57, ptr %9, align 4
  br label %58

58:                                               ; preds = %40, %50
  %59 = load i32, ptr %9, align 4
  br label %60

60:                                               ; preds = %58
  %61 = icmp eq i32 %59, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %60
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %21) #10
  br label %63

63:                                               ; preds = %27, %62, %60
  ret void

64:                                               ; No predecessors!
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #14
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #8 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #10
  call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  store ptr %0, ptr %12, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  call void %16(ptr noundef nonnull align 8 dereferenceable(16) %13) #10
  %17 = getelementptr inbounds %"class.std::_Sp_counted_base", ptr %13, i32 0, i32 2
  store ptr %17, ptr %10, align 8
  store i32 -1, ptr %11, align 4
  %18 = load i8, ptr @__libc_single_threaded, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load ptr, ptr %10, align 8
  %22 = load i32, ptr %11, align 4
  store ptr %21, ptr %6, align 8
  store i32 %22, ptr %7, align 4
  %23 = load ptr, ptr %6, align 8
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %8, align 4
  %25 = load i32, ptr %7, align 4
  %26 = load ptr, ptr %6, align 8
  %27 = load i32, ptr %26, align 4
  %28 = add nsw i32 %27, %25
  store i32 %28, ptr %26, align 4
  %29 = load i32, ptr %8, align 4
  store i32 %29, ptr %9, align 4
  br label %38

30:                                               ; preds = %1
  %31 = load ptr, ptr %10, align 8
  %32 = load i32, ptr %11, align 4
  store ptr %31, ptr %2, align 8
  store i32 %32, ptr %3, align 4
  %33 = load ptr, ptr %2, align 8
  %34 = load i32, ptr %3, align 4
  store i32 %34, ptr %4, align 4
  %35 = load i32, ptr %4, align 4
  %36 = atomicrmw volatile add ptr %33, i32 %35 acq_rel, align 4
  store i32 %36, ptr %5, align 4
  %37 = load i32, ptr %5, align 4
  store i32 %37, ptr %9, align 4
  br label %38

38:                                               ; preds = %20, %30
  %39 = load i32, ptr %9, align 4
  br label %40

40:                                               ; preds = %38
  %41 = icmp eq i32 %39, 1
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = load ptr, ptr %13, align 8
  %44 = getelementptr inbounds ptr, ptr %43, i64 3
  %45 = load ptr, ptr %44, align 8
  call void %45(ptr noundef nonnull align 8 dereferenceable(16) %13) #10
  br label %46

46:                                               ; preds = %42, %40
  ret void

47:                                               ; No predecessors!
  %48 = landingpad { ptr, i32 }
          catch ptr null
  %49 = extractvalue { ptr, i32 } %48, 0
  call void @__clang_call_terminate(ptr %49) #14
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) #9

declare i32 @MPI_Bcast(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef double @_ZSt3powImdEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(i64 noundef %0, double noundef %1) #2 comdat {
  %3 = alloca i64, align 8
  %4 = alloca double, align 8
  store i64 %0, ptr %3, align 8
  store double %1, ptr %4, align 8
  %5 = load i64, ptr %3, align 8
  %6 = uitofp i64 %5 to double
  %7 = load double, ptr %4, align 8
  %8 = call double @pow(double noundef %6, double noundef %7) #10
  ret double %8
}

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #1

declare i32 @MPI_Scatter(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

declare i32 @MPI_Allgather(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #4

declare i32 @MPI_Reduce(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

declare i32 @MPI_Allreduce(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

declare i32 @MPI_Gather(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

declare i32 @MPI_Send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

declare i32 @MPI_Recv(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #4

declare i32 @MPI_Barrier(i32 noundef) #4

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @strlen(ptr noundef %3) #10
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE7compareEPKcS2_m(ptr noundef %0, ptr noundef %1, i64 noundef %2) #2 comdat align 2 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, ptr %4, align 4
  br label %16

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = load i64, ptr %7, align 8
  %15 = call i32 @memcmp(ptr noundef %12, ptr noundef %13, i64 noundef %14) #10
  store i32 %15, ptr %4, align 4
  br label %16

16:                                               ; preds = %11, %10
  %17 = load i32, ptr %4, align 4
  ret i32 %17
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(ptr noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
