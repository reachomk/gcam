.class final Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;
.super Lcom/android/camera/processing/imagebackend/TaskJpegEncode;
.source "TaskCompressMarkedImageToJpeg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$chainedStrides:[I

.field private synthetic val$dataCopy:[B

.field private synthetic val$forwardedMetadata:Lcom/google/common/util/concurrent/ListenableFuture;

.field final synthetic val$inputImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

.field final synthetic val$resultImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;


# direct methods
.method constructor <init>(Lcom/android/camera/processing/imagebackend/TaskImageContainer;I[BLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;[ILcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .prologue
    .line 149
    iput-object p3, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->val$dataCopy:[B

    iput-object p4, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->val$inputImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iput-object p5, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->val$chainedStrides:[I

    iput-object p6, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->val$resultImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iput-object p7, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->val$forwardedMetadata:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;-><init>(Lcom/android/camera/processing/imagebackend/TaskImageContainer;I)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->val$dataCopy:[B

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->val$inputImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v1, v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->val$inputImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v2, v2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->val$chainedStrides:[I

    .line 156
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->convertNv21toJpeg([BII[I)[B

    move-result-object v6

    .line 157
    iget-wide v2, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->id:J

    iget-object v4, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->val$inputImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget-object v5, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->val$resultImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    sget v7, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FINAL_IMAGE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->onJpegEncodeDone$5154OORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN0SJFCDIN6SR9DPJIUQBDC5JMAOJ1CDLMARJ45TA62SRB95MM2PR58DNMST31D5N6ASH4AHGN6QQ9DLGMEP9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRB1CTIJMMQ29HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEP9AO______(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;[BI)V

    .line 160
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->val$resultImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->val$forwardedMetadata:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->createExif(Lcom/google/common/base/Optional;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/android/camera/exif/ExifInterface;

    move-result-object v10

    .line 161
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->session:Lcom/android/camera/session/SessionBase;

    invoke-interface {v0}, Lcom/android/camera/session/SessionBase;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v0

    invoke-interface {v0, v10}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->decorateAtTimeWriteToDisk(Lcom/android/camera/exif/ExifInterface;)V

    .line 163
    iget-object v5, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->session:Lcom/android/camera/session/SessionBase;

    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->val$resultImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v7, v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->val$resultImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v8, v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->val$resultImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->orientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 169
    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v9

    .line 164
    invoke-static/range {v5 .. v10}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->saveAndFinish(Lcom/android/camera/session/SessionBase;[BIIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 171
    new-instance v1, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1$1;-><init>(Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 194
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->val$forwardedMetadata:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->session:Lcom/android/camera/session/SessionBase;

    .line 197
    invoke-interface {v0}, Lcom/android/camera/session/SessionBase;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->val$forwardedMetadata:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 198
    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;

    invoke-interface {v1, v0}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->decorateAtTimeOfCaptureRequestAvailable(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->session:Lcom/android/camera/session/SessionBase;

    invoke-interface {v0}, Lcom/android/camera/session/SessionBase;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    .line 214
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CaptureResults not added to photoCaptureDoneEvent event due to Interrupted Exception."

    .line 200
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->session:Lcom/android/camera/session/SessionBase;

    invoke-interface {v0}, Lcom/android/camera/session/SessionBase;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    goto :goto_0

    .line 205
    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CaptureResults not added to photoCaptureDoneEvent event due to Execution Exception."

    .line 204
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->session:Lcom/android/camera/session/SessionBase;

    invoke-interface {v0}, Lcom/android/camera/session/SessionBase;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->session:Lcom/android/camera/session/SessionBase;

    invoke-interface {v1}, Lcom/android/camera/session/SessionBase;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    throw v0

    .line 211
    :cond_0
    invoke-static {}, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CaptureResults unavailable to photoCaptureDoneEvent event."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->session:Lcom/android/camera/session/SessionBase;

    invoke-interface {v0}, Lcom/android/camera/session/SessionBase;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    goto :goto_0
.end method
