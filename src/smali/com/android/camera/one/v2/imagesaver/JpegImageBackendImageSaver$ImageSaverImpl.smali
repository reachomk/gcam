.class final Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;
.super Ljava/lang/Object;
.source "JpegImageBackendImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ImageSaverImpl"
.end annotation


# instance fields
.field private final imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

.field private final imageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

.field private final imageRotation:Lcom/google/android/apps/camera/util/layout/Orientation;

.field private final session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

.field private synthetic this$0:Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;Lcom/android/camera/session/StackableSession;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageProcessorListener;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    .line 59
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->imageRotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 60
    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    .line 61
    iput-object p5, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->imageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 62
    return-void
.end method


# virtual methods
.method public final saveAndCloseImage(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ">;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 71
    invoke-virtual {p2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 77
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->COMPRESS_TO_JPEG_AND_WRITE_TO_DISK:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CLOSE_ON_ALL_TASKS_RELEASE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    :try_start_0
    new-instance v1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    .line 82
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->imageRotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;

    invoke-static {v4}, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->access$000(Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v1, v0, v2, p3, v4}, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/Rect;)V

    .line 83
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;

    .line 84
    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->access$100(Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    iget-object v5, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->imageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    invoke-static {v5}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    .line 83
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/ImageBackend;->receiveImage(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/android/camera/session/SessionBase;Lcom/google/common/base/Optional;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-static {}, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageBackend failed to receive an image! Aborting session."

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-static {}, Lcom/android/camera/ui/PreviewContentNoOp;->absent()Lcom/android/camera/ui/UiString;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/android/camera/session/StackableSession;->finishWithFailure(Lcom/android/camera/ui/UiString;Z)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {}, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageBackend received an image, but it did not have any image data!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-static {}, Lcom/android/camera/ui/PreviewContentNoOp;->absent()Lcom/android/camera/ui/UiString;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/android/camera/session/StackableSession;->finishWithFailure(Lcom/android/camera/ui/UiString;Z)V

    goto :goto_0
.end method
