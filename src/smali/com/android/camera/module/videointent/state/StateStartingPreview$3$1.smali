.class final Lcom/android/camera/module/videointent/state/StateStartingPreview$3$1;
.super Ljava/lang/Object;
.source "StateStartingPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/state/StateStartingPreview$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/videointent/state/StateStartingPreview$3;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateStartingPreview$3;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$3$1;->this$1:Lcom/android/camera/module/videointent/state/StateStartingPreview$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$3$1;->this$1:Lcom/android/camera/module/videointent/state/StateStartingPreview$3;

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->access$300(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getModuleUI()Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$3$1;->this$1:Lcom/android/camera/module/videointent/state/StateStartingPreview$3;

    iget-object v1, v1, Lcom/android/camera/module/videointent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    invoke-static {v1}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->access$200(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->onPreviewStarted(Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;)V

    .line 129
    return-void
.end method
