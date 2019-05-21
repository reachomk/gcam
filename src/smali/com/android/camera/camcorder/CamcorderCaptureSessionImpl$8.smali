.class final Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;
.super Ljava/lang/Object;
.source "CamcorderCaptureSessionImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->startRecording(Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2",
        "<",
        "Ljava/lang/Void;",
        "Lcom/android/camera/camcorder/media/PreparedMediaRecorder;",
        "Lcom/android/camera/camcorder/CamcorderRecordingSession;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

.field private synthetic val$camcorderRecordingSessionCallback:Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    iput-object p2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->val$camcorderRecordingSessionCallback:Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apply$5166KOBMC4NMOOBECSNLCRR9CGTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NMQPB4D5GIUK3ICLO62SJ5CH6MAP39C596AORFE9I6ASHR55666RRD5TJMURR7DHIIUORFDLMMURHFELQ6IR1FCDNMSORLE9P6ARJK5T66ISRKCLN62OJCCL37AT3LE9IJM___(Lcom/android/camera/camcorder/media/PreparedMediaRecorder;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/camcorder/media/PreparedMediaRecorder;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/camcorder/CamcorderRecordingSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-static {v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$000(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Ljava/lang/Object;

    move-result-object v26

    monitor-enter v26

    .line 376
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-static {v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$100(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    move-result-object v2

    sget-object v3, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->CLOSED:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    invoke-virtual {v2, v3}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-static {v3}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$100(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x22

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "CamcorderCaptureSessionImpl state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 431
    :catchall_0
    move-exception v2

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 380
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-static {v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$100(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    move-result-object v2

    sget-object v3, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->STARTING_RECORD:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    invoke-virtual {v2, v3}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    sget-object v3, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->RECORDING:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    invoke-static {v2, v3}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$102(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;)Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 387
    new-instance v2, Lcom/android/camera/camcorder/camera/AfScanRunnable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 388
    invoke-static {v3}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$300(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 389
    invoke-static {v4}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$500(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 390
    invoke-static {v5}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$400(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Landroid/view/Surface;

    move-result-object v5

    .line 391
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->getRecordingSurface()Landroid/view/Surface;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 392
    invoke-static {v7}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$800(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 393
    invoke-static {v8}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$900(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/camera/AfScanner;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 394
    invoke-static {v9}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$1000(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/camera/RecordingRequestStarter;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/camcorder/camera/AfScanRunnable;-><init>(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;Landroid/view/Surface;Landroid/view/Surface;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/camcorder/camera/AfScanner;Lcom/android/camera/camcorder/camera/RecordingRequestStarter;)V

    .line 396
    new-instance v23, Lcom/android/camera/camcorder/camera/RecordingRequestRunnable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 398
    invoke-static {v3}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$1000(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/camera/RecordingRequestStarter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 400
    invoke-static {v4}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$300(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 401
    invoke-static {v5}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$500(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    move-result-object v5

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4, v5}, Lcom/android/camera/camcorder/camera/RecordingRequestRunnable;-><init>(Lcom/android/camera/camcorder/camera/RecordingRequestStarter;Lcom/android/camera/camcorder/media/PreparedMediaRecorder;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;)V

    .line 404
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->getIntentFileDescriptor()Lcom/google/common/base/Optional;

    move-result-object v24

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    move-object/from16 v27, v0

    new-instance v3, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->val$camcorderRecordingSessionCallback:Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 411
    invoke-static {v6}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$1200(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 412
    invoke-static {v7}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$300(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 413
    invoke-static {v8}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$1300(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 414
    invoke-static {v9}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$1400(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 415
    invoke-static {v10}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$800(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 416
    invoke-static {v11}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$1500(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 417
    invoke-static {v12}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$1600(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/common/base/Optional;

    move-result-object v12

    .line 418
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->getRecordingFile()Ljava/io/File;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 419
    invoke-static {v14}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$1700(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Ljava/util/concurrent/Executor;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 420
    invoke-static {v15}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$1800(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/storage/FileNamer;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    move-object/from16 v16, v0

    .line 421
    invoke-static/range {v16 .. v16}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$1900(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/media/MediaRecorderStopper;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    move-object/from16 v17, v0

    .line 422
    invoke-static/range {v17 .. v17}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$2000(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/media/MediaRecorderPauseResumer;

    move-result-object v17

    new-instance v18, Lcom/google/android/apps/camera/util/time/UtcClock;

    invoke-direct/range {v18 .. v18}, Lcom/google/android/apps/camera/util/time/UtcClock;-><init>()V

    .line 424
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->getOptionalLocation()Lcom/google/common/base/Optional;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    move-object/from16 v22, v0

    .line 429
    invoke-static/range {v22 .. v22}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$500(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    move-result-object v25

    move-object/from16 v22, v2

    invoke-direct/range {v3 .. v25}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;-><init>(Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;Lcom/android/camera/camcorder/CamcorderRecordingSessionInternalCallback;Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Optional;Ljava/io/File;Ljava/util/concurrent/Executor;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/camcorder/media/MediaRecorderStopper;Lcom/android/camera/camcorder/media/MediaRecorderPauseResumer;Lcom/google/android/apps/camera/util/time/UtcClock;Lcom/google/common/base/Optional;JLcom/android/camera/camcorder/camera/AfScanRunnable;Lcom/android/camera/camcorder/camera/RecordingRequestRunnable;Lcom/google/common/base/Optional;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;)V

    .line 407
    move-object/from16 v0, v27

    invoke-static {v0, v3}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$1102(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-static {v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$1100(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 370
    check-cast p2, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    invoke-direct {p0, p2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;->apply$5166KOBMC4NMOOBECSNLCRR9CGTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NMQPB4D5GIUK3ICLO62SJ5CH6MAP39C596AORFE9I6ASHR55666RRD5TJMURR7DHIIUORFDLMMURHFELQ6IR1FCDNMSORLE9P6ARJK5T66ISRKCLN62OJCCL37AT3LE9IJM___(Lcom/android/camera/camcorder/media/PreparedMediaRecorder;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
