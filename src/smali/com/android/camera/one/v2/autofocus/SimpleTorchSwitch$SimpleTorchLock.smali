.class final Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$SimpleTorchLock;
.super Ljava/lang/Object;
.source "SimpleTorchSwitch.java"

# interfaces
.implements Lcom/android/camera/one/v2/autofocus/TorchSwitch$TorchLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimpleTorchLock"
.end annotation


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final fRP:Lcom/android/camera/one/v2/core/FrameRequestProcessor;

.field private final template:Lcom/android/camera/one/v2/core/RequestBuilder;

.field private synthetic this$0:Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch;Lcom/android/camera/one/v2/core/FrameRequestProcessor;Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$SimpleTorchLock;->this$0:Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$SimpleTorchLock;->fRP:Lcom/android/camera/one/v2/core/FrameRequestProcessor;

    .line 64
    iput-object p3, p0, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$SimpleTorchLock;->template:Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$SimpleTorchLock;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$SimpleTorchLock;)Lcom/android/camera/one/v2/core/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$SimpleTorchLock;->turnOnTorch()Lcom/android/camera/one/v2/core/Request;

    move-result-object v0

    return-object v0
.end method

.method private final turnOnTorch()Lcom/android/camera/one/v2/core/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 81
    new-instance v0, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$FlashStateResult;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$FlashStateResult;-><init>(I)V

    .line 83
    new-instance v1, Lcom/android/camera/one/v2/core/RequestBuilder;

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$SimpleTorchLock;->template:Lcom/android/camera/one/v2/core/RequestBuilder;

    invoke-direct {v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    .line 84
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 85
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 88
    invoke-static {v0}, Lcom/android/camera/one/v2/core/FrameServerModule;->forPartialMetadata(Lcom/google/android/apps/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 90
    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$SimpleTorchLock;->fRP:Lcom/android/camera/one/v2/core/FrameRequestProcessor;

    new-array v3, v4, [Lcom/android/camera/one/v2/core/Request;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {v2, v3, v4}, Lcom/android/camera/one/v2/core/FrameRequestProcessor;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 94
    invoke-virtual {v0}, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$FlashStateResult;->get()Z

    .line 96
    return-object v1
.end method


# virtual methods
.method public final close()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 102
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$SimpleTorchLock;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1114
    :try_start_0
    new-instance v0, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$FlashStateResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$FlashStateResult;-><init>(I)V

    .line 1117
    new-instance v1, Lcom/android/camera/one/v2/core/RequestBuilder;

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$SimpleTorchLock;->template:Lcom/android/camera/one/v2/core/RequestBuilder;

    invoke-direct {v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    .line 1118
    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v2

    .line 1119
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 1120
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 1122
    invoke-static {v0}, Lcom/android/camera/one/v2/core/FrameServerModule;->forPartialMetadata(Lcom/google/android/apps/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 1123
    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$SimpleTorchLock;->fRP:Lcom/android/camera/one/v2/core/FrameRequestProcessor;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/camera/one/v2/core/Request;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v4, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {v3, v1, v4}, Lcom/android/camera/one/v2/core/FrameRequestProcessor;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 1125
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$SimpleTorchLock;->fRP:Lcom/android/camera/one/v2/core/FrameRequestProcessor;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/camera/one/v2/core/Request;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/one/v2/core/FrameRequestProcessor;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 1128
    invoke-virtual {v0}, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$FlashStateResult;->get()Z
    :try_end_0
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 108
    :goto_1
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$SimpleTorchLock;->this$0:Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch;

    invoke-static {v1}, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch;->access$000(Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch;)Lcom/android/camera/debug/Logger;

    move-result-object v1

    const-string v2, "Unable to reset after torch on."

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 105
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final transform(Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/core/Request;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/android/camera/one/v2/core/RequestBuilder;

    invoke-direct {v0, p1}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/core/Request;)V

    .line 71
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 72
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 73
    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v0

    return-object v0
.end method
