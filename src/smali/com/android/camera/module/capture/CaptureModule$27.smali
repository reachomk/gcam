.class final Lcom/android/camera/module/capture/CaptureModule$27;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/capture/CaptureModule;
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
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;)V
    .locals 0

    .prologue
    .line 1628
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$27;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1628
    check-cast p1, Lcom/google/android/apps/camera/aaa/AfStateTransition;

    .line 2631
    iget-object v0, p1, Lcom/google/android/apps/camera/aaa/AfStateTransition;->curState:Lcom/google/android/apps/camera/aaa/AfState;

    .line 2632
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModule$27;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/module/capture/CaptureModule;->access$4000(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/camera/ui/focus/FocusController;->update(Ljava/lang/Object;)V

    .line 2633
    invoke-virtual {p1}, Lcom/google/android/apps/camera/aaa/AfStateTransition;->hasControlAfStateChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2634
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModule$27;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    iget-object v0, v0, Lcom/google/android/apps/camera/aaa/AfState;->controlAfState:Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;

    invoke-static {v1, v0}, Lcom/android/camera/module/capture/CaptureModule;->access$4100(Lcom/android/camera/module/capture/CaptureModule;Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;)V

    .line 1628
    :cond_0
    return-void
.end method
