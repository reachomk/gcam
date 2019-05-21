.class final Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;
.super Ljava/lang/Object;
.source "LuckyShotReprocessingImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SessionImpl"
.end annotation


# instance fields
.field private final captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

.field private fullSizeImagesProcessed:I

.field private final imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

.field private final luckyShotImageFilter:Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;

.field private final luckyShotMetric:Lcom/android/camera/processing/imagebackend/LuckyShotMetric;

.field private orientation:Lcom/google/android/apps/camera/util/layout/Orientation;

.field private final postComputeCallback:Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$PostComputeCallback;

.field final synthetic this$0:Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;Lcom/android/camera/util/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/LuckyShotMetric;)V
    .locals 6

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->fullSizeImagesProcessed:I

    .line 61
    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

    .line 62
    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    .line 63
    iput-object p5, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->luckyShotMetric:Lcom/android/camera/processing/imagebackend/LuckyShotMetric;

    .line 65
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl$1;-><init>(Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->postComputeCallback:Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$PostComputeCallback;

    .line 83
    new-instance v3, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl$2;

    invoke-direct {v3, p1}, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl$2;-><init>(Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;)V

    .line 93
    invoke-static {p1}, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->access$100(Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;)Lcom/android/camera/processing/imagebackend/ImageBackend;

    move-result-object v0

    .line 94
    invoke-static {p1}, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->access$200(Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->postComputeCallback:Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$PostComputeCallback;

    .line 95
    invoke-static {v2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->luckyShotMetric:Lcom/android/camera/processing/imagebackend/LuckyShotMetric;

    const/4 v5, 0x1

    .line 92
    invoke-static/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->createWithStandardFactory(Lcom/android/camera/processing/imagebackend/ImageBackend;Ljava/util/concurrent/Executor;Lcom/google/common/base/Optional;Lcom/google/android/apps/camera/util/Callback;Lcom/android/camera/processing/imagebackend/LuckyShotMetric;Z)Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->luckyShotImageFilter:Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;

    .line 100
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->luckyShotImageFilter:Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-virtual {v0, v1}, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->startWithFutureListener$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQ3C5O78TBICL9MASRJD5NMSEP99HHMUR9FCTNMUPRCCKNM6RRDDLNMSBRLEHKMOBR3DTN66TBIE9IMST1F9HKN6T35DPGM4R358PQN8TBICKTG____(Lcom/android/camera/session/StackableSession;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 103
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->markProcessingTimeStart()V

    .line 104
    return-void
.end method


# virtual methods
.method public final addFullSizeImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 3
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
    .line 114
    iget v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->fullSizeImagesProcessed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->fullSizeImagesProcessed:I

    .line 115
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

    invoke-virtual {v0}, Lcom/android/camera/util/ImageRotationCalculator;->getObservable()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->from(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->orientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 116
    new-instance v0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->orientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;

    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->access$300(Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/Rect;)V

    .line 117
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->luckyShotImageFilter:Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->submit(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/session/SessionBase;)V

    .line 118
    return-void
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->luckyShotImageFilter:Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;

    invoke-virtual {v0}, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->close()V

    .line 123
    iget v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->fullSizeImagesProcessed:I

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->cancel()V

    .line 126
    :cond_0
    return-void
.end method
