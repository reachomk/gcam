.class final Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$7;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$7;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apply$5166KOBMC4NMOOBECSNLCRR9CGTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NMQPB4D5GIUK3ICLO62SJ5CH6MAP39C596AORFE9I6ASHR55666RRD5TJMURR7DHIIUORFDLMMURHFELQ6IR1FCDNMSORLE9P6ARJK5T66ISRKCLN62OJCCL37AT3LE9IJM___(Lcom/android/camera/camcorder/media/PreparedMediaRecorder;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/camcorder/media/PreparedMediaRecorder;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$7;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$000(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$7;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$100(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    move-result-object v0

    sget-object v2, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->CLOSED:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$7;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 353
    invoke-static {v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$100(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "CamcorderCaptureSessionImpl state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v1

    .line 358
    :goto_0
    return-object v0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$7;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$100(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    move-result-object v0

    sget-object v2, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->STARTING_RECORD:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 358
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$7;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$700(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/media/MediaRecorderStarter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$7;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 359
    invoke-static {v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$300(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    move-result-object v2

    .line 360
    invoke-virtual {p1}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->getRecordingSurface()Landroid/view/Surface;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$7;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 361
    invoke-static {v4}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->access$500(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$7;->this$0:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;

    .line 358
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/camera/camcorder/media/MediaRecorderStarter;->startRecording$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NK6OBDCLP62GR1E1Q7ASJ5ADIN6SR9DTN50SJFF1SJMJ31DPI74RR9CGNNCQB5ESNL6TBICPGM6P9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NK6OBDCLP62KJ5E1IM2T39DPJK6OBGEHQN4PA3C5M6OOJ1CDLJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOR1DLHMUSJ4CLP2URB5CHKM2BQGE9IN0OBICLI4QPB4D5GL4PB3DTP68PBI8DGMOR32C5HMMEP99HHMUR9FCTNMUPRCCKNM6RRDDLNMSBRLEHKMOBR3DTN66TBIE9IMST1F9HKN6T35DPGM4R358PQN8TBICKTG____(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Landroid/view/Surface;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 343
    check-cast p2, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    invoke-direct {p0, p2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$7;->apply$5166KOBMC4NMOOBECSNLCRR9CGTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NMQPB4D5GIUK3ICLO62SJ5CH6MAP39C596AORFE9I6ASHR55666RRD5TJMURR7DHIIUORFDLMMURHFELQ6IR1FCDNMSORLE9P6ARJK5T66ISRKCLN62OJCCL37AT3LE9IJM___(Lcom/android/camera/camcorder/media/PreparedMediaRecorder;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
