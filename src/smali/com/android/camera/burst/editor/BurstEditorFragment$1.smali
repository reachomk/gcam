.class final Lcom/android/camera/burst/editor/BurstEditorFragment$1;
.super Landroid/app/Dialog;
.source "BurstEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/editor/BurstEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/editor/BurstEditorFragment;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$1;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$1;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNMAP39EHNN4BQ2ELP76T25CHKN8RRI8PP62PRDCLN78EP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5TIM8QBKDTP2UPRID5I2UKR5DHIM6T39DTN46RREEHP6UR3CCLP3M___(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/module/video2/VideoModeModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video2/VideoModeModule;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$1;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$300(Lcom/android/camera/burst/editor/BurstEditorFragment;)V

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$1;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$400(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->isZoomed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$1;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$400(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->zoomOut()V

    goto :goto_0

    .line 140
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_0
.end method
