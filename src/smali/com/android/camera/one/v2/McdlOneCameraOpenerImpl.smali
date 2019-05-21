.class public final Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;
.super Ljava/lang/Object;
.source "McdlOneCameraOpenerImpl.java"

# interfaces
.implements Lcom/android/camera/one/OneCameraOpener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final appLifetime:Lcom/android/camera/util/lifetime/AppLifetime;

.field private final cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

.field private final featureConfig:Lcom/android/camera/one/v2/OneCameraFeatureConfig;

.field private final oneCameraManager:Lcom/android/camera/one/OneCameraManager;

.field private final oneCameraSelector:Lcom/android/camera/one/v2/OneCameraSelector;

.field private final trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "McdlOneCameraOpnr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/util/lifetime/AppLifetime;Lcom/android/camera/one/v2/OneCameraSelector;Lcom/android/camera/one/v2/OneCameraFeatureConfig;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/device/CameraDeviceManager;Lcom/android/camera/debug/trace/Trace;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;->appLifetime:Lcom/android/camera/util/lifetime/AppLifetime;

    .line 52
    iput-object p2, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;->oneCameraSelector:Lcom/android/camera/one/v2/OneCameraSelector;

    .line 53
    iput-object p3, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;->featureConfig:Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    .line 54
    iput-object p4, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 55
    iput-object p5, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;->cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

    .line 56
    iput-object p6, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 57
    return-void
.end method


# virtual methods
.method public final open$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUP35EPKM6P9F8DGMQPBIC54M8EQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL6OB6CL1MORRJCLGM4R357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4OA4CLO6ARJ4CLN66QB5ED6MUP3LDHIJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNKURJ58DGMQPBIC51M2S3KELP6AKR5EHQ6IRJ77CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ17C______(Lcom/google/android/apps/camera/device/CameraId;Lcom/google/android/apps/camera/async/SafeCloseable;Lcom/google/android/gms/internal/zzahv;Lcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/OneCamera;
    .locals 8

    .prologue
    .line 65
    sget-object v0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Opening Camera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "OneCamera#open"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "CameraDevice#future"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;->appLifetime:Lcom/android/camera/util/lifetime/AppLifetime;

    invoke-interface {v0}, Lcom/android/camera/util/lifetime/AppLifetime;->getVisibleLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->createChildLifetime()Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v7

    .line 70
    invoke-virtual {v7, p2}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 71
    iget-object v0, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;->cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

    .line 72
    invoke-virtual {v0, v7, p1}, Lcom/android/camera/device/CameraDeviceManager;->open(Lcom/google/android/apps/camera/async/SafeCloseable;Lcom/google/android/apps/camera/device/CameraId;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 73
    iget-object v0, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 77
    invoke-static {}, Lcom/android/camera/stats/Instrumentation;->instance()Lcom/android/camera/stats/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/Instrumentation;->cameraDevice()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->getCurrentSession()Lcom/android/camera/stats/InstrumentationSession;

    move-result-object v6

    check-cast v6, Lcom/android/camera/stats/CameraDeviceInstrumentationSession;

    .line 79
    iget-object v0, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v2, "OneCharacteristics#get"

    invoke-interface {v0, v2}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 81
    invoke-interface {v0, p1}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    .line 82
    iget-object v0, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 84
    iget-object v0, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "OneCamera#select"

    invoke-interface {v0, v3}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;->oneCameraSelector:Lcom/android/camera/one/v2/OneCameraSelector;

    iget-object v4, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;->featureConfig:Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    move-object v3, p3

    move-object v5, p4

    .line 86
    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/one/v2/OneCameraSelector;->selectOneCamera$51666RRD5TJMURR7DHIIUORFDLMMURHFELQ6IR1FCDNMSORLE9P6ARJK5T66ISRKCLN62OJCCL37AT3LE9IJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNKURJ58DGMQPBIC51MGOBIC5HN8PBID5PN8QB3ECTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ18HIN0PBECHIMSOR9CLPKQRR4ELM6AEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5T7MSPA3C5MMASJ18PIM2T3LE9IK6RRECPKMEEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUJRECL1M2RB5E9GK6OBGEHQN4PAJCLQ78QBECSTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6T31EHPIUGR1DLIN4OA4CLR6IOR595N76T3IELMMARJKC5Q6IRREADIN6SR9DTN3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5T7MSPA3C5MMASJ18DP6AOBKDTP3M___(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/android/gms/internal/zzahv;Lcom/android/camera/one/v2/OneCameraFeatureConfig;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/stats/CameraDeviceInstrumentationSession;)Lcom/android/camera/one/v2/OneCameraCreator;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 95
    invoke-interface {v0}, Lcom/android/camera/one/v2/OneCameraCreator;->oneCamera()Lcom/android/camera/one/OneCamera;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera;

    .line 96
    iget-object v1, p0, Lcom/android/camera/one/v2/McdlOneCameraOpenerImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 97
    return-object v0
.end method
