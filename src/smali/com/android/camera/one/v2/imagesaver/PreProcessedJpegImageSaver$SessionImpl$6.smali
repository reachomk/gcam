.class final Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6;
.super Ljava/lang/Object;
.source "PreProcessedJpegImageSaver.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/AsyncFunction",
        "<",
        "Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;",
        "Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6;->this$1:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 374
    check-cast p1, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;

    .line 1379
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6;->this$1:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->access$800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQGE9IL0SJFCDIN6SR5CH570PB795MM2PR5ADGNCPBI7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BRLEHKMOBRKD5MMABQ9DPQ6ASJMC5M46R3FCDLJM___(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;)Lcom/google/android/apps/camera/util/time/NanosecondClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    .line 1380
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6;->this$1:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;

    iget-object v2, v2, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;

    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->access$900$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQGE9IL0SJFCDIN6SR5CH570PB795MM2PR5ADGNCPBI7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBJC5R6ASHF85PNIRJ3ADKMSPRCCL4MQOB7CL9M2TJ5E8TG____(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;)Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;->process(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 1382
    new-instance v3, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6$1;-><init>(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$6;Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;J)V

    invoke-static {v2, v3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 374
    return-object v2
.end method
