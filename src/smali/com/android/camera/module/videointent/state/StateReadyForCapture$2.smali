.class final Lcom/android/camera/module/videointent/state/StateReadyForCapture$2;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/state/StateReadyForCapture;
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
.field private synthetic this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$2;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 2

    .prologue
    .line 108
    .line 1111
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$2;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$200(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$2;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$202(Lcom/android/camera/module/videointent/state/StateReadyForCapture;Z)Z

    .line 1113
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$2;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$300(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getModuleUI()Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->getPreviewSurfaceSize()Lcom/android/camera/util/Size;

    move-result-object v1

    .line 1114
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$2;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->access$100(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ResourceSurfaceTexture;

    invoke-interface {v0, v1}, Lcom/android/camera/module/ResourceSurfaceTexture;->setPreviewLayoutSize(Lcom/android/camera/util/Size;)V

    .line 1115
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$2;->this$0:Lcom/android/camera/module/videointent/state/StateReadyForCapture;

    const-class v1, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureUpdated;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->removeEventHandler(Ljava/lang/Class;)V

    .line 1117
    :cond_0
    const/4 v0, 0x0

    .line 108
    return-object v0
.end method
