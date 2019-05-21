.class final Lcom/android/camera/one/v2/core/Nexus5FrameServerModule$2;
.super Ljava/lang/Object;
.source "Nexus5FrameServerModule.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/Nexus5FrameServerModule;
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
.field private synthetic val$handlerFactory:Lcom/google/android/apps/camera/async/HandlerFactory;

.field private synthetic val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/HandlerFactory;Lcom/google/android/apps/camera/async/Lifetime;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/one/v2/core/Nexus5FrameServerModule$2;->val$handlerFactory:Lcom/google/android/apps/camera/async/HandlerFactory;

    iput-object p2, p0, Lcom/android/camera/one/v2/core/Nexus5FrameServerModule$2;->val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 61
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    .line 1064
    iget-object v0, p0, Lcom/android/camera/one/v2/core/Nexus5FrameServerModule$2;->val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    const-string v1, "CameraMetadataHandler"

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/HandlerFactory;->create(Lcom/google/android/apps/camera/async/Lifetime;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    .line 1065
    new-instance v1, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;

    invoke-direct {v1, p1, v0}, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;-><init>(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Landroid/os/Handler;)V

    .line 61
    return-object v1
.end method
