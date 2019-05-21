.class final Lcom/android/camera/module/imageintent/state/StateStartingPreview$3;
.super Ljava/lang/Object;
.source "StateStartingPreview.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateStartingPreview;
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
.field final synthetic this$0:Lcom/android/camera/module/imageintent/state/StateStartingPreview;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateStartingPreview;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/module/imageintent/state/StateStartingPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 4

    .prologue
    .line 68
    .line 1071
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/module/imageintent/state/StateStartingPreview;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->access$200(Lcom/android/camera/module/imageintent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 1072
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/state/StateStartingPreview$3$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/imageintent/state/StateStartingPreview$3$1;-><init>(Lcom/android/camera/module/imageintent/state/StateStartingPreview$3;)V

    .line 1073
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1080
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/module/imageintent/state/StateStartingPreview;

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/module/imageintent/state/StateStartingPreview;

    .line 1081
    invoke-static {v2}, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->access$000(Lcom/android/camera/module/imageintent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/module/imageintent/state/StateStartingPreview;

    invoke-static {v3}, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->access$300(Lcom/android/camera/module/imageintent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;-><init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;Lcom/google/android/apps/camera/async/RefCountBase;Lcom/google/android/apps/camera/async/RefCountBase;)V

    .line 68
    return-object v0
.end method
