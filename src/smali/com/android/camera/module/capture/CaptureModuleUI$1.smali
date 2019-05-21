.class final Lcom/android/camera/module/capture/CaptureModuleUI$1;
.super Ljava/lang/Object;
.source "CaptureModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/capture/CaptureModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModuleUI;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModuleUI$1;->this$0:Lcom/android/camera/module/capture/CaptureModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMaxZoomChanged$5132ILG_()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public final onZoomEnd()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public final onZoomValueChanged(F)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI$1;->this$0:Lcom/android/camera/module/capture/CaptureModuleUI;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModuleUI;->access$000(Lcom/android/camera/module/capture/CaptureModuleUI;)Lcom/android/camera/module/capture/CaptureModuleUI$CaptureModuleUIListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/module/capture/CaptureModuleUI$CaptureModuleUIListener;->onZoomRatioChanged(F)V

    .line 64
    return-void
.end method
