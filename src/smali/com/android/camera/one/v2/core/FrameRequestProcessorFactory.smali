.class public final Lcom/android/camera/one/v2/core/FrameRequestProcessorFactory;
.super Ljava/lang/Object;
.source "FrameRequestProcessorFactory.java"


# instance fields
.field private final logger:Lcom/android/camera/debug/Logger$Factory;


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/Logger$Factory;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/camera/one/v2/core/FrameRequestProcessorFactory;->logger:Lcom/android/camera/debug/Logger$Factory;

    .line 32
    return-void
.end method


# virtual methods
.method public final createFrameRequestProcessor(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Landroid/os/Handler;)Lcom/android/camera/one/v2/core/FrameRequestProcessor;
    .locals 5

    .prologue
    .line 41
    new-instance v0, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;-><init>(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Landroid/os/Handler;)V

    .line 1109
    new-instance v1, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;

    iget-object v2, p0, Lcom/android/camera/one/v2/core/FrameRequestProcessorFactory;->logger:Lcom/android/camera/debug/Logger$Factory;

    const/16 v3, 0x78

    const/4 v4, 0x6

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/core/FrameRequestProcessor;II)V

    .line 41
    return-object v1
.end method
