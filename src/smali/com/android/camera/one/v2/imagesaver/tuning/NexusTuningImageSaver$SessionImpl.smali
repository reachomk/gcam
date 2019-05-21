.class final Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl;
.super Ljava/lang/Object;
.source "NexusTuningImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SessionImpl"
.end annotation


# instance fields
.field private final captureHandle:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector$CaptureHandle;

.field private final delegateSession:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

.field private final delegateSessionDone:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final tuningDataCollector:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector$CaptureHandle;Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl;->delegateSession:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    .line 47
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl;->delegateSessionDone:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 48
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl;->captureHandle:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector$CaptureHandle;

    .line 49
    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl;->tuningDataCollector:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl;)Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector$CaptureHandle;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl;->captureHandle:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector$CaptureHandle;

    return-object v0
.end method


# virtual methods
.method public final addFullSizeImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 60
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl;->captureHandle:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector$CaptureHandle;

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector$CaptureHandle;->addImage(J)V

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x25

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/RefCountedImageProxy;

    invoke-direct {v0, p1, v4}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/RefCountedImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;I)V

    .line 66
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl;->tuningDataCollector:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;

    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    new-instance v3, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;

    invoke-direct {v3, v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    invoke-direct {v2, v3, p2}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-interface {v1, v2}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;->addRawImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 68
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl;->delegateSession:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;

    invoke-direct {v2, v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    invoke-interface {v1, v2, p2}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;->addFullSizeImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl;->tuningDataCollector:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p2}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;->addTotalCaptureResult(JLcom/google/common/util/concurrent/ListenableFuture;)V

    .line 78
    return-void

    .line 69
    :cond_0
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    .line 70
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/RefCountedImageProxy;

    invoke-direct {v0, p1, v4}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/RefCountedImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;I)V

    .line 71
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl;->tuningDataCollector:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;

    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    new-instance v3, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;

    invoke-direct {v3, v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    invoke-direct {v2, v3, p2}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-interface {v1, v2}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;->addYuvImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 73
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl;->delegateSession:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;

    invoke-direct {v2, v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    invoke-interface {v1, v2, p2}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;->addFullSizeImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl;->delegateSession:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;->addFullSizeImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    goto :goto_0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl;->delegateSessionDone:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl$1;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl$1;-><init>(Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/NexusTuningImageSaver$SessionImpl;->delegateSession:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;->close()V

    .line 97
    return-void
.end method
