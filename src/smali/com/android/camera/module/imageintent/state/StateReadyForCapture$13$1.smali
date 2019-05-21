.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$13$1;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture$13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$13;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture$13;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$13$1;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$13$1;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$13;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$13;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$2200(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getModuleUI()Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->cancelCountDown()V

    .line 466
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$13$1;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$13;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$13;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$2300(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getModuleUI()Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->showPictureCaptureUI()V

    .line 467
    return-void
.end method
