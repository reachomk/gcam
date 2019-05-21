.class final Lcom/android/camera/module/videointent/state/StateOpeningCamera$10;
.super Ljava/lang/Object;
.source "StateOpeningCamera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getBottomBarSpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;
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
    .line 364
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$10;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$10;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/videointent/event/Events$EventTapOnRetakeButton;

    invoke-direct {v1}, Lcom/android/camera/module/videointent/event/Events$EventTapOnRetakeButton;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 368
    return-void
.end method
