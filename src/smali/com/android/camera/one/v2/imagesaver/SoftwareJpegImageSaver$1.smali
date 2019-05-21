.class final Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$1;
.super Ljava/lang/Object;
.source "SoftwareJpegImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task",
        "<",
        "Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;

.field private synthetic val$image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$1;->this$0:Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$1;->val$image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$1;->this$0:Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;

    invoke-static {v1}, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;->access$000(Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;

    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$1;->this$0:Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$1;->val$image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;-><init>(Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 83
    return-object v0
.end method

.method public final neverExecute()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$1;->val$image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    iget-object v0, v0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 89
    new-instance v0, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    const-string v1, "Software jpeg saver was closed"

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
