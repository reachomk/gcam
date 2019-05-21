.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$15;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->onEnter()Lcom/android/camera/module/imageintent/state/ImageIntentState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Lcom/google/android/apps/camera/aaa/AfStateTransition;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$15;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 501
    check-cast p1, Lcom/google/android/apps/camera/aaa/AfStateTransition;

    .line 1504
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$15;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$2500(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getFocusController()Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/ui/focus/FocusController;->update(Ljava/lang/Object;)V

    .line 1506
    iget-object v0, p1, Lcom/google/android/apps/camera/aaa/AfStateTransition;->curState:Lcom/google/android/apps/camera/aaa/AfState;

    .line 1507
    invoke-virtual {p1}, Lcom/google/android/apps/camera/aaa/AfStateTransition;->hasControlAfStateChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1508
    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$15;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    iget-object v0, v0, Lcom/google/android/apps/camera/aaa/AfState;->controlAfState:Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;

    invoke-static {v1, v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$2600(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;)V

    .line 501
    :cond_0
    return-void
.end method
