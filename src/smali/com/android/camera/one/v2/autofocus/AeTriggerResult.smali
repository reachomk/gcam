.class final Lcom/android/camera/one/v2/autofocus/AeTriggerResult;
.super Ljava/lang/Object;
.source "AeTriggerResult.java"

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
    .line 34
    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 35
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/autofocus/AeTriggerResult;->TRIGGER_DONE_STATES:Ljava/util/Set;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;

    const/4 v1, 0x1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/camera/one/v2/autofocus/AeTriggerResult;->TRIGGER_DONE_STATES:Ljava/util/Set;

    const/16 v3, 0x3c

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;-><init>(Ljava/lang/Integer;Ljava/util/Set;I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeTriggerResult;->stateMachine:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;

    .line 49
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeTriggerResult;->futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    .line 50
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
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeTriggerResult;->futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->getFrameNumber()J
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final synthetic update(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 32
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;

    .line 1054
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1055
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AeTriggerResult;->stateMachine:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;

    .line 1057
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->getFrameNumber()J

    move-result-wide v4

    .line 1058
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->getRequest()Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;

    move-result-object v1

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v1, v3}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1056
    invoke-virtual {v2, v4, v5, v1, v0}, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->update(JLjava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    .line 1060
    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeTriggerResult;->futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 32
    :cond_0
    return-void
.end method
