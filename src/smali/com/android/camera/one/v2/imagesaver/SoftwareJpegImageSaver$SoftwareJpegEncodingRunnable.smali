.class final Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;
.super Ljava/lang/Object;
.source "SoftwareJpegImageSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftwareJpegEncodingRunnable"
.end annotation


# instance fields
.field private final imageToProcess:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

.field private final jpegEncodingResult:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic this$0:Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;->this$0:Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;->imageToProcess:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    .line 124
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;->jpegEncodingResult:Lcom/google/common/util/concurrent/SettableFuture;

    .line 125
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;->this$0:Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;->imageToProcess:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    invoke-static {}, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;->access$100()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;->access$200(Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;I)[B

    move-result-object v2

    .line 132
    invoke-static {}, Lcom/android/camera/util/ExifUtil;->create()Lcom/android/camera/util/ExifUtil;

    move-result-object v5

    .line 134
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;->imageToProcess:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    iget-object v0, v0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->metadata:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 135
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;->imageToProcess:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    iget-object v1, v1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    .line 1045
    new-instance v3, Lcom/android/camera/util/Size;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {v3, v4, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 135
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;->imageToProcess:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    iget-object v1, v1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    invoke-virtual {v3, v1}, Lcom/android/camera/util/Size;->rotate(Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/android/camera/util/Size;

    move-result-object v3

    .line 139
    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    .line 140
    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v4

    sget-object v6, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_0:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 142
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 138
    invoke-virtual {v5, v1, v4, v6, v0}, Lcom/android/camera/util/ExifUtil;->populateExif(IILcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/base/Optional;)V

    .line 144
    iget-object v7, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;->jpegEncodingResult:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;->imageToProcess:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    iget-object v0, v0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 146
    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v0

    const/4 v4, 0x0

    .line 150
    invoke-virtual {v5}, Lcom/android/camera/util/ExifUtil;->getExif()Lcom/android/camera/exif/ExifInterface;

    move-result-object v5

    const/4 v6, 0x0

    .line 145
    invoke-static/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;->create$5155MGICCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLEHKMOBQJD5T6AEQ99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCLS6IPHF8LS6IPI9DPQ6ASJ6C5HMAEQQ55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQAE1IMEHBECDNM8QBECT96ASRLDHQ3M___(J[BLcom/android/camera/util/Size;ILcom/android/camera/exif/ExifInterface;Z)Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;

    move-result-object v0

    .line 144
    invoke-virtual {v7, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;->jpegEncodingResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;->jpegEncodingResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;->jpegEncodingResult:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown error while encoding imageToProcess"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;->jpegEncodingResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;->jpegEncodingResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;->jpegEncodingResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;->jpegEncodingResult:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown error while encoding imageToProcess"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;->jpegEncodingResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;->jpegEncodingResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/SettableFuture;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver$SoftwareJpegEncodingRunnable;->jpegEncodingResult:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown error while encoding imageToProcess"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    :cond_1
    throw v0
.end method
