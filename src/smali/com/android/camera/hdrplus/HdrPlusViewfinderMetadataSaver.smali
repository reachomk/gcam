.class public final Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;
.super Ljava/lang/Object;
.source "HdrPlusViewfinderMetadataSaver.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final captureResultFilter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T1M2S3KELP6AKJ5EDQMOT26D5M78PBI7C______:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;

.field private hasGoodMetadata:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile lastViewfinderResult:Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "HdrPVFMetaDataSaver"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;->hasGoodMetadata:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 23
    iput-object p1, p0, Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;->captureResultFilter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T1M2S3KELP6AKJ5EDQMOT26D5M78PBI7C______:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;

    .line 24
    return-void
.end method


# virtual methods
.method public final getLastGoodMetadata()Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;->lastViewfinderResult:Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    return-object v0
.end method

.method public final synthetic update(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 14
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 1037
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1038
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;->TAG:Ljava/lang/String;

    const-string v1, "skipping frame since cc gains were missing"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    :goto_0
    return-void

    .line 1042
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1043
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;->TAG:Ljava/lang/String;

    const-string v1, "skipping frame since cc transforms were missing"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1047
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1048
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;->TAG:Ljava/lang/String;

    const-string v1, "skipping frame since aeRegions were missing"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1055
    :cond_2
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;->captureResultFilter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T1M2S3KELP6AKJ5EDQMOT26D5M78PBI7C______:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;

    invoke-virtual {v0, p1}, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;->shouldAccept(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1056
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;->TAG:Ljava/lang/String;

    const-string v1, "skipping frame due to touch to expose / focus"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1060
    :cond_3
    iput-object p1, p0, Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;->lastViewfinderResult:Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 1061
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;->hasGoodMetadata:Lcom/google/android/apps/camera/async/ConcurrentState;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    goto :goto_0
.end method
