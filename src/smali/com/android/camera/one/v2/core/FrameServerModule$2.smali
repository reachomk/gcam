.class final Lcom/android/camera/one/v2/core/FrameServerModule$2;
.super Ljava/lang/Object;
.source "FrameServerModule.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/FrameServerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
        "Lcom/android/camera/one/v2/core/FrameRequestProcessor;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$frpFactory:Lcom/android/camera/one/v2/core/FrameRequestProcessorFactory;

.field private synthetic val$handlerFactory:Lcom/google/android/apps/camera/async/HandlerFactory;

.field private synthetic val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/HandlerFactory;Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/core/FrameRequestProcessorFactory;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/camera/one/v2/core/FrameServerModule$2;->val$handlerFactory:Lcom/google/android/apps/camera/async/HandlerFactory;

    iput-object p2, p0, Lcom/android/camera/one/v2/core/FrameServerModule$2;->val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    iput-object p3, p0, Lcom/android/camera/one/v2/core/FrameServerModule$2;->val$frpFactory:Lcom/android/camera/one/v2/core/FrameRequestProcessorFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 57
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    .line 1060
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FrameServerModule$2;->val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    const-string v1, "CameraMetadataHandler"

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/HandlerFactory;->create(Lcom/google/android/apps/camera/async/Lifetime;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    .line 1061
    iget-object v1, p0, Lcom/android/camera/one/v2/core/FrameServerModule$2;->val$frpFactory:Lcom/android/camera/one/v2/core/FrameRequestProcessorFactory;

    invoke-virtual {v1, p1, v0}, Lcom/android/camera/one/v2/core/FrameRequestProcessorFactory;->createFrameRequestProcessor(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Landroid/os/Handler;)Lcom/android/camera/one/v2/core/FrameRequestProcessor;

    move-result-object v0

    .line 57
    return-object v0
.end method
