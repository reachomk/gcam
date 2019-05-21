.class final Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl$1;
.super Ljava/lang/Object;
.source "LuckyShotReprocessingImageSaver.java"

# interfaces
.implements Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$PostComputeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;-><init>(Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;Lcom/android/camera/util/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/LuckyShotMetric;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;

.field private synthetic val$delegateSession:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl$1;->this$1:Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;

    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl$1;->val$delegateSession:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final saveLuckyShot$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTHMASRJD5N6EBR9DLGMEPB2C5HMMPBECGNKIRB1CTIL8RQGE9NM6PBJECTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDQ62T3J5T67AORBF59MGRRK9LIN8OA4C5Q62GJLD5M68PBI7CKLC___(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/session/StackableSession;Lcom/android/camera/stats/LuckyShotMetaDataBuilder;)V
    .locals 3

    .prologue
    .line 72
    invoke-interface {p2}, Lcom/android/camera/session/StackableSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->setLuckyShotStats(Lcom/android/camera/stats/LuckyShotMetaDataBuilder;)V

    .line 73
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl$1;->this$1:Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;->access$000(Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "finish lucky shot selection, pass to the piped image saver"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl$1;->val$delegateSession:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    iget-object v1, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    iget-object v2, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->metadata:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;->addFullSizeImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl$1;->val$delegateSession:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;->close()V

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/LuckyShotReprocessingImageSaver$SessionImpl$1;->val$delegateSession:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    invoke-interface {v1}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;->close()V

    throw v0
.end method
