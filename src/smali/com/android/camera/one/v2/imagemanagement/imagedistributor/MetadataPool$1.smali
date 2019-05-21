.class final Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool$1;
.super Ljava/lang/Object;
.source "MetadataPool.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool;->removeMetadataFuture(J)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool;

.field private synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool;J)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool$1;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool;

    iput-wide p2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool$1;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 49
    .line 1052
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool$1;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool;->access$000(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1053
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool$1;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool;->access$100(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool;)Ljava/util/Map;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool$1;->val$timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
