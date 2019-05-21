.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/burst/BurstA11yButtonController$Listener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 4

    .prologue
    .line 321
    check-cast p1, Lcom/android/camera/module/imageintent/event/EventPictureCompressed;

    .line 1324
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$1000(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$1002(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;Z)Z

    .line 1326
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$1102(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;Z)Z

    .line 1328
    invoke-virtual {p1}, Lcom/android/camera/module/imageintent/event/EventPictureCompressed;->getPictureData()[B

    move-result-object v1

    .line 1329
    invoke-virtual {p1}, Lcom/android/camera/module/imageintent/event/EventPictureCompressed;->getOrientation()I

    move-result v2

    .line 1330
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$1200(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 1331
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9$1;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9;[BI)V

    .line 1332
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1347
    :cond_0
    const/4 v0, 0x0

    .line 321
    return-object v0
.end method
