.class final Lcom/android/camera/module/videointent/state/StateOpeningCamera$1;
.super Ljava/lang/Object;
.source "StateOpeningCamera.java"

# interfaces
.implements Lcom/android/camera/camcorder/CamcorderDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/state/StateOpeningCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$1;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraError()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$1;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/internal/zzw;

    invoke-direct {v1}, Lcom/google/android/gms/common/internal/zzw;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public final onMediaRecorderError()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$1;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/internal/zzw;

    invoke-direct {v1}, Lcom/google/android/gms/common/internal/zzw;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 68
    return-void
.end method
