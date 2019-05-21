.class final Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$4;
.super Ljava/lang/Object;
.source "FallbackSingleImageSaver.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->submitSecondary(Ljava/lang/Object;Lcom/google/common/util/concurrent/SettableFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<TTOutput;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;

.field private synthetic val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$4;->this$0:Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$4;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$4;->this$0:Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->access$000(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$4;->this$0:Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->access$110(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;)I

    .line 128
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$4;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 130
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$4;->this$0:Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->access$600(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;)Lcom/google/android/apps/camera/async/PollingObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/PollingObservable;->update()V

    .line 131
    return-void

    .line 128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTOutput;)V"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$4;->this$0:Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$4;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v0, p1, v1}, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->access$200(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;Ljava/lang/Object;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 122
    return-void
.end method
