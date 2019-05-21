.class final Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;
.super Ljava/lang/Object;
.source "AdvisingImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/advice/AdvisingImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SessionImpl"
.end annotation


# instance fields
.field private final adviceManager:Lcom/android/camera/advice/AdviceManager;

.field private final delegateSession:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

.field private fullSizeImage:Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

.field private final imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;


# direct methods
.method constructor <init>(Lcom/android/camera/util/ImageRotationCalculator;Lcom/android/camera/advice/AdviceManager;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;->imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

    .line 43
    iput-object p2, p0, Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;->adviceManager:Lcom/android/camera/advice/AdviceManager;

    .line 44
    iput-object p3, p0, Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;->delegateSession:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    .line 45
    return-void
.end method


# virtual methods
.method public final addFullSizeImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 4
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
    .line 56
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    .line 1087
    iget-object v0, p0, Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;->fullSizeImage:Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;->fullSizeImage:Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getTimestamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 56
    :goto_0
    if-eqz v0, :cond_2

    .line 60
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/RefCountedImageProxy;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/RefCountedImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;I)V

    .line 61
    iget-object v1, p0, Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;->fullSizeImage:Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;->fullSizeImage:Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->close()V

    .line 65
    :cond_1
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;

    invoke-direct {v2, v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    invoke-direct {v1, v2, p2}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    iput-object v1, p0, Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;->fullSizeImage:Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    move-object p1, v0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;->delegateSession:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;

    invoke-direct {v1, p1}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    invoke-interface {v0, v1, p2}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;->addFullSizeImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 69
    return-void

    .line 1087
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final close()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;->fullSizeImage:Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;->imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

    invoke-virtual {v0}, Lcom/android/camera/util/ImageRotationCalculator;->getObservable()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->from(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    iget-object v2, p0, Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;->fullSizeImage:Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    iget-object v3, p0, Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;->fullSizeImage:Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    .line 76
    invoke-virtual {v3}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 77
    iget-object v0, p0, Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;->adviceManager:Lcom/android/camera/advice/AdviceManager;

    invoke-interface {v0, v1}, Lcom/android/camera/advice/AdviceManager;->onFrameCapture(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;)V

    .line 81
    iget-object v0, p0, Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;->fullSizeImage:Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->close()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;->delegateSession:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;->close()V

    .line 84
    return-void
.end method
