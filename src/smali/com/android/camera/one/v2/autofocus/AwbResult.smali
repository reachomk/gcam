.class final Lcom/android/camera/one/v2/autofocus/AwbResult;
.super Ljava/lang/Object;
.source "AwbResult.java"

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
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 15
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/autofocus/AwbResult;->TRIGGER_DONE_STATES:Ljava/util/Set;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/AwbResult;->futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    .line 25
    new-instance v0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;

    sget-object v1, Lcom/android/camera/one/v2/autofocus/AwbResult;->TRIGGER_DONE_STATES:Ljava/util/Set;

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;-><init>(Ljava/util/Set;I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/AwbResult;->stateMachine:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;

    .line 28
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
    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AwbResult;->futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->getFrameNumber()J
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final synthetic update(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 13
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;

    .line 1032
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1033
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/AwbResult;->stateMachine:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;

    .line 1034
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->getFrameNumber()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 1033
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->update(JLjava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    .line 1037
    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AwbResult;->futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 13
    :cond_0
    return-void
.end method
