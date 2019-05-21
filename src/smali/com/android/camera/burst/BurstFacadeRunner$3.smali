.class final Lcom/android/camera/burst/BurstFacadeRunner$3;
.super Ljava/lang/Object;
.source "BurstFacadeRunner.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/BurstFacadeRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/libraries/smartburst/selection/FrameDropper;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/BurstFacadeRunner;

.field private synthetic val$autoGenerateArtifacts:Z

.field private synthetic val$burstLivePreviewController:Lcom/android/camera/burst/BurstLivePreviewController;

.field private synthetic val$burstMode:Lcom/google/android/libraries/smartburst/integration/BurstMode;

.field private synthetic val$burstSessionDirectoryFuture:Lcom/google/common/util/concurrent/ListenableFuture;

.field private synthetic val$burstUIController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEHAKIGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/hdrplus/HdrPlusSessionModule;

.field private synthetic val$captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

.field private synthetic val$imageStreamProperties:Lcom/android/camera/burst/BurstController$ImageStreamProperties;

.field private synthetic val$processingParameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH362OR1CHII8GJLE9PN8K3IDTHMASRJD5N6EK31E9GMQPBKCLP76EO_:Lcom/android/camera/hdrplus/HdrPlusModule;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstFacadeRunner;Lcom/google/android/libraries/smartburst/integration/BurstMode;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/burst/BurstLivePreviewController;Lcom/android/camera/burst/BurstController$ImageStreamProperties;Lcom/android/camera/hdrplus/HdrPlusSessionModule;Lcom/android/camera/session/StackableSession;ZLcom/android/camera/hdrplus/HdrPlusModule;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/camera/burst/BurstFacadeRunner$3;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    iput-object p2, p0, Lcom/android/camera/burst/BurstFacadeRunner$3;->val$burstMode:Lcom/google/android/libraries/smartburst/integration/BurstMode;

    iput-object p3, p0, Lcom/android/camera/burst/BurstFacadeRunner$3;->val$burstSessionDirectoryFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p4, p0, Lcom/android/camera/burst/BurstFacadeRunner$3;->val$burstLivePreviewController:Lcom/android/camera/burst/BurstLivePreviewController;

    iput-object p5, p0, Lcom/android/camera/burst/BurstFacadeRunner$3;->val$imageStreamProperties:Lcom/android/camera/burst/BurstController$ImageStreamProperties;

    iput-object p6, p0, Lcom/android/camera/burst/BurstFacadeRunner$3;->val$burstUIController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEHAKIGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/hdrplus/HdrPlusSessionModule;

    iput-object p7, p0, Lcom/android/camera/burst/BurstFacadeRunner$3;->val$captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    iput-boolean p8, p0, Lcom/android/camera/burst/BurstFacadeRunner$3;->val$autoGenerateArtifacts:Z

    iput-object p9, p0, Lcom/android/camera/burst/BurstFacadeRunner$3;->val$processingParameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH362OR1CHII8GJLE9PN8K3IDTHMASRJD5N6EK31E9GMQPBKCLP76EO_:Lcom/android/camera/hdrplus/HdrPlusModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 344
    .line 1347
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/burst/BurstFacadeRunner$3;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    invoke-static {v1}, Lcom/android/camera/burst/BurstFacadeRunner;->access$200(Lcom/android/camera/burst/BurstFacadeRunner;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/camera/burst/BurstCaptureCommand;

    .line 1348
    if-nez v16, :cond_0

    .line 1349
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Attempting to start burst, but BurstCaptureCommand is null!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1354
    :cond_0
    new-instance v12, Lcom/android/camera/stats/SmartBurstMetaData;

    invoke-direct {v12}, Lcom/android/camera/stats/SmartBurstMetaData;-><init>()V

    .line 1355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/burst/BurstFacadeRunner$3;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    invoke-static {v1}, Lcom/android/camera/burst/BurstFacadeRunner;->access$300(Lcom/android/camera/burst/BurstFacadeRunner;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1356
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/burst/BurstCaptureCommand;->getMaxFrameRequest()I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/android/camera/stats/SmartBurstMetaData;->setMaxImageCount(I)V

    .line 1359
    new-instance v1, Lcom/android/camera/burst/BurstControllerImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/BurstFacadeRunner$3;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    .line 1361
    invoke-static {v2}, Lcom/android/camera/burst/BurstFacadeRunner;->access$400(Lcom/android/camera/burst/BurstFacadeRunner;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/burst/BurstFacadeRunner$3;->val$burstMode:Lcom/google/android/libraries/smartburst/integration/BurstMode;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/burst/BurstFacadeRunner$3;->val$burstSessionDirectoryFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/burst/BurstFacadeRunner$3;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    .line 1364
    invoke-static {v5}, Lcom/android/camera/burst/BurstFacadeRunner;->access$500(Lcom/android/camera/burst/BurstFacadeRunner;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/burst/SurfaceTextureContainer;

    invoke-virtual {v5}, Lcom/android/camera/burst/SurfaceTextureContainer;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/burst/BurstFacadeRunner$3;->val$burstLivePreviewController:Lcom/android/camera/burst/BurstLivePreviewController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/burst/BurstFacadeRunner$3;->val$imageStreamProperties:Lcom/android/camera/burst/BurstController$ImageStreamProperties;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/burst/BurstFacadeRunner$3;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/burst/BurstFacadeRunner$3;->val$burstUIController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEHAKIGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/hdrplus/HdrPlusSessionModule;

    .line 1367
    invoke-static {v8, v9}, Lcom/android/camera/burst/BurstFacadeRunner;->access$600$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6AKJLDPN6ASHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEHAKIGRFDPQ74RRCDHIN4EP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH96ASRLDHQ76J39EDQ6ARJ5E8TG____(Lcom/android/camera/burst/BurstFacadeRunner;Lcom/android/camera/hdrplus/HdrPlusSessionModule;)Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/burst/BurstFacadeRunner$3;->val$captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/burst/BurstFacadeRunner$3;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    .line 1369
    invoke-static {v10}, Lcom/android/camera/burst/BurstFacadeRunner;->access$700(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/burst/BurstFacadeRunner$3;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    .line 1370
    invoke-static {v11}, Lcom/android/camera/burst/BurstFacadeRunner;->access$800(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/android/camera/processing/ProcessingServiceManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/burst/BurstFacadeRunner$3;->val$autoGenerateArtifacts:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/burst/BurstFacadeRunner$3;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    .line 1373
    invoke-static {v14}, Lcom/android/camera/burst/BurstFacadeRunner;->access$900(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/android/camera/storage/Storage;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/burst/BurstFacadeRunner$3;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    .line 1374
    invoke-static {v15}, Lcom/android/camera/burst/BurstFacadeRunner;->access$1000(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v15

    invoke-direct/range {v1 .. v15}, Lcom/android/camera/burst/BurstControllerImpl;-><init>(Landroid/content/Context;Lcom/google/android/libraries/smartburst/integration/BurstMode;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/SurfaceTexture;Lcom/android/camera/burst/BurstLivePreviewController;Lcom/android/camera/burst/BurstController$ImageStreamProperties;Lcom/android/camera/burst/BurstResultsListener;Lcom/android/camera/session/StackableSession;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/processing/ProcessingServiceManager;Lcom/android/camera/stats/SmartBurstMetaData;ZLcom/android/camera/storage/Storage;Lcom/android/camera/debug/trace/Trace;)V

    .line 1375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/BurstFacadeRunner$3;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    invoke-static {v2}, Lcom/android/camera/burst/BurstFacadeRunner;->access$1100(Lcom/android/camera/burst/BurstFacadeRunner;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1379
    invoke-interface {v1}, Lcom/android/camera/burst/BurstController;->startAnalysis()Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    move-result-object v2

    .line 1384
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/burst/BurstCaptureCommand;->getAcquiredFrames()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/burst/BurstFacadeRunner$3;->val$processingParameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH362OR1CHII8GJLE9PN8K3IDTHMASRJD5N6EK31E9GMQPBKCLP76EO_:Lcom/android/camera/hdrplus/HdrPlusModule;

    iget-object v4, v4, Lcom/android/camera/hdrplus/HdrPlusModule;->imageProcessor:Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;

    .line 1383
    invoke-interface {v1, v3, v4}, Lcom/android/camera/burst/BurstController;->processBurstResults(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;)V

    .line 344
    return-object v2
.end method
