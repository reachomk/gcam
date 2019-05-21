.class final Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;
.super Lcom/android/ex/camera2/portability/HistoryHandler;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;
    }
.end annotation


# instance fields
.field private mAgent:Lcom/android/ex/camera2/portability/CameraAgent;

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraId:I

.field private mCancelAfPending:I

.field private mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

.field private synthetic this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraAgent;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 283
    invoke-direct {p0, p3}, Lcom/android/ex/camera2/portability/HistoryHandler;-><init>(Landroid/os/Looper;)V

    .line 263
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    .line 284
    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 285
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    .prologue
    const/4 v7, -0x1

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 350
    invoke-super {p0, p1}, Lcom/android/ex/camera2/portability/HistoryHandler;->handleMessage(Landroid/os/Message;)V

    .line 352
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraStateHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Skip handleMessage - action = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Lcom/android/ex/camera2/portability/CameraActions;->stringify(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 651
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handleMessage - action = \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v6}, Lcom/android/ex/camera2/portability/CameraActions;->stringify(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 358
    iget v12, p1, Landroid/os/Message;->what:I

    .line 360
    sparse-switch v12, :sswitch_data_0

    .line 614
    :try_start_0
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid CameraProxy message="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    goto :goto_0

    .line 362
    :sswitch_0
    :try_start_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-object v10, v0

    .line 363
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 364
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v2

    if-eq v2, v11, :cond_4

    .line 365
    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v5, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenedAlready(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 617
    :catch_0
    move-exception v2

    .line 618
    :try_start_2
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v4

    .line 619
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "CameraAction["

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/android/ex/camera2/portability/CameraActions;->stringify(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] at CameraState["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 621
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "RuntimeException during "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 624
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraStateHolder;->invalidate()V

    .line 626
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_2

    .line 627
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v3

    const-string v5, "Release camera since mCamera is not null."

    invoke-static {v3, v5}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 629
    :try_start_3
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 633
    const/4 v3, 0x0

    :try_start_4
    iput-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    .line 638
    :cond_2
    :goto_2
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v11, :cond_1a

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_1a

    .line 639
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 640
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 641
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 650
    :cond_3
    :goto_3
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 369
    :cond_4
    :try_start_5
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Opening camera "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with camera1 API"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 370
    invoke-static {v5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    .line 371
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_5

    .line 372
    iput v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    .line 373
    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-direct {v2, v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;-><init>(Landroid/hardware/Camera;)V

    iput-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    .line 375
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->create()Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$302(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    .line 377
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    new-instance v3, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;-><init>(Landroid/hardware/Camera$Parameters;)V

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$402(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    .line 380
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, p0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 382
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 383
    if-eqz v10, :cond_1

    .line 384
    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v7}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$300(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v7

    iget-object v8, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v8}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/hardware/Camera;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;B)V

    .line 386
    invoke-interface {v10, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 650
    :catchall_0
    move-exception v2

    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    throw v2

    .line 389
    :cond_5
    if-eqz v10, :cond_1

    .line 390
    :try_start_6
    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v5, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 397
    :sswitch_1
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_6

    .line 398
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 399
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 400
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    .line 401
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    goto/16 :goto_1

    .line 403
    :cond_6
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Releasing camera without any camera opened."

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 409
    :sswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;

    move-object v10, v0

    .line 411
    iget v5, p1, Landroid/os/Message;->arg1:I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 413
    :try_start_7
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->reconnect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 421
    :try_start_8
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 422
    if-eqz v10, :cond_1

    .line 423
    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v7}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$300(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v7

    iget-object v8, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v8}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/hardware/Camera;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;B)V

    invoke-virtual {v10, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;->onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    goto/16 :goto_1

    .line 415
    :catch_1
    move-exception v2

    if-eqz v10, :cond_1

    .line 416
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    iget v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    invoke-virtual {p0, v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;->onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 431
    :sswitch_3
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    .line 432
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    goto/16 :goto_1

    .line 437
    :sswitch_4
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->lock()V

    .line 438
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    goto/16 :goto_1

    .line 444
    :sswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1301
    :try_start_9
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    check-cast v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 1302
    :catch_2
    move-exception v2

    .line 1303
    :try_start_a
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v3

    const-string v4, "Could not set preview texture"

    invoke-static {v3, v4, v2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 450
    :sswitch_6
    :try_start_b
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 451
    :catch_3
    move-exception v2

    .line 452
    :try_start_c
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 458
    :sswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;

    .line 460
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V

    .line 461
    if-eqz v2, :cond_1

    .line 462
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;->onPreviewStarted()V

    goto/16 :goto_1

    .line 469
    :sswitch_8
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    goto/16 :goto_1

    .line 474
    :sswitch_9
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_1

    .line 479
    :sswitch_a
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_1

    .line 484
    :sswitch_b
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_1

    .line 489
    :sswitch_c
    iget v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    if-lez v2, :cond_7

    .line 490
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleMessage - Ignored AUTO_FOCUS because there was "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pending CANCEL_AUTO_FOCUS messages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 494
    :cond_7
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 495
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_1

    .line 502
    :sswitch_d
    iget v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    .line 503
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 504
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    goto/16 :goto_1

    .line 511
    :sswitch_e
    iget v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    goto/16 :goto_1

    .line 516
    :sswitch_f
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1316
    :try_start_d
    check-cast v2, Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 1317
    :catch_4
    move-exception v2

    .line 1318
    :try_start_e
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 522
    :sswitch_10
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$300(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 2092
    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getRelativeImageOrientation(IZ)I

    move-result v4

    .line 522
    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 527
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 528
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-lez v4, :cond_8

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$300(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 2108
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getRelativeImageOrientation(IZ)I

    move-result v2

    .line 528
    :cond_8
    invoke-virtual {v3, v2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 530
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 531
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->invalidate()V

    goto/16 :goto_1

    .line 536
    :sswitch_11
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 537
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 538
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 539
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->invalidate()V

    goto/16 :goto_1

    .line 544
    :sswitch_12
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_1

    .line 549
    :sswitch_13
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$FaceDetectionListener;

    .line 2296
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_1

    .line 3288
    :sswitch_14
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startFaceDetection()V

    goto/16 :goto_1

    .line 3292
    :sswitch_15
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopFaceDetection()V

    goto/16 :goto_1

    .line 564
    :sswitch_16
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 565
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/ex/camera2/portability/CameraSettings;

    .line 3656
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    .line 3657
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v4

    .line 3658
    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v4

    invoke-virtual {v5, v6, v4}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 3659
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v4

    .line 3660
    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v4

    invoke-virtual {v5, v6, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 4218
    iget v4, v2, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFrameRate:I

    .line 3661
    if-ne v4, v7, :cond_13

    .line 5193
    iget v4, v2, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMin:I

    .line 5200
    iget v6, v2, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMax:I

    .line 3662
    invoke-virtual {v5, v4, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 3667
    :goto_4
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewFormat()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 5316
    iget-byte v4, v2, Lcom/android/ex/camera2/portability/CameraSettings;->mJpegCompressQuality:B

    .line 3668
    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 3669
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v4

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v4, v6}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5325
    iget v4, v2, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentZoomRatio:F

    .line 3670
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v6

    .line 5736
    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    .line 5737
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v4

    .line 5738
    if-gez v4, :cond_9

    .line 5743
    add-int/lit8 v4, v4, 0x1

    neg-int v4, v4

    .line 5744
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v4, v6, :cond_9

    .line 5746
    add-int/lit8 v4, v4, -0x1

    .line 3670
    :cond_9
    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 6350
    :cond_a
    iget v4, v2, Lcom/android/ex/camera2/portability/CameraSettings;->mExposureCompensationIndex:I

    .line 3673
    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 3674
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v4

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v4, v6}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 6358
    iget-boolean v4, v2, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoExposureLocked:Z

    .line 3675
    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 6404
    :cond_b
    iget-object v4, v2, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 3677
    invoke-static {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 3678
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v4

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v4, v6}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 6441
    iget-boolean v4, v2, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoWhiteBalanceLocked:Z

    .line 3679
    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 3681
    :cond_c
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v4

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v4, v6}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3682
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getFocusAreas()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_14

    .line 3683
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getFocusAreas()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 3688
    :cond_d
    :goto_5
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v4

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v4, v6}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3689
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getMeteringAreas()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_15

    .line 3690
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getMeteringAreas()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 7383
    :cond_e
    :goto_6
    iget-object v4, v2, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 3695
    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    if-eq v4, v6, :cond_f

    .line 8383
    iget-object v4, v2, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 3696
    invoke-static {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 8450
    :cond_f
    iget-object v4, v2, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 3698
    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NO_SCENE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v4, v6, :cond_10

    .line 9450
    iget-object v4, v2, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 3699
    if-eqz v4, :cond_10

    .line 10450
    iget-object v4, v2, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 3700
    invoke-static {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 10478
    :cond_10
    iget-boolean v4, v2, Lcom/android/ex/camera2/portability/CameraSettings;->mRecordingHintEnabled:Z

    .line 3704
    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 10510
    iget-object v4, v2, Lcom/android/ex/camera2/portability/CameraSettings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    if-nez v4, :cond_16

    move-object v4, v3

    .line 3706
    :goto_7
    if-eqz v4, :cond_11

    .line 3707
    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v4

    invoke-virtual {v5, v6, v4}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 11298
    :cond_11
    iget v4, v2, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoFormat:I

    .line 3709
    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 11486
    iget-object v4, v2, Lcom/android/ex/camera2/portability/CameraSettings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    if-nez v4, :cond_17

    move-object v2, v3

    .line 3712
    :goto_8
    if-nez v2, :cond_18

    .line 3713
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 567
    :cond_12
    :goto_9
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 568
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->invalidate()V

    goto/16 :goto_1

    .line 5218
    :cond_13
    iget v4, v2, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFrameRate:I

    .line 3665
    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto/16 :goto_4

    .line 3685
    :cond_14
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_5

    .line 3692
    :cond_15
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_6

    .line 10510
    :cond_16
    new-instance v4, Lcom/android/ex/camera2/portability/Size;

    iget-object v6, v2, Lcom/android/ex/camera2/portability/CameraSettings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v4, v6}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    goto :goto_7

    .line 11486
    :cond_17
    new-instance v3, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iget-object v2, v2, Lcom/android/ex/camera2/portability/CameraSettings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    invoke-direct {v3, v2}, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;-><init>(Lcom/android/ex/camera2/portability/CameraSettings$GpsData;)V

    move-object v2, v3

    goto :goto_8

    .line 3715
    :cond_18
    iget-wide v6, v2, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->timeStamp:J

    invoke-virtual {v5, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 3716
    iget-object v3, v2, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 3720
    iget-wide v6, v2, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->altitude:D

    invoke-virtual {v5, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 3721
    iget-wide v6, v2, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->latitude:D

    invoke-virtual {v5, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 3722
    iget-wide v6, v2, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->longitude:D

    invoke-virtual {v5, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 3723
    iget-object v2, v2, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    goto :goto_9

    .line 573
    :sswitch_17
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 574
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 575
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 576
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->invalidate()V

    goto/16 :goto_1

    .line 581
    :sswitch_18
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Landroid/hardware/Camera$Parameters;

    .line 582
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 583
    const/4 v4, 0x0

    aput-object v3, v2, v4

    goto/16 :goto_1

    .line 588
    :sswitch_19
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_1

    .line 593
    :sswitch_1a
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v11, :cond_19

    move v2, v11

    .line 12309
    :cond_19
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    goto/16 :goto_1

    .line 598
    :sswitch_1b
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->invalidate()V

    goto/16 :goto_1

    .line 603
    :sswitch_1c
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 604
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;

    .line 605
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v4, v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;->mShutter:Landroid/hardware/Camera$ShutterCallback;

    iget-object v5, v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;->mRaw:Landroid/hardware/Camera$PictureCallback;

    iget-object v6, v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;->mPostView:Landroid/hardware/Camera$PictureCallback;

    iget-object v2, v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;->mJpeg:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    .line 630
    :catch_5
    move-exception v3

    .line 631
    :try_start_f
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    const-string v6, "Fail when calling Camera.release()."

    invoke-static {v5, v6, v3}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 633
    const/4 v3, 0x0

    :try_start_10
    iput-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    goto/16 :goto_2

    :catchall_1
    move-exception v2

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    throw v2

    .line 645
    :cond_1a
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v3

    .line 646
    iget v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5, v12, v4}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onCameraException(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_3

    .line 360
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_7
        0x67 -> :sswitch_8
        0x68 -> :sswitch_9
        0x69 -> :sswitch_b
        0x6a -> :sswitch_6
        0x6b -> :sswitch_19
        0x6c -> :sswitch_a
        0xc9 -> :sswitch_17
        0xca -> :sswitch_18
        0xcb -> :sswitch_1b
        0xcc -> :sswitch_16
        0x12d -> :sswitch_c
        0x12e -> :sswitch_d
        0x12f -> :sswitch_f
        0x130 -> :sswitch_12
        0x131 -> :sswitch_e
        0x1cd -> :sswitch_13
        0x1ce -> :sswitch_14
        0x1cf -> :sswitch_15
        0x1f5 -> :sswitch_1a
        0x1f6 -> :sswitch_10
        0x1f7 -> :sswitch_11
        0x259 -> :sswitch_1c
    .end sparse-switch
.end method

.method public final onError(ILandroid/hardware/Camera;)V
    .locals 5

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onCameraError(I)V

    .line 334
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/android/ex/camera2/portability/HistoryHandler;->mMsgHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 335
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 336
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Media server died."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    invoke-virtual {p0, v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onCameraException(Ljava/lang/RuntimeException;Ljava/lang/String;II)V

    .line 342
    :cond_0
    return-void
.end method
