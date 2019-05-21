.class final Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6$1;
.super Ljava/lang/Object;
.source "PreProcessedJpegImageSaver.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$2:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6;

.field private synthetic val$reprocessableImage:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;

.field private synthetic val$reprocessingStartNs:J


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6;Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;J)V
    .locals 1

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6$1;->this$2:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6$1;->val$reprocessableImage:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;

    iput-wide p3, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6$1;->val$reprocessingStartNs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6$1;->val$reprocessableImage:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 404
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 384
    check-cast p1, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;

    .line 1387
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6$1;->val$reprocessableImage:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 1388
    if-nez p1, :cond_1

    .line 1389
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6$1;->onFailure(Ljava/lang/Throwable;)V

    .line 1390
    :cond_0
    :goto_0
    return-void

    .line 1393
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;->wasReprocessed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6$1;->this$2:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6;->this$1:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->access$800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQGE9IL0SJFCDIN6SR5CH570PB795MM2PR5ADGNCPBI7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BRLEHKMOBRKD5MMABQ9DPQ6ASJMC5M46R3FCDLJM___(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;)Lcom/google/android/apps/camera/util/time/NanosecondClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    .line 1395
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6$1;->this$2:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6;

    iget-object v2, v2, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6;->this$1:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;

    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;->access$1000(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;)Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v2

    .line 1396
    invoke-interface {v2}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->getSessionTrace()Lcom/android/camera/stats/CaptureSessionTrace;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6$1;->val$reprocessingStartNs:J

    .line 1397
    invoke-virtual {v2, v4, v5, v0, v1}, Lcom/android/camera/stats/CaptureSessionTrace;->onReprocessingFinished(JJ)V

    goto :goto_0
.end method
