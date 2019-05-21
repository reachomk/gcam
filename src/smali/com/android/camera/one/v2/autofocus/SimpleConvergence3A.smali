.class final Lcom/android/camera/one/v2/autofocus/SimpleConvergence3A;
.super Ljava/lang/Object;
.source "SimpleConvergence3A.java"

# interfaces
.implements Lcom/android/camera/one/v2/autofocus/Convergence3A;


# instance fields
.field private final log:Lcom/android/camera/debug/Logger;


# direct methods
.method constructor <init>(Lcom/android/camera/debug/Logger$Factory;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "Simple3A"

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/SimpleConvergence3A;->log:Lcom/android/camera/debug/Logger;

    .line 23
    return-void
.end method


# virtual methods
.method public final acquire(Lcom/android/camera/one/v2/core/FrameRequestProcessor;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v1, Lcom/android/camera/one/v2/autofocus/SimpleLock3A;

    new-instance v0, Lcom/android/camera/one/v2/core/RequestBuilder;

    invoke-direct {v0, p3}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/core/Request;)V

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/SimpleConvergence3A;->log:Lcom/android/camera/debug/Logger;

    invoke-direct {v1, p1, p2, v0, v2}, Lcom/android/camera/one/v2/autofocus/SimpleLock3A;-><init>(Lcom/android/camera/one/v2/core/FrameRequestProcessor;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;Lcom/android/camera/one/v2/core/RequestBuilder;Lcom/android/camera/debug/Logger;)V

    .line 38
    :try_start_0
    invoke-virtual {p2}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->getFocus()Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 47
    :goto_0
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->getExposure()Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 57
    :goto_1
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->getWhiteBalance()Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 80
    :goto_2
    :pswitch_2
    return-object v1

    .line 43
    :pswitch_3
    invoke-virtual {v1}, Lcom/android/camera/one/v2/autofocus/SimpleLock3A;->waitForAfConvergence()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    .line 77
    invoke-virtual {v1}, Lcom/android/camera/one/v2/autofocus/SimpleLock3A;->close()V

    throw v0

    .line 53
    :pswitch_4
    :try_start_1
    invoke-virtual {v1}, Lcom/android/camera/one/v2/autofocus/SimpleLock3A;->waitForAeConvergence()V

    goto :goto_1

    .line 68
    :pswitch_5
    invoke-virtual {v1}, Lcom/android/camera/one/v2/autofocus/SimpleLock3A;->waitForAwbConvergence()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 47
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 57
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
