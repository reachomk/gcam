.class public final Lcom/android/camera/debug/trace/TraceModule;
.super Ljava/lang/Object;
.source "TraceModule.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TRACE_ADB$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T0M8OI6DHGMEEO_:Lcom/android/camera/util/flags/CameraFlag;

.field private static final TRACE_ENG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T2MSPQ6DHGMEEO_:Lcom/android/camera/util/flags/CameraFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    const-string v0, "Trace"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/debug/trace/TraceModule;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/android/camera/util/flags/CameraFlag;

    const-string v1, "camera.debug.trace"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/camera/util/flags/CameraFlag;-><init>(Ljava/lang/String;ZB)V

    sput-object v0, Lcom/android/camera/debug/trace/TraceModule;->TRACE_ADB$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T0M8OI6DHGMEEO_:Lcom/android/camera/util/flags/CameraFlag;

    .line 22
    new-instance v0, Lcom/android/camera/util/flags/CameraFlag;

    const-string v1, "camera.debug.trace"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/flags/CameraFlag;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lcom/android/camera/debug/trace/TraceModule;->TRACE_ENG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T2MSPQ6DHGMEEO_:Lcom/android/camera/util/flags/CameraFlag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static provideTrace(Lcom/android/camera/util/flags/Flags;)Lcom/android/camera/debug/trace/Trace;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 29
    sget-object v0, Lcom/android/camera/debug/trace/TraceModule;->TRACE_ADB$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T0M8OI6DHGMEEO_:Lcom/android/camera/util/flags/CameraFlag;

    invoke-virtual {p0, v0}, Lcom/android/camera/util/flags/Flags;->get$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQN8QBC5TJ6OOB7ECNK2P328PM62PPR55D0____(Lcom/android/camera/util/flags/CameraFlag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/android/camera/debug/trace/ForwardAllTrace;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/camera/debug/trace/Trace;

    new-instance v2, Lcom/android/camera/debug/trace/AndroidTrace;

    const-string v3, "GCA"

    invoke-direct {v2, v3, v4}, Lcom/android/camera/debug/trace/AndroidTrace;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v1, v4

    const/4 v2, 0x1

    new-instance v3, Lcom/android/camera/debug/trace/LoggingTrace;

    sget-object v4, Lcom/android/camera/debug/trace/TraceModule;->TAG:Ljava/lang/String;

    .line 31
    invoke-static {v4}, Lcom/android/camera/debug/DebugModule;->d(Ljava/lang/String;)Lcom/android/camera/debug/Writer;

    move-result-object v4

    new-instance v5, Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-direct {v5}, Lcom/google/android/apps/camera/util/time/NanosecondClock;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/android/camera/debug/trace/LoggingTrace;-><init>(Lcom/android/camera/debug/Writer;Lcom/google/android/apps/camera/util/time/NanosecondClock;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/android/camera/debug/trace/ForwardAllTrace;-><init>([Lcom/android/camera/debug/trace/Trace;)V

    .line 33
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/one/v2/photo/common/PictureTakerModule;

    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/common/PictureTakerModule;-><init>()V

    goto :goto_0
.end method
