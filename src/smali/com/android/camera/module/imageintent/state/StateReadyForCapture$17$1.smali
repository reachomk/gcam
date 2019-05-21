.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$17$1;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture$17;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$17;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture$17;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$17$1;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$17$1;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$17;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$17;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$3300(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getModuleUI()Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->setShutterButtonEnabled(Z)V

    .line 580
    return-void
.end method
