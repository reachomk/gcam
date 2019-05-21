.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$17;
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
    .line 570
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$17;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 2

    .prologue
    .line 570
    .line 1573
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$17;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$3400(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 1574
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$17$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$17$1;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture$17;)V

    .line 1575
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1582
    const/4 v0, 0x0

    .line 570
    return-object v0
.end method
