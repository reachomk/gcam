.class final Lcom/android/camera/hdrplus/HdrPlusInFlightImages;
.super Lcom/google/googlex/gcam/ImageReleaseCallback;
.source "HdrPlusInFlightImages.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final kInvalidImageId:J

.field private static nextUniqueId:J


# instance fields
.field private final LOG_EVERY_FRAME:Z

.field private final imageMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-string v0, "HdrPFrameReleaser"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/hdrplus/HdrPlusInFlightImages;->TAG:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/google/googlex/gcam/GcamModule;->getKInvalidImageId()J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/hdrplus/HdrPlusInFlightImages;->kInvalidImageId:J

    .line 46
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/camera/hdrplus/HdrPlusInFlightImages;->nextUniqueId:J

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/googlex/gcam/ImageReleaseCallback;-><init>()V

    .line 22
    invoke-static {}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->instance()Lcom/android/camera/one/v2/OneCameraDebugHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->gcamSmartMeteringLogEveryFrame()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    invoke-static {}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->instance()Lcom/android/camera/one/v2/OneCameraDebugHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/OneCameraDebugHelper;->gcamSmartMeteringEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/hdrplus/HdrPlusInFlightImages;->LOG_EVERY_FRAME:Z

    .line 26
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusInFlightImages;->imageMap:Landroid/util/LongSparseArray;

    return-void

    .line 23
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized getNextUniqueId()J
    .locals 6

    .prologue
    .line 52
    const-class v1, Lcom/android/camera/hdrplus/HdrPlusInFlightImages;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/android/camera/hdrplus/HdrPlusInFlightImages;->nextUniqueId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/android/camera/hdrplus/HdrPlusInFlightImages;->nextUniqueId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized Run(J)V
    .locals 3

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/hdrplus/HdrPlusInFlightImages;->LOG_EVERY_FRAME:Z

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusInFlightImages;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onFrameRelease: imageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    sget-wide v0, Lcom/android/camera/hdrplus/HdrPlusInFlightImages;->kInvalidImageId:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusInFlightImages;->imageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 65
    if-eqz v0, :cond_1

    .line 66
    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusInFlightImages;->imageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 70
    iget-boolean v0, p0, Lcom/android/camera/hdrplus/HdrPlusInFlightImages;->LOG_EVERY_FRAME:Z

    if-eqz v0, :cond_2

    .line 71
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusInFlightImages;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Released Image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_2
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized put(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)J
    .locals 3

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/camera/hdrplus/HdrPlusInFlightImages;->getNextUniqueId()J

    move-result-wide v0

    .line 33
    iget-object v2, p0, Lcom/android/camera/hdrplus/HdrPlusInFlightImages;->imageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1, p1}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-wide v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
