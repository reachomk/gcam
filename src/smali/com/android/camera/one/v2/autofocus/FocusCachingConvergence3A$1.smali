.class final Lcom/android/camera/one/v2/autofocus/FocusCachingConvergence3A$1;
.super Ljava/lang/Object;
.source "FocusCachingConvergence3A.java"

# interfaces
.implements Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/autofocus/FocusCachingConvergence3A;->acquire(Lcom/android/camera/one/v2/core/FrameRequestProcessor;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$lock:Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/FocusCachingConvergence3A$1;->val$lock:Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusCachingConvergence3A$1;->val$lock:Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;

    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->close()V

    .line 61
    return-void
.end method

.method public final getFrameNumber()J
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusCachingConvergence3A$1;->val$lock:Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;

    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->getFrameNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public final transform3A(Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/core/Request;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/android/camera/one/v2/core/RequestBuilder;

    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/FocusCachingConvergence3A$1;->val$lock:Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;

    invoke-interface {v1, p1}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->transform3A(Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/core/Request;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/core/Request;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v0

    .line 48
    return-object v0
.end method
