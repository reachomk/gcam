.class final Lcom/android/camera/module/imageintent/state/StateOpeningCamera$9;
.super Ljava/lang/Object;
.source "StateOpeningCamera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getBottomBarSpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$9;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$9;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventTapOnRetakePhotoButton;

    invoke-direct {v1}, Lcom/android/camera/module/imageintent/event/EventTapOnRetakePhotoButton;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 310
    return-void
.end method
