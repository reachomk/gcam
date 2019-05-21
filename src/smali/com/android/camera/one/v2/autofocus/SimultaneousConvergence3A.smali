.class final Lcom/android/camera/one/v2/autofocus/SimultaneousConvergence3A;
.super Ljava/lang/Object;
.source "SimultaneousConvergence3A.java"

# interfaces
.implements Lcom/android/camera/one/v2/autofocus/Convergence3A;


# instance fields
.field private final log:Lcom/android/camera/debug/Logger;


# direct methods
.method constructor <init>(Lcom/android/camera/debug/Logger$Factory;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "Simultaneous3A"

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/SimultaneousConvergence3A;->log:Lcom/android/camera/debug/Logger;

    .line 22
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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 27
    new-instance v4, Lcom/android/camera/one/v2/autofocus/SimpleLock3A;

    new-instance v2, Lcom/android/camera/one/v2/core/RequestBuilder;

    invoke-direct {v2, p3}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/core/Request;)V

    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/SimultaneousConvergence3A;->log:Lcom/android/camera/debug/Logger;

    invoke-direct {v4, p1, p2, v2, v3}, Lcom/android/camera/one/v2/autofocus/SimpleLock3A;-><init>(Lcom/android/camera/one/v2/core/FrameRequestProcessor;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;Lcom/android/camera/one/v2/core/RequestBuilder;Lcom/android/camera/debug/Logger;)V

    .line 30
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/SimultaneousConvergence3A;->log:Lcom/android/camera/debug/Logger;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x12

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Convergence3ASpec="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->getFocus()Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    move-result-object v2

    .line 1049
    sget-object v3, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->CONVERGED:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->LOCKED:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    if-ne v2, v3, :cond_3

    :cond_0
    move v3, v0

    .line 32
    :goto_0
    invoke-virtual {p2}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->getExposure()Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    move-result-object v2

    .line 1053
    sget-object v5, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->CONVERGED:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    if-ne v2, v5, :cond_4

    move v2, v0

    .line 33
    :goto_1
    invoke-virtual {p2}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->getWhiteBalance()Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    move-result-object v5

    .line 1057
    sget-object v6, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->CONVERGED:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    if-ne v5, v6, :cond_5

    .line 34
    :goto_2
    if-nez v3, :cond_1

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    .line 35
    :cond_1
    invoke-virtual {v4}, Lcom/android/camera/one/v2/autofocus/SimpleLock3A;->waitForConvergence()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_2
    return-object v4

    :cond_3
    move v3, v1

    .line 1049
    goto :goto_0

    :cond_4
    move v2, v1

    .line 1053
    goto :goto_1

    :cond_5
    move v0, v1

    .line 1057
    goto :goto_2

    .line 39
    :catchall_0
    move-exception v0

    .line 42
    invoke-virtual {v4}, Lcom/android/camera/one/v2/autofocus/SimpleLock3A;->close()V

    throw v0
.end method
