.class final Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;
.super Ljava/lang/Object;
.source "TuningDataLogger.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataConsumer;


# instance fields
.field private final log:Lcom/android/camera/debug/Logger;


# direct methods
.method constructor <init>(Lcom/android/camera/debug/Logger$Factory;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "TuningDataLogger"

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;->log:Lcom/android/camera/debug/Logger;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;)Lcom/android/camera/debug/Logger;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;->log:Lcom/android/camera/debug/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-static {p1}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;->metadataToLogString(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final metadataToLogString(Ljava/util/Collection;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    .line 66
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->allAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger$2;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger$2;-><init>(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;)V

    .line 65
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private static metadataToLogString(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    const-string v0, "Metadata"

    invoke-static {v0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/String;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "timestamp"

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 82
    invoke-interface {p0, v2}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "NR"

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 83
    invoke-interface {p0, v2}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "EDGE"

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->EDGE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 84
    invoke-interface {p0, v2}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "REEF"

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->REPROCESS_EFFECTIVE_EXPOSURE_FACTOR:Landroid/hardware/camera2/CaptureResult$Key;

    .line 85
    invoke-interface {p0, v2}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Jpeg Qual"

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    .line 86
    invoke-interface {p0, v2}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    return-object v0
.end method


# virtual methods
.method public final processTuningData(Lcom/android/camera/one/v2/imagesaver/tuning/TuningData;)V
    .locals 4

    .prologue
    .line 34
    .line 35
    invoke-interface {p1}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningData;->getInputMetadata()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;->metadataToLogString(Ljava/util/Collection;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 37
    invoke-interface {p1}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningData;->getReprocessingMetadata()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;->metadataToLogString(Ljava/util/Collection;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 39
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 40
    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->allAsList([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger$1;-><init>(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;Lcom/android/camera/one/v2/imagesaver/tuning/TuningData;)V

    .line 39
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 61
    return-void
.end method
