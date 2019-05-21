.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12$1$1;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$2:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12$1;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12$1;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12$1$1;->this$2:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12$1$1;->this$2:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12$1;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12$1;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$12;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$1800(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 435
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getModuleUI()Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->freezeScreenUntilPreviewReady()V

    .line 437
    return-void
.end method
