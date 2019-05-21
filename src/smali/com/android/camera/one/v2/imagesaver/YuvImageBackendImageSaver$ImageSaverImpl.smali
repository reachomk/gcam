.class final Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;
.super Ljava/lang/Object;
.source "YuvImageBackendImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ImageSaverImpl"
.end annotation


# instance fields
.field private final imageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

.field private final imageRotation:Lcom/google/android/apps/camera/util/layout/Orientation;

.field private final session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

.field private synthetic this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

.field private final tracer:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;Lcom/android/camera/session/StackableSession;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/android/camera/processing/imagebackend/ImageProcessorListener;Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    .line 52
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->imageRotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 53
    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->imageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 54
    iput-object p5, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->tracer:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer;

    .line 55
    return-void
.end method


# virtual methods
.method public final saveAndCloseImage(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 6
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
    .line 65
    :try_start_0
    invoke-virtual {p2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 69
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 70
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CREATE_EARLY_FILMSTRIP_PREVIEW:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CONVERT_TO_RGB_PREVIEW:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->COMPRESS_TO_JPEG_AND_WRITE_TO_DISK:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CLOSE_ON_ALL_TASKS_RELEASE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->tracer:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer;

    invoke-interface {v0, p3}, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer;->addInputImageMetadata(Lcom/google/common/util/concurrent/ListenableFuture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->access$200(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Lcom/android/camera/processing/imagebackend/ImageBackend;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    .line 79
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->imageRotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    iget-object v5, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    invoke-static {v5}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->access$000(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v1, v2, v4, p3, v5}, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    .line 80
    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->access$100(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    iget-object v5, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->imageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 83
    invoke-static {v5}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    .line 78
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/ImageBackend;->receiveImage(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/android/camera/session/SessionBase;Lcom/google/common/base/Optional;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->tracer:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer;->close()V

    .line 94
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 87
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->tracer:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer;

    invoke-interface {v1}, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer;->close()V

    throw v0

    .line 90
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-static {}, Lcom/android/camera/ui/PreviewContentNoOp;->absent()Lcom/android/camera/ui/UiString;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/session/StackableSession;->finishWithFailure(Lcom/android/camera/ui/UiString;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
