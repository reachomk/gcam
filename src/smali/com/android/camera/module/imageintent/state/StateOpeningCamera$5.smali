.class final Lcom/android/camera/module/imageintent/state/StateOpeningCamera$5;
.super Ljava/lang/Object;
.source "StateOpeningCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->onEnter()Lcom/android/camera/module/imageintent/state/ImageIntentState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

.field private synthetic val$oneCamera:Lcom/android/camera/one/OneCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;Lcom/android/camera/one/OneCamera;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$5;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    iput-object p2, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$5;->val$oneCamera:Lcom/android/camera/one/OneCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$5;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventOnOpenCameraSucceeded;

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$5;->val$oneCamera:Lcom/android/camera/one/OneCamera;

    invoke-direct {v1, v2}, Lcom/android/camera/module/imageintent/event/EventOnOpenCameraSucceeded;-><init>(Lcom/android/camera/one/OneCamera;)V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 232
    return-void
.end method
