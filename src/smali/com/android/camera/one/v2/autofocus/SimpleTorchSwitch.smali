.class public final Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch;
.super Ljava/lang/Object;
.source "SimpleTorchSwitch.java"

# interfaces
.implements Lcom/android/camera/one/v2/autofocus/TorchSwitch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$SimpleTorchLock;,
        Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$FlashStateResult;
    }
.end annotation


# instance fields
.field private final log:Lcom/android/camera/debug/Logger;


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/Logger$Factory;)V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-string v0, "SimpleTorchSwitch"

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch;->log:Lcom/android/camera/debug/Logger;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch;)Lcom/android/camera/debug/Logger;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch;->log:Lcom/android/camera/debug/Logger;

    return-object v0
.end method


# virtual methods
.method public final acquire(Lcom/android/camera/one/v2/core/FrameRequestProcessor;Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/autofocus/TorchSwitch$TorchLock;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$SimpleTorchLock;

    new-instance v1, Lcom/android/camera/one/v2/core/RequestBuilder;

    invoke-direct {v1, p2}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/core/Request;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$SimpleTorchLock;-><init>(Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch;Lcom/android/camera/one/v2/core/FrameRequestProcessor;Lcom/android/camera/one/v2/core/RequestBuilder;)V

    .line 143
    :try_start_0
    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$SimpleTorchLock;->access$100(Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$SimpleTorchLock;)Lcom/android/camera/one/v2/core/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    return-object v0

    .line 146
    :catchall_0
    move-exception v1

    .line 147
    invoke-virtual {v0}, Lcom/android/camera/one/v2/autofocus/SimpleTorchSwitch$SimpleTorchLock;->close()V

    throw v1
.end method
