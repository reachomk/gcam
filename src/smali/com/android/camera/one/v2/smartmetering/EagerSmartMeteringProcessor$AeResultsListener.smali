.class final Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor$AeResultsListener;
.super Ljava/lang/Object;
.source "EagerSmartMeteringProcessor.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AeResultsListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Lcom/google/googlex/gcam/AeResults;",
        ">;"
    }
.end annotation


# instance fields
.field private final resultFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/googlex/gcam/AeResults;",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private synthetic this$0:Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/googlex/gcam/AeResults;",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor$AeResultsListener;->this$0:Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor$AeResultsListener;->resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 43
    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 37
    check-cast p1, Lcom/google/googlex/gcam/AeResults;

    .line 1047
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor$AeResultsListener;->this$0:Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->access$000(Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1052
    :try_start_0
    invoke-virtual {p1}, Lcom/google/googlex/gcam/AeResults;->getMetering_frame_timestamps_ns()Lcom/google/googlex/gcam/Int64Vector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/Int64Vector;->get(I)J

    move-result-wide v2

    .line 1053
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor$AeResultsListener;->this$0:Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->access$100(Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;)Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    move-result-object v0

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v4}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1054
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor$AeResultsListener;->resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v2, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor$AeResultsListener;->this$0:Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;

    invoke-static {v2}, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->access$100(Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;)Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 1057
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
