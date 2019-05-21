.class Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$1;
.super Ljava/lang/Object;
.source "ReprocessableImage.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

.field final synthetic val$image:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;

.field final synthetic val$outputFuture:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;Lcom/google/common/util/concurrent/SettableFuture;Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;)V
    .locals 0

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$1;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$1;->val$outputFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$1;->val$image:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1182
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 1184
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$1;->val$outputFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$1;->this$0:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    .line 1185
    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->access$100(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;

    move-result-object v2

    new-instance v3, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$2$1;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$2$1;-><init>(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$1;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->submit(Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 1184
    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 1202
    return-object v0
.end method

.method public neverExecute()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$1;->val$outputFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    const-string v2, "Reprocessing saver was closed"

    invoke-direct {v1, v2}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 1210
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
