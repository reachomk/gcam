.class final Lcom/android/camera/one/v2/autofocus/FocusCachingConvergence3A;
.super Ljava/lang/Object;
.source "FocusCachingConvergence3A.java"

# interfaces
.implements Lcom/android/camera/one/v2/autofocus/Convergence3A;


# instance fields
.field private final delegate:Lcom/android/camera/one/v2/autofocus/Convergence3A;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/autofocus/Convergence3A;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/FocusCachingConvergence3A;->delegate:Lcom/android/camera/one/v2/autofocus/Convergence3A;

    .line 23
    return-void
.end method


# virtual methods
.method public final acquire(Lcom/android/camera/one/v2/core/FrameRequestProcessor;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 28
    .line 1070
    invoke-virtual {p3}, Lcom/android/camera/one/v2/core/Request;->getParameters()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/Request$Parameter;

    .line 1071
    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/Request$Parameter;->getKey()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1072
    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/Request$Parameter;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 28
    :goto_0
    if-eqz v0, :cond_5

    .line 36
    sget-object v0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->ANY:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    invoke-virtual {p2, v0}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->withFocus(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    move-result-object v1

    .line 1079
    invoke-virtual {p3}, Lcom/android/camera/one/v2/core/Request;->getParameters()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/Request$Parameter;

    .line 1080
    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/Request$Parameter;->getKey()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1081
    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/Request$Parameter;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 39
    :goto_1
    if-eqz v0, :cond_6

    .line 40
    sget-object v0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->ANY:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    invoke-virtual {v1, v0}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->withExposure(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    move-result-object v0

    .line 43
    :goto_2
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/FocusCachingConvergence3A;->delegate:Lcom/android/camera/one/v2/autofocus/Convergence3A;

    invoke-interface {v1, p1, v0, p3}, Lcom/android/camera/one/v2/autofocus/Convergence3A;->acquire(Lcom/android/camera/one/v2/core/FrameRequestProcessor;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;

    move-result-object v1

    .line 45
    new-instance v0, Lcom/android/camera/one/v2/autofocus/FocusCachingConvergence3A$1;

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/autofocus/FocusCachingConvergence3A$1;-><init>(Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;)V

    .line 65
    :goto_3
    return-object v0

    :cond_2
    move v0, v3

    .line 1075
    goto :goto_0

    :cond_3
    move v0, v3

    .line 1081
    goto :goto_1

    :cond_4
    move v0, v3

    .line 1084
    goto :goto_1

    .line 65
    :cond_5
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusCachingConvergence3A;->delegate:Lcom/android/camera/one/v2/autofocus/Convergence3A;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/one/v2/autofocus/Convergence3A;->acquire(Lcom/android/camera/one/v2/core/FrameRequestProcessor;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;

    move-result-object v0

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method
