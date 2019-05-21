.class final Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;
.super Ljava/lang/Object;
.source "LazySmartMeteringProcessor.java"

# interfaces
.implements Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private closed:Z

.field private latestViewfinderImage:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

.field private latestViewfinderMetadata:Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "LazySMProcssor"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/hdrplus/HdrPlusSession;IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->lock:Ljava/lang/Object;

    .line 58
    iput-object v1, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->latestViewfinderImage:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 59
    iput-object v1, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->latestViewfinderMetadata:Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->closed:Z

    .line 61
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->closed:Z

    if-eqz v0, :cond_0

    .line 115
    monitor-exit v1

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->closed:Z

    .line 118
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->latestViewfinderImage:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->latestViewfinderImage:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->latestViewfinderImage:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->latestViewfinderMetadata:Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 123
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getLatestViewfinderFrame()Lcom/google/common/base/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->latestViewfinderImage:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 67
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->latestViewfinderImage:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 68
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final process(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->closed:Z

    if-eqz v0, :cond_1

    .line 79
    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->close()V

    .line 82
    :cond_0
    monitor-exit v1

    .line 97
    :goto_0
    return-void

    .line 85
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->hasImageData()Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->TAG:Ljava/lang/String;

    const-string v2, "No Image Data! Ignoring the metering frames."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->close()V

    .line 88
    monitor-exit v1

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 91
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->latestViewfinderImage:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->latestViewfinderImage:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 95
    :cond_3
    iput-object p1, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->latestViewfinderImage:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 96
    iput-object p2, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->latestViewfinderMetadata:Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 97
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final startCapture()Lcom/google/common/base/Supplier;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/googlex/gcam/AeResults;",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/LazySmartMeteringProcessor;->latestViewfinderMetadata:Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 107
    const/4 v2, 0x0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
