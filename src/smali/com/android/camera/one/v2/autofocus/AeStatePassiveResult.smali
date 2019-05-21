.class public final Lcom/android/camera/one/v2/autofocus/AeStatePassiveResult;
.super Ljava/lang/Object;
.source "AeStatePassiveResult.java"

# interfaces
.implements Lcom/android/camera/one/v2/autofocus/Result3A;


# static fields
.field private static final TRIGGER_DONE_STATES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final futureResult:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final stateMachine:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 17
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/autofocus/AeStatePassiveResult;->TRIGGER_DONE_STATES:Ljava/util/Set;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;

    sget-object v1, Lcom/android/camera/one/v2/autofocus/AeStatePassiveResult;->TRIGGER_DONE_STATES:Ljava/util/Set;

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;-><init>(Ljava/util/Set;I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeStatePassiveResult;->stateMachine:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;

    .line 30
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeStatePassiveResult;->futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    .line 31
    return-void
.end method


# virtual methods
.method public final awaitResultFrameNumber()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeStatePassiveResult;->futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->getFrameNumber()J
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getResultFrame()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeStatePassiveResult;->futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public final update(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;)V
    .locals 5

    .prologue
    .line 35
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/AeStatePassiveResult;->stateMachine:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;

    .line 37
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->getFrameNumber()J

    move-result-wide v2

    const/4 v4, 0x0

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 39
    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 36
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->update(JLjava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeStatePassiveResult;->futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    return-void
.end method

.method public final bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/autofocus/AeStatePassiveResult;->update(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;)V

    return-void
.end method
