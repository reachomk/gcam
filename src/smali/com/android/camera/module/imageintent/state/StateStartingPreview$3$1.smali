.class final Lcom/android/camera/module/imageintent/state/StateStartingPreview$3$1;
.super Ljava/lang/Object;
.source "StateStartingPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateStartingPreview$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/imageintent/state/StateStartingPreview$3;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateStartingPreview$3;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview$3$1;->this$1:Lcom/android/camera/module/imageintent/state/StateStartingPreview$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview$3$1;->this$1:Lcom/android/camera/module/imageintent/state/StateStartingPreview$3;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateStartingPreview$3;->this$0:Lcom/android/camera/module/imageintent/state/StateStartingPreview;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->access$100(Lcom/android/camera/module/imageintent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getModuleUI()Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->onPreviewStarted()V

    .line 78
    return-void
.end method
