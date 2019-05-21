.class final Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule$1;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "OneCameraAdaptorModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$firstFrameReceived:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule$1;->val$firstFrameReceived:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule$1;->val$firstFrameReceived:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method
