; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [129 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [387 x i64] [
	i64 u0x0071cf2d27b7d61e, ; 0: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 77
	i64 u0x02123411c4e01926, ; 1: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 73
	i64 u0x02abedc11addc1ed, ; 2: lib_Mono.Android.Runtime.dll.so => 127
	i64 u0x032267b2a94db371, ; 3: lib_Xamarin.AndroidX.AppCompat.dll.so => 55
	i64 u0x043032f1d071fae0, ; 4: ru/Microsoft.Maui.Controls.resources => 24
	i64 u0x044440a55165631e, ; 5: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 2
	i64 u0x046eb1581a80c6b0, ; 6: vi/Microsoft.Maui.Controls.resources => 30
	i64 u0x0517ef04e06e9f76, ; 7: System.Net.Primitives => 105
	i64 u0x0565d18c6da3de38, ; 8: Xamarin.AndroidX.RecyclerView => 75
	i64 u0x0581db89237110e9, ; 9: lib_System.Collections.dll.so => 88
	i64 u0x05989cb940b225a9, ; 10: Microsoft.Maui.dll => 46
	i64 u0x06076b5d2b581f08, ; 11: zh-HK/Microsoft.Maui.Controls.resources => 31
	i64 u0x0680a433c781bb3d, ; 12: Xamarin.AndroidX.Collection.Jvm => 59
	i64 u0x07c57877c7ba78ad, ; 13: ru/Microsoft.Maui.Controls.resources.dll => 24
	i64 u0x07dcdc7460a0c5e4, ; 14: System.Collections.NonGeneric => 86
	i64 u0x08f3c9788ee2153c, ; 15: Xamarin.AndroidX.DrawerLayout => 64
	i64 u0x0919c28b89381a0b, ; 16: lib_Microsoft.Extensions.Options.dll.so => 42
	i64 u0x092266563089ae3e, ; 17: lib_System.Collections.NonGeneric.dll.so => 86
	i64 u0x09d144a7e214d457, ; 18: System.Security.Cryptography => 115
	i64 u0x0b3b632c3bbee20c, ; 19: sk/Microsoft.Maui.Controls.resources => 25
	i64 u0x0b6aff547b84fbe9, ; 20: Xamarin.KotlinX.Serialization.Core.Jvm => 83
	i64 u0x0be2e1f8ce4064ed, ; 21: Xamarin.AndroidX.ViewPager => 78
	i64 u0x0c3ca6cc978e2aae, ; 22: pt-BR/Microsoft.Maui.Controls.resources => 21
	i64 u0x0c59ad9fbbd43abe, ; 23: Mono.Android => 128
	i64 u0x0c7790f60165fc06, ; 24: lib_Microsoft.Maui.Essentials.dll.so => 47
	i64 u0x102a31b45304b1da, ; 25: Xamarin.AndroidX.CustomView => 63
	i64 u0x10ca46a12d1cfb88, ; 26: Syncfusion.Maui.Core => 51
	i64 u0x10f6cfcbcf801616, ; 27: System.IO.Compression.Brotli => 98
	i64 u0x125b7f94acb989db, ; 28: Xamarin.AndroidX.RecyclerView.dll => 75
	i64 u0x138567fa954faa55, ; 29: Xamarin.AndroidX.Browser => 57
	i64 u0x13a01de0cbc3f06c, ; 30: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 8
	i64 u0x13f1e5e209e91af4, ; 31: lib_Java.Interop.dll.so => 126
	i64 u0x13f1e880c25d96d1, ; 32: he/Microsoft.Maui.Controls.resources => 9
	i64 u0x143d8ea60a6a4011, ; 33: Microsoft.Extensions.DependencyInjection.Abstractions => 39
	i64 u0x1695ecefb732cade, ; 34: lib_Syncfusion.Maui.Core.dll.so => 51
	i64 u0x17125c9a85b4929f, ; 35: lib_netstandard.dll.so => 124
	i64 u0x17b56e25558a5d36, ; 36: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 12
	i64 u0x17f9358913beb16a, ; 37: System.Text.Encodings.Web => 116
	i64 u0x18402a709e357f3b, ; 38: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 83
	i64 u0x18f0ce884e87d89a, ; 39: nb/Microsoft.Maui.Controls.resources.dll => 18
	i64 u0x1a91866a319e9259, ; 40: lib_System.Collections.Concurrent.dll.so => 85
	i64 u0x1aac34d1917ba5d3, ; 41: lib_System.dll.so => 123
	i64 u0x1aad60783ffa3e5b, ; 42: lib-th-Microsoft.Maui.Controls.resources.dll.so => 27
	i64 u0x1c753b5ff15bce1b, ; 43: Mono.Android.Runtime.dll => 127
	i64 u0x1e3d87657e9659bc, ; 44: Xamarin.AndroidX.Navigation.UI => 74
	i64 u0x1e71143913d56c10, ; 45: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 16
	i64 u0x1ed8fcce5e9b50a0, ; 46: Microsoft.Extensions.Options.dll => 42
	i64 u0x209375905fcc1bad, ; 47: lib_System.IO.Compression.Brotli.dll.so => 98
	i64 u0x20fab3cf2dfbc8df, ; 48: lib_System.Diagnostics.Process.dll.so => 94
	i64 u0x2174319c0d835bc9, ; 49: System.Runtime => 114
	i64 u0x220fd4f2e7c48170, ; 50: th/Microsoft.Maui.Controls.resources => 27
	i64 u0x237be844f1f812c7, ; 51: System.Threading.Thread.dll => 119
	i64 u0x2407aef2bbe8fadf, ; 52: System.Console => 92
	i64 u0x240abe014b27e7d3, ; 53: Xamarin.AndroidX.Core.dll => 61
	i64 u0x252073cc3caa62c2, ; 54: fr/Microsoft.Maui.Controls.resources.dll => 8
	i64 u0x25894dc1c2405e12, ; 55: Syncfusion.Maui.Scheduler.dll => 53
	i64 u0x2662c629b96b0b30, ; 56: lib_Xamarin.Kotlin.StdLib.dll.so => 81
	i64 u0x268c1439f13bcc29, ; 57: lib_Microsoft.Extensions.Primitives.dll.so => 43
	i64 u0x273f3515de5faf0d, ; 58: id/Microsoft.Maui.Controls.resources.dll => 13
	i64 u0x2742545f9094896d, ; 59: hr/Microsoft.Maui.Controls.resources => 11
	i64 u0x27b410442fad6cf1, ; 60: Java.Interop.dll => 126
	i64 u0x2801845a2c71fbfb, ; 61: System.Net.Primitives.dll => 105
	i64 u0x2a128783efe70ba0, ; 62: uk/Microsoft.Maui.Controls.resources.dll => 29
	i64 u0x2ad156c8e1354139, ; 63: fi/Microsoft.Maui.Controls.resources => 7
	i64 u0x2af298f63581d886, ; 64: System.Text.RegularExpressions.dll => 118
	i64 u0x2afc1c4f898552ee, ; 65: lib_System.Formats.Asn1.dll.so => 97
	i64 u0x2b148910ed40fbf9, ; 66: zh-Hant/Microsoft.Maui.Controls.resources.dll => 33
	i64 u0x2c8bd14bb93a7d82, ; 67: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 20
	i64 u0x2cdbe1c1d4183ec1, ; 68: lib_Syncfusion.Licensing.dll.so => 49
	i64 u0x2d169d318a968379, ; 69: System.Threading.dll => 120
	i64 u0x2d47774b7d993f59, ; 70: sv/Microsoft.Maui.Controls.resources.dll => 26
	i64 u0x2db915caf23548d2, ; 71: System.Text.Json.dll => 117
	i64 u0x2e6f1f226821322a, ; 72: el/Microsoft.Maui.Controls.resources.dll => 5
	i64 u0x2f02f94df3200fe5, ; 73: System.Diagnostics.Process => 94
	i64 u0x2f2e98e1c89b1aff, ; 74: System.Xml.ReaderWriter => 122
	i64 u0x309ee9eeec09a71e, ; 75: lib_Xamarin.AndroidX.Fragment.dll.so => 65
	i64 u0x31195fef5d8fb552, ; 76: _Microsoft.Android.Resource.Designer.dll => 35
	i64 u0x32243413e774362a, ; 77: Xamarin.AndroidX.CardView.dll => 58
	i64 u0x3235427f8d12dae1, ; 78: lib_System.Drawing.Primitives.dll.so => 95
	i64 u0x329753a17a517811, ; 79: fr/Microsoft.Maui.Controls.resources => 8
	i64 u0x32aa989ff07a84ff, ; 80: lib_System.Xml.ReaderWriter.dll.so => 122
	i64 u0x33a31443733849fe, ; 81: lib-es-Microsoft.Maui.Controls.resources.dll.so => 6
	i64 u0x34dfd74fe2afcf37, ; 82: Microsoft.Maui => 46
	i64 u0x34e292762d9615df, ; 83: cs/Microsoft.Maui.Controls.resources.dll => 2
	i64 u0x3508234247f48404, ; 84: Microsoft.Maui.Controls => 44
	i64 u0x3549870798b4cd30, ; 85: lib_Xamarin.AndroidX.ViewPager2.dll.so => 79
	i64 u0x355282fc1c909694, ; 86: Microsoft.Extensions.Configuration => 36
	i64 u0x37f4a2999d6a789b, ; 87: en-US/Syncfusion.Maui.Scheduler.resources.dll => 34
	i64 u0x385c17636bb6fe6e, ; 88: Xamarin.AndroidX.CustomView.dll => 63
	i64 u0x393c226616977fdb, ; 89: lib_Xamarin.AndroidX.ViewPager.dll.so => 78
	i64 u0x395e37c3334cf82a, ; 90: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 1
	i64 u0x3c7c495f58ac5ee9, ; 91: Xamarin.Kotlin.StdLib => 81
	i64 u0x3cd9d281d402eb9b, ; 92: Xamarin.AndroidX.Browser.dll => 57
	i64 u0x3d9c2a242b040a50, ; 93: lib_Xamarin.AndroidX.Core.dll.so => 61
	i64 u0x407a10bb4bf95829, ; 94: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 71
	i64 u0x41a71b129e2cfcab, ; 95: lib-en-US-Syncfusion.Maui.Scheduler.resources.dll.so => 34
	i64 u0x41cab042be111c34, ; 96: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 56
	i64 u0x43375950ec7c1b6a, ; 97: netstandard.dll => 124
	i64 u0x434c4e1d9284cdae, ; 98: Mono.Android.dll => 128
	i64 u0x43950f84de7cc79a, ; 99: pl/Microsoft.Maui.Controls.resources.dll => 20
	i64 u0x4515080865a951a5, ; 100: Xamarin.Kotlin.StdLib.dll => 81
	i64 u0x46a4213bc97fe5ae, ; 101: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 24
	i64 u0x47daf4e1afbada10, ; 102: pt/Microsoft.Maui.Controls.resources => 22
	i64 u0x49e952f19a4e2022, ; 103: System.ObjectModel => 108
	i64 u0x4a5667b2462a664b, ; 104: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 74
	i64 u0x4a78a24dc5b649fc, ; 105: Syncfusion.Maui.Core.dll => 51
	i64 u0x4b7b6532ded934b7, ; 106: System.Text.Json => 117
	i64 u0x4cc5f15266470798, ; 107: lib_Xamarin.AndroidX.Loader.dll.so => 70
	i64 u0x4d479f968a05e504, ; 108: System.Linq.Expressions.dll => 101
	i64 u0x4d55a010ffc4faff, ; 109: System.Private.Xml => 110
	i64 u0x4d95fccc1f67c7ca, ; 110: System.Runtime.Loader.dll => 112
	i64 u0x4dcf44c3c9b076a2, ; 111: it/Microsoft.Maui.Controls.resources.dll => 14
	i64 u0x4dd9247f1d2c3235, ; 112: Xamarin.AndroidX.Loader.dll => 70
	i64 u0x4e32f00cb0937401, ; 113: Mono.Android.Runtime => 127
	i64 u0x4f21ee6ef9eb527e, ; 114: ca/Microsoft.Maui.Controls.resources => 1
	i64 u0x5037f0be3c28c7a3, ; 115: lib_Microsoft.Maui.Controls.dll.so => 44
	i64 u0x5131bbe80989093f, ; 116: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 68
	i64 u0x51bb8a2afe774e32, ; 117: System.Drawing => 96
	i64 u0x526ce79eb8e90527, ; 118: lib_System.Net.Primitives.dll.so => 105
	i64 u0x529ffe06f39ab8db, ; 119: Xamarin.AndroidX.Core => 61
	i64 u0x52ff996554dbf352, ; 120: Microsoft.Maui.Graphics => 48
	i64 u0x535f7e40e8fef8af, ; 121: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 25
	i64 u0x53c3014b9437e684, ; 122: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 31
	i64 u0x54795225dd1587af, ; 123: lib_System.Runtime.dll.so => 114
	i64 u0x556e8b63b660ab8b, ; 124: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 66
	i64 u0x5588627c9a108ec9, ; 125: System.Collections.Specialized => 87
	i64 u0x571c5cfbec5ae8e2, ; 126: System.Private.Uri => 109
	i64 u0x572a36ca0b88b5ee, ; 127: CalendarApp => 84
	i64 u0x579a06fed6eec900, ; 128: System.Private.CoreLib.dll => 125
	i64 u0x57c542c14049b66d, ; 129: System.Diagnostics.DiagnosticSource => 93
	i64 u0x58601b2dda4a27b9, ; 130: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 15
	i64 u0x58688d9af496b168, ; 131: Microsoft.Extensions.DependencyInjection.dll => 38
	i64 u0x5a89a886ae30258d, ; 132: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 60
	i64 u0x5a8f6699f4a1caa9, ; 133: lib_System.Threading.dll.so => 120
	i64 u0x5ae9cd33b15841bf, ; 134: System.ComponentModel => 91
	i64 u0x5b5f0e240a06a2a2, ; 135: da/Microsoft.Maui.Controls.resources.dll => 3
	i64 u0x5c393624b8176517, ; 136: lib_Microsoft.Extensions.Logging.dll.so => 40
	i64 u0x5db0cbbd1028510e, ; 137: lib_System.Runtime.InteropServices.dll.so => 111
	i64 u0x5db30905d3e5013b, ; 138: Xamarin.AndroidX.Collection.Jvm.dll => 59
	i64 u0x5e467bc8f09ad026, ; 139: System.Collections.Specialized.dll => 87
	i64 u0x5ea92fdb19ec8c4c, ; 140: System.Text.Encodings.Web.dll => 116
	i64 u0x5eb8046dd40e9ac3, ; 141: System.ComponentModel.Primitives => 89
	i64 u0x5f36ccf5c6a57e24, ; 142: System.Xml.ReaderWriter.dll => 122
	i64 u0x5f9a2d823f664957, ; 143: lib-el-Microsoft.Maui.Controls.resources.dll.so => 5
	i64 u0x609f4b7b63d802d4, ; 144: lib_Microsoft.Extensions.DependencyInjection.dll.so => 38
	i64 u0x60cd4e33d7e60134, ; 145: Xamarin.KotlinX.Coroutines.Core.Jvm => 82
	i64 u0x60f62d786afcf130, ; 146: System.Memory => 103
	i64 u0x61be8d1299194243, ; 147: Microsoft.Maui.Controls.Xaml => 45
	i64 u0x61d2cba29557038f, ; 148: de/Microsoft.Maui.Controls.resources => 4
	i64 u0x61d88f399afb2f45, ; 149: lib_System.Runtime.Loader.dll.so => 112
	i64 u0x622eef6f9e59068d, ; 150: System.Private.CoreLib => 125
	i64 u0x6322a2f32bd541bf, ; 151: CalendarApp.dll => 84
	i64 u0x6400f68068c1e9f1, ; 152: Xamarin.Google.Android.Material.dll => 80
	i64 u0x65ecac39144dd3cc, ; 153: Microsoft.Maui.Controls.dll => 44
	i64 u0x65ece51227bfa724, ; 154: lib_System.Runtime.Numerics.dll.so => 113
	i64 u0x6692e924eade1b29, ; 155: lib_System.Console.dll.so => 92
	i64 u0x66a4e5c6a3fb0bae, ; 156: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 68
	i64 u0x66d13304ce1a3efa, ; 157: Xamarin.AndroidX.CursorAdapter => 62
	i64 u0x68558ec653afa616, ; 158: lib-da-Microsoft.Maui.Controls.resources.dll.so => 3
	i64 u0x6872ec7a2e36b1ac, ; 159: System.Drawing.Primitives.dll => 95
	i64 u0x68fbbbe2eb455198, ; 160: System.Formats.Asn1 => 97
	i64 u0x69063fc0ba8e6bdd, ; 161: he/Microsoft.Maui.Controls.resources.dll => 9
	i64 u0x6a4d7577b2317255, ; 162: System.Runtime.InteropServices.dll => 111
	i64 u0x6ace3b74b15ee4a4, ; 163: nb/Microsoft.Maui.Controls.resources => 18
	i64 u0x6d12bfaa99c72b1f, ; 164: lib_Microsoft.Maui.Graphics.dll.so => 48
	i64 u0x6d79993361e10ef2, ; 165: Microsoft.Extensions.Primitives => 43
	i64 u0x6d86d56b84c8eb71, ; 166: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 62
	i64 u0x6d9bea6b3e895cf7, ; 167: Microsoft.Extensions.Primitives.dll => 43
	i64 u0x6e25a02c3833319a, ; 168: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 72
	i64 u0x6fd2265da78b93a4, ; 169: lib_Microsoft.Maui.dll.so => 46
	i64 u0x6fdfc7de82c33008, ; 170: cs/Microsoft.Maui.Controls.resources => 2
	i64 u0x70e99f48c05cb921, ; 171: tr/Microsoft.Maui.Controls.resources.dll => 28
	i64 u0x70fd3deda22442d2, ; 172: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 18
	i64 u0x71a495ea3761dde8, ; 173: lib-it-Microsoft.Maui.Controls.resources.dll.so => 14
	i64 u0x71ad672adbe48f35, ; 174: System.ComponentModel.Primitives.dll => 89
	i64 u0x72b1fb4109e08d7b, ; 175: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 11
	i64 u0x73a48a137a8bd3f2, ; 176: Syncfusion.Maui.Calendar => 50
	i64 u0x73e4ce94e2eb6ffc, ; 177: lib_System.Memory.dll.so => 103
	i64 u0x755a91767330b3d4, ; 178: lib_Microsoft.Extensions.Configuration.dll.so => 36
	i64 u0x76012e7334db86e5, ; 179: lib_Xamarin.AndroidX.SavedState.dll.so => 76
	i64 u0x76ca07b878f44da0, ; 180: System.Runtime.Numerics.dll => 113
	i64 u0x780bc73597a503a9, ; 181: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 17
	i64 u0x783606d1e53e7a1a, ; 182: th/Microsoft.Maui.Controls.resources.dll => 27
	i64 u0x78a45e51311409b6, ; 183: Xamarin.AndroidX.Fragment.dll => 65
	i64 u0x793d14f3e62bba4d, ; 184: Syncfusion.Maui.Scheduler => 53
	i64 u0x7a1b7ea08a6d0fd0, ; 185: lib_Syncfusion.Maui.Calendar.dll.so => 50
	i64 u0x7adb8da2ac89b647, ; 186: fi/Microsoft.Maui.Controls.resources.dll => 7
	i64 u0x7bef86a4335c4870, ; 187: System.ComponentModel.TypeConverter => 90
	i64 u0x7c0820144cd34d6a, ; 188: sk/Microsoft.Maui.Controls.resources.dll => 25
	i64 u0x7c2a0bd1e0f988fc, ; 189: lib-de-Microsoft.Maui.Controls.resources.dll.so => 4
	i64 u0x7d649b75d580bb42, ; 190: ms/Microsoft.Maui.Controls.resources.dll => 17
	i64 u0x7d8ee2bdc8e3aad1, ; 191: System.Numerics.Vectors => 107
	i64 u0x7dfc3d6d9d8d7b70, ; 192: System.Collections => 88
	i64 u0x7e946809d6008ef2, ; 193: lib_System.ObjectModel.dll.so => 108
	i64 u0x7ecc13347c8fd849, ; 194: lib_System.ComponentModel.dll.so => 91
	i64 u0x7f00ddd9b9ca5a13, ; 195: Xamarin.AndroidX.ViewPager.dll => 78
	i64 u0x7f9351cd44b1273f, ; 196: Microsoft.Extensions.Configuration.Abstractions => 37
	i64 u0x7fbd557c99b3ce6f, ; 197: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 67
	i64 u0x812c069d5cdecc17, ; 198: System.dll => 123
	i64 u0x81ab745f6c0f5ce6, ; 199: zh-Hant/Microsoft.Maui.Controls.resources => 33
	i64 u0x8277f2be6b5ce05f, ; 200: Xamarin.AndroidX.AppCompat => 55
	i64 u0x828f06563b30bc50, ; 201: lib_Xamarin.AndroidX.CardView.dll.so => 58
	i64 u0x82df8f5532a10c59, ; 202: lib_System.Drawing.dll.so => 96
	i64 u0x82f6403342e12049, ; 203: uk/Microsoft.Maui.Controls.resources => 29
	i64 u0x83c14ba66c8e2b8c, ; 204: zh-Hans/Microsoft.Maui.Controls.resources => 32
	i64 u0x86a909228dc7657b, ; 205: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 33
	i64 u0x86b3e00c36b84509, ; 206: Microsoft.Extensions.Configuration.dll => 36
	i64 u0x87c69b87d9283884, ; 207: lib_System.Threading.Thread.dll.so => 119
	i64 u0x87f6569b25707834, ; 208: System.IO.Compression.Brotli.dll => 98
	i64 u0x8842b3a5d2d3fb36, ; 209: Microsoft.Maui.Essentials => 47
	i64 u0x88bda98e0cffb7a9, ; 210: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 82
	i64 u0x8930322c7bd8f768, ; 211: netstandard => 124
	i64 u0x897a606c9e39c75f, ; 212: lib_System.ComponentModel.Primitives.dll.so => 89
	i64 u0x8ac8d025b93e29e9, ; 213: Syncfusion.Licensing => 49
	i64 u0x8ad229ea26432ee2, ; 214: Xamarin.AndroidX.Loader => 70
	i64 u0x8b4ff5d0fdd5faa1, ; 215: lib_System.Diagnostics.DiagnosticSource.dll.so => 93
	i64 u0x8b8d01333a96d0b5, ; 216: System.Diagnostics.Process.dll => 94
	i64 u0x8b9ceca7acae3451, ; 217: lib-he-Microsoft.Maui.Controls.resources.dll.so => 9
	i64 u0x8d0f420977c2c1c7, ; 218: Xamarin.AndroidX.CursorAdapter.dll => 62
	i64 u0x8d7b8ab4b3310ead, ; 219: System.Threading => 120
	i64 u0x8da188285aadfe8e, ; 220: System.Collections.Concurrent => 85
	i64 u0x8db4b514e47e17d8, ; 221: lib_Syncfusion.Maui.Scheduler.dll.so => 53
	i64 u0x8ed807bfe9858dfc, ; 222: Xamarin.AndroidX.Navigation.Common => 71
	i64 u0x8ee08b8194a30f48, ; 223: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 10
	i64 u0x8ef7601039857a44, ; 224: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 23
	i64 u0x8f32c6f611f6ffab, ; 225: pt/Microsoft.Maui.Controls.resources.dll => 22
	i64 u0x8f8829d21c8985a4, ; 226: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 21
	i64 u0x903101b46fb73a04, ; 227: _Microsoft.Android.Resource.Designer => 35
	i64 u0x90393bd4865292f3, ; 228: lib_System.IO.Compression.dll.so => 99
	i64 u0x90634f86c5ebe2b5, ; 229: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 68
	i64 u0x907b636704ad79ef, ; 230: lib_Microsoft.Maui.Controls.Xaml.dll.so => 45
	i64 u0x91418dc638b29e68, ; 231: lib_Xamarin.AndroidX.CustomView.dll.so => 63
	i64 u0x9157bd523cd7ed36, ; 232: lib_System.Text.Json.dll.so => 117
	i64 u0x91a74f07b30d37e2, ; 233: System.Linq.dll => 102
	i64 u0x91fa41a87223399f, ; 234: ca/Microsoft.Maui.Controls.resources.dll => 1
	i64 u0x93cfa73ab28d6e35, ; 235: ms/Microsoft.Maui.Controls.resources => 17
	i64 u0x944077d8ca3c6580, ; 236: System.IO.Compression.dll => 99
	i64 u0x967fc325e09bfa8c, ; 237: es/Microsoft.Maui.Controls.resources => 6
	i64 u0x9732d8dbddea3d9a, ; 238: id/Microsoft.Maui.Controls.resources => 13
	i64 u0x978be80e5210d31b, ; 239: Microsoft.Maui.Graphics.dll => 48
	i64 u0x97b8c771ea3e4220, ; 240: System.ComponentModel.dll => 91
	i64 u0x97e144c9d3c6976e, ; 241: System.Collections.Concurrent.dll => 85
	i64 u0x991d510397f92d9d, ; 242: System.Linq.Expressions => 101
	i64 u0x99a00ca5270c6878, ; 243: Xamarin.AndroidX.Navigation.Runtime => 73
	i64 u0x99cdc6d1f2d3a72f, ; 244: ko/Microsoft.Maui.Controls.resources.dll => 16
	i64 u0x9d5dbcf5a48583fe, ; 245: lib_Xamarin.AndroidX.Activity.dll.so => 54
	i64 u0x9d74dee1a7725f34, ; 246: Microsoft.Extensions.Configuration.Abstractions.dll => 37
	i64 u0x9e4534b6adaf6e84, ; 247: nl/Microsoft.Maui.Controls.resources => 19
	i64 u0x9eaf1efdf6f7267e, ; 248: Xamarin.AndroidX.Navigation.Common.dll => 71
	i64 u0x9ef542cf1f78c506, ; 249: Xamarin.AndroidX.Lifecycle.LiveData.Core => 67
	i64 u0xa0d8259f4cc284ec, ; 250: lib_System.Security.Cryptography.dll.so => 115
	i64 u0xa1440773ee9d341e, ; 251: Xamarin.Google.Android.Material => 80
	i64 u0xa1b9d7c27f47219f, ; 252: Xamarin.AndroidX.Navigation.UI.dll => 74
	i64 u0xa2572680829d2c7c, ; 253: System.IO.Pipelines.dll => 100
	i64 u0xa46aa1eaa214539b, ; 254: ko/Microsoft.Maui.Controls.resources => 16
	i64 u0xa5e599d1e0524750, ; 255: System.Numerics.Vectors.dll => 107
	i64 u0xa5f1ba49b85dd355, ; 256: System.Security.Cryptography.dll => 115
	i64 u0xa67dbee13e1df9ca, ; 257: Xamarin.AndroidX.SavedState.dll => 76
	i64 u0xa68a420042bb9b1f, ; 258: Xamarin.AndroidX.DrawerLayout.dll => 64
	i64 u0xa78ce3745383236a, ; 259: Xamarin.AndroidX.Lifecycle.Common.Jvm => 66
	i64 u0xa7c31b56b4dc7b33, ; 260: hu/Microsoft.Maui.Controls.resources => 12
	i64 u0xaa2219c8e3449ff5, ; 261: Microsoft.Extensions.Logging.Abstractions => 41
	i64 u0xaa443ac34067eeef, ; 262: System.Private.Xml.dll => 110
	i64 u0xaa52de307ef5d1dd, ; 263: System.Net.Http => 104
	i64 u0xaaaf86367285a918, ; 264: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 39
	i64 u0xaaf84bb3f052a265, ; 265: el/Microsoft.Maui.Controls.resources => 5
	i64 u0xab9c1b2687d86b0b, ; 266: lib_System.Linq.Expressions.dll.so => 101
	i64 u0xac2af3fa195a15ce, ; 267: System.Runtime.Numerics => 113
	i64 u0xac5376a2a538dc10, ; 268: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 67
	i64 u0xacd46e002c3ccb97, ; 269: ro/Microsoft.Maui.Controls.resources => 23
	i64 u0xad89c07347f1bad6, ; 270: nl/Microsoft.Maui.Controls.resources.dll => 19
	i64 u0xadbb53caf78a79d2, ; 271: System.Web.HttpUtility => 121
	i64 u0xadc90ab061a9e6e4, ; 272: System.ComponentModel.TypeConverter.dll => 90
	i64 u0xae282bcd03739de7, ; 273: Java.Interop => 126
	i64 u0xae53579c90db1107, ; 274: System.ObjectModel.dll => 108
	i64 u0xafe29f45095518e7, ; 275: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 69
	i64 u0xb04ea60a308db4ff, ; 276: lib_Syncfusion.Maui.Popup.dll.so => 52
	i64 u0xb05cc42cd94c6d9d, ; 277: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 26
	i64 u0xb220631954820169, ; 278: System.Text.RegularExpressions => 118
	i64 u0xb2a3f67f3bf29fce, ; 279: da/Microsoft.Maui.Controls.resources => 3
	i64 u0xb306a467ede01e48, ; 280: Syncfusion.Maui.Popup.dll => 52
	i64 u0xb345c84ec35298e7, ; 281: Syncfusion.Maui.Popup => 52
	i64 u0xb3f0a0fcda8d3ebc, ; 282: Xamarin.AndroidX.CardView => 58
	i64 u0xb3f832258cb83db4, ; 283: Syncfusion.Licensing.dll => 49
	i64 u0xb46be1aa6d4fff93, ; 284: hi/Microsoft.Maui.Controls.resources => 10
	i64 u0xb477491be13109d8, ; 285: ar/Microsoft.Maui.Controls.resources => 0
	i64 u0xb4bd7015ecee9d86, ; 286: System.IO.Pipelines => 100
	i64 u0xb5c7fcdafbc67ee4, ; 287: Microsoft.Extensions.Logging.Abstractions.dll => 41
	i64 u0xb6d3e07f79ef4757, ; 288: en-US/Syncfusion.Maui.Scheduler.resources => 34
	i64 u0xb7212c4683a94afe, ; 289: System.Drawing.Primitives => 95
	i64 u0xb7b7753d1f319409, ; 290: sv/Microsoft.Maui.Controls.resources => 26
	i64 u0xb81a2c6e0aee50fe, ; 291: lib_System.Private.CoreLib.dll.so => 125
	i64 u0xb9f64d3b230def68, ; 292: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 22
	i64 u0xb9fc3c8a556e3691, ; 293: ja/Microsoft.Maui.Controls.resources => 15
	i64 u0xba48785529705af9, ; 294: System.Collections.dll => 88
	i64 u0xbd0e2c0d55246576, ; 295: System.Net.Http.dll => 104
	i64 u0xbd437a2cdb333d0d, ; 296: Xamarin.AndroidX.ViewPager2 => 79
	i64 u0xbd5d0b88d3d647a5, ; 297: lib_Xamarin.AndroidX.Browser.dll.so => 57
	i64 u0xbee38d4a88835966, ; 298: Xamarin.AndroidX.AppCompat.AppCompatResources => 56
	i64 u0xc040a4ab55817f58, ; 299: ar/Microsoft.Maui.Controls.resources.dll => 0
	i64 u0xc0d928351ab5ca77, ; 300: System.Console.dll => 92
	i64 u0xc12b8b3afa48329c, ; 301: lib_System.Linq.dll.so => 102
	i64 u0xc164ad22a0aa9d7c, ; 302: Syncfusion.Maui.Calendar.dll => 50
	i64 u0xc1ff9ae3cdb6e1e6, ; 303: Xamarin.AndroidX.Activity.dll => 54
	i64 u0xc28c50f32f81cc73, ; 304: ja/Microsoft.Maui.Controls.resources.dll => 15
	i64 u0xc2bcfec99f69365e, ; 305: Xamarin.AndroidX.ViewPager2.dll => 79
	i64 u0xc4d3858ed4d08512, ; 306: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 69
	i64 u0xc50fded0ded1418c, ; 307: lib_System.ComponentModel.TypeConverter.dll.so => 90
	i64 u0xc519125d6bc8fb11, ; 308: lib_System.Net.Requests.dll.so => 106
	i64 u0xc5293b19e4dc230e, ; 309: Xamarin.AndroidX.Navigation.Fragment => 72
	i64 u0xc5325b2fcb37446f, ; 310: lib_System.Private.Xml.dll.so => 110
	i64 u0xc5a0f4b95a699af7, ; 311: lib_System.Private.Uri.dll.so => 109
	i64 u0xc7ce851898a4548e, ; 312: lib_System.Web.HttpUtility.dll.so => 121
	i64 u0xc858a28d9ee5a6c5, ; 313: lib_System.Collections.Specialized.dll.so => 87
	i64 u0xca3a723e7342c5b6, ; 314: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 28
	i64 u0xcab3493c70141c2d, ; 315: pl/Microsoft.Maui.Controls.resources => 20
	i64 u0xcacfddc9f7c6de76, ; 316: ro/Microsoft.Maui.Controls.resources.dll => 23
	i64 u0xcbd4fdd9cef4a294, ; 317: lib__Microsoft.Android.Resource.Designer.dll.so => 35
	i64 u0xcc2876b32ef2794c, ; 318: lib_System.Text.RegularExpressions.dll.so => 118
	i64 u0xcc5c3bb714c4561e, ; 319: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 82
	i64 u0xcc76886e09b88260, ; 320: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 83
	i64 u0xccf25c4b634ccd3a, ; 321: zh-Hans/Microsoft.Maui.Controls.resources.dll => 32
	i64 u0xcd10a42808629144, ; 322: System.Net.Requests => 106
	i64 u0xcdd0c48b6937b21c, ; 323: Xamarin.AndroidX.SwipeRefreshLayout => 77
	i64 u0xcf23d8093f3ceadf, ; 324: System.Diagnostics.DiagnosticSource.dll => 93
	i64 u0xd1194e1d8a8de83c, ; 325: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 66
	i64 u0xd333d0af9e423810, ; 326: System.Runtime.InteropServices => 111
	i64 u0xd3426d966bb704f5, ; 327: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 56
	i64 u0xd3651b6fc3125825, ; 328: System.Private.Uri.dll => 109
	i64 u0xd373685349b1fe8b, ; 329: Microsoft.Extensions.Logging.dll => 40
	i64 u0xd3e4c8d6a2d5d470, ; 330: it/Microsoft.Maui.Controls.resources => 14
	i64 u0xd4645626dffec99d, ; 331: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 39
	i64 u0xd5507e11a2b2839f, ; 332: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 69
	i64 u0xd6694f8359737e4e, ; 333: Xamarin.AndroidX.SavedState => 76
	i64 u0xd6d21782156bc35b, ; 334: Xamarin.AndroidX.SwipeRefreshLayout.dll => 77
	i64 u0xd72329819cbbbc44, ; 335: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 37
	i64 u0xd7b3764ada9d341d, ; 336: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 41
	i64 u0xda1dfa4c534a9251, ; 337: Microsoft.Extensions.DependencyInjection => 38
	i64 u0xdad05a11827959a3, ; 338: System.Collections.NonGeneric.dll => 86
	i64 u0xdb5383ab5865c007, ; 339: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 30
	i64 u0xdbeda89f832aa805, ; 340: vi/Microsoft.Maui.Controls.resources.dll => 30
	i64 u0xdbf9607a441b4505, ; 341: System.Linq => 102
	i64 u0xdce2c53525640bf3, ; 342: Microsoft.Extensions.Logging => 40
	i64 u0xdd2b722d78ef5f43, ; 343: System.Runtime.dll => 114
	i64 u0xdd67031857c72f96, ; 344: lib_System.Text.Encodings.Web.dll.so => 116
	i64 u0xdde30e6b77aa6f6c, ; 345: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 32
	i64 u0xde8769ebda7d8647, ; 346: hr/Microsoft.Maui.Controls.resources.dll => 11
	i64 u0xe0142572c095a480, ; 347: Xamarin.AndroidX.AppCompat.dll => 55
	i64 u0xe02f89350ec78051, ; 348: Xamarin.AndroidX.CoordinatorLayout.dll => 60
	i64 u0xe192a588d4410686, ; 349: lib_System.IO.Pipelines.dll.so => 100
	i64 u0xe1a08bd3fa539e0d, ; 350: System.Runtime.Loader => 112
	i64 u0xe2420585aeceb728, ; 351: System.Net.Requests.dll => 106
	i64 u0xe29b73bc11392966, ; 352: lib-id-Microsoft.Maui.Controls.resources.dll.so => 13
	i64 u0xe3811d68d4fe8463, ; 353: pt-BR/Microsoft.Maui.Controls.resources.dll => 21
	i64 u0xe494f7ced4ecd10a, ; 354: hu/Microsoft.Maui.Controls.resources.dll => 12
	i64 u0xe4a9b1e40d1e8917, ; 355: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 7
	i64 u0xe5434e8a119ceb69, ; 356: lib_Mono.Android.dll.so => 128
	i64 u0xe89a2a9ef110899b, ; 357: System.Drawing.dll => 96
	i64 u0xedc632067fb20ff3, ; 358: System.Memory.dll => 103
	i64 u0xedc8e4ca71a02a8b, ; 359: Xamarin.AndroidX.Navigation.Runtime.dll => 73
	i64 u0xeeb7ebb80150501b, ; 360: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 59
	i64 u0xef72742e1bcca27a, ; 361: Microsoft.Maui.Essentials.dll => 47
	i64 u0xefec0b7fdc57ec42, ; 362: Xamarin.AndroidX.Activity => 54
	i64 u0xf00c29406ea45e19, ; 363: es/Microsoft.Maui.Controls.resources.dll => 6
	i64 u0xf11b621fc87b983f, ; 364: Microsoft.Maui.Controls.Xaml.dll => 45
	i64 u0xf1c4b4005493d871, ; 365: System.Formats.Asn1.dll => 97
	i64 u0xf238bd79489d3a96, ; 366: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 19
	i64 u0xf37221fda4ef8830, ; 367: lib_Xamarin.Google.Android.Material.dll.so => 80
	i64 u0xf3ddfe05336abf29, ; 368: System => 123
	i64 u0xf4c1dd70a5496a17, ; 369: System.IO.Compression => 99
	i64 u0xf6077741019d7428, ; 370: Xamarin.AndroidX.CoordinatorLayout => 60
	i64 u0xf77b20923f07c667, ; 371: de/Microsoft.Maui.Controls.resources.dll => 4
	i64 u0xf7e2cac4c45067b3, ; 372: lib_System.Numerics.Vectors.dll.so => 107
	i64 u0xf7e74930e0e3d214, ; 373: zh-HK/Microsoft.Maui.Controls.resources.dll => 31
	i64 u0xf84773b5c81e3cef, ; 374: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 29
	i64 u0xf8e045dc345b2ea3, ; 375: lib_Xamarin.AndroidX.RecyclerView.dll.so => 75
	i64 u0xf915dc29808193a1, ; 376: System.Web.HttpUtility.dll => 121
	i64 u0xf96c777a2a0686f4, ; 377: hi/Microsoft.Maui.Controls.resources.dll => 10
	i64 u0xf9eec5bb3a6aedc6, ; 378: Microsoft.Extensions.Options => 42
	i64 u0xfa5ed7226d978949, ; 379: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 0
	i64 u0xfa645d91e9fc4cba, ; 380: System.Threading.Thread => 119
	i64 u0xfbf0a31c9fc34bc4, ; 381: lib_System.Net.Http.dll.so => 104
	i64 u0xfc719aec26adf9d9, ; 382: Xamarin.AndroidX.Navigation.Fragment.dll => 72
	i64 u0xfd22f00870e40ae0, ; 383: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 64
	i64 u0xfd583f7657b6a1cb, ; 384: Xamarin.AndroidX.Fragment => 65
	i64 u0xfeae9952cf03b8cb, ; 385: tr/Microsoft.Maui.Controls.resources => 28
	i64 u0xffa5966407a8c04d ; 386: lib_CalendarApp.dll.so => 84
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [387 x i32] [
	i32 77, i32 73, i32 127, i32 55, i32 24, i32 2, i32 30, i32 105,
	i32 75, i32 88, i32 46, i32 31, i32 59, i32 24, i32 86, i32 64,
	i32 42, i32 86, i32 115, i32 25, i32 83, i32 78, i32 21, i32 128,
	i32 47, i32 63, i32 51, i32 98, i32 75, i32 57, i32 8, i32 126,
	i32 9, i32 39, i32 51, i32 124, i32 12, i32 116, i32 83, i32 18,
	i32 85, i32 123, i32 27, i32 127, i32 74, i32 16, i32 42, i32 98,
	i32 94, i32 114, i32 27, i32 119, i32 92, i32 61, i32 8, i32 53,
	i32 81, i32 43, i32 13, i32 11, i32 126, i32 105, i32 29, i32 7,
	i32 118, i32 97, i32 33, i32 20, i32 49, i32 120, i32 26, i32 117,
	i32 5, i32 94, i32 122, i32 65, i32 35, i32 58, i32 95, i32 8,
	i32 122, i32 6, i32 46, i32 2, i32 44, i32 79, i32 36, i32 34,
	i32 63, i32 78, i32 1, i32 81, i32 57, i32 61, i32 71, i32 34,
	i32 56, i32 124, i32 128, i32 20, i32 81, i32 24, i32 22, i32 108,
	i32 74, i32 51, i32 117, i32 70, i32 101, i32 110, i32 112, i32 14,
	i32 70, i32 127, i32 1, i32 44, i32 68, i32 96, i32 105, i32 61,
	i32 48, i32 25, i32 31, i32 114, i32 66, i32 87, i32 109, i32 84,
	i32 125, i32 93, i32 15, i32 38, i32 60, i32 120, i32 91, i32 3,
	i32 40, i32 111, i32 59, i32 87, i32 116, i32 89, i32 122, i32 5,
	i32 38, i32 82, i32 103, i32 45, i32 4, i32 112, i32 125, i32 84,
	i32 80, i32 44, i32 113, i32 92, i32 68, i32 62, i32 3, i32 95,
	i32 97, i32 9, i32 111, i32 18, i32 48, i32 43, i32 62, i32 43,
	i32 72, i32 46, i32 2, i32 28, i32 18, i32 14, i32 89, i32 11,
	i32 50, i32 103, i32 36, i32 76, i32 113, i32 17, i32 27, i32 65,
	i32 53, i32 50, i32 7, i32 90, i32 25, i32 4, i32 17, i32 107,
	i32 88, i32 108, i32 91, i32 78, i32 37, i32 67, i32 123, i32 33,
	i32 55, i32 58, i32 96, i32 29, i32 32, i32 33, i32 36, i32 119,
	i32 98, i32 47, i32 82, i32 124, i32 89, i32 49, i32 70, i32 93,
	i32 94, i32 9, i32 62, i32 120, i32 85, i32 53, i32 71, i32 10,
	i32 23, i32 22, i32 21, i32 35, i32 99, i32 68, i32 45, i32 63,
	i32 117, i32 102, i32 1, i32 17, i32 99, i32 6, i32 13, i32 48,
	i32 91, i32 85, i32 101, i32 73, i32 16, i32 54, i32 37, i32 19,
	i32 71, i32 67, i32 115, i32 80, i32 74, i32 100, i32 16, i32 107,
	i32 115, i32 76, i32 64, i32 66, i32 12, i32 41, i32 110, i32 104,
	i32 39, i32 5, i32 101, i32 113, i32 67, i32 23, i32 19, i32 121,
	i32 90, i32 126, i32 108, i32 69, i32 52, i32 26, i32 118, i32 3,
	i32 52, i32 52, i32 58, i32 49, i32 10, i32 0, i32 100, i32 41,
	i32 34, i32 95, i32 26, i32 125, i32 22, i32 15, i32 88, i32 104,
	i32 79, i32 57, i32 56, i32 0, i32 92, i32 102, i32 50, i32 54,
	i32 15, i32 79, i32 69, i32 90, i32 106, i32 72, i32 110, i32 109,
	i32 121, i32 87, i32 28, i32 20, i32 23, i32 35, i32 118, i32 82,
	i32 83, i32 32, i32 106, i32 77, i32 93, i32 66, i32 111, i32 56,
	i32 109, i32 40, i32 14, i32 39, i32 69, i32 76, i32 77, i32 37,
	i32 41, i32 38, i32 86, i32 30, i32 30, i32 102, i32 40, i32 114,
	i32 116, i32 32, i32 11, i32 55, i32 60, i32 100, i32 112, i32 106,
	i32 13, i32 21, i32 12, i32 7, i32 128, i32 96, i32 103, i32 73,
	i32 59, i32 47, i32 54, i32 6, i32 45, i32 97, i32 19, i32 80,
	i32 123, i32 99, i32 60, i32 4, i32 107, i32 31, i32 29, i32 75,
	i32 121, i32 10, i32 42, i32 0, i32 119, i32 104, i32 72, i32 64,
	i32 65, i32 28, i32 84
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ 278e101698269c9bc8840aa94d72e7f24066a96d"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}