.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$1;
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
.field private synthetic this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$1;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 3

    .prologue
    .line 126
    .line 1129
    new-instance v1, Lcom/android/camera/module/imageintent/state/StateBackgroundWithSurfaceTexture;

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$1;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$1;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    .line 1130
    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;->getResourceSurfaceTexture()Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/camera/module/imageintent/state/StateBackgroundWithSurfaceTexture;-><init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;Lcom/google/android/apps/camera/async/RefCountBase;)V

    .line 126
    return-object v1
.end method
